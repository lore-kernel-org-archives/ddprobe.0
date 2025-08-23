Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C131C8603
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755924594; cv=none; b=KEAaBBIe64aX4cSaGqMZKkb4WSWBXdgZW/QbFtK9ZAC9xH1u3clD9dCyinDMbnvnukjZBLgcXdaC348cUNRjOjD4HrnCzvaWr+TzM5NKCto8+//6a0bKed08omr8i1bhiNGRs9ftPlp6BuvMkFHUp/isNTqm7ZveVYlAe1ZZhyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755924594; c=relaxed/simple;
	bh=iBywN4nLnOhHtKltb7+tnDX02b416Wjq6U+lHUajXkE=;
	h=To:Subject:From:Message-Id:Date; b=ntFGiiGSJGm9Jb5/WQcGIIFS583dFVkugO7W68gUaIV5OruP1wOnux6wvTsE3cQaNeett5LA4FhTrQlbBMBPsQGvq22XQhWOBoBA4z2cVYGBKDfOYtIzRU/HFHdJ1vFb7AdmXvAWuBgUAj8jGmK+D98Uyh+zR/rfDmI2F7LdK28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLNH4Xtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLNH4Xtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CC5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755924593;
	bh=iBywN4nLnOhHtKltb7+tnDX02b416Wjq6U+lHUajXkE=;
	h=To:Subject:From:Date:From;
	b=GLNH4XtdSsTKNL+vUODRB8hOfcvvMSXUpmVKhAv4CDVY+jBJ6939lsQXHItVGFJaj
	 RWqcnw0SEhmB/eEvuj5jtjJot8/lU+aUK6iR9S/knJ2CmIlZeqpy1JJNwiuIRGkqXL
	 2Gzqnjb2/mUskq4DxwPgeom7uq1OJ8rGMqCMwcOiMRs6EzkzjKEbohhRSf0+l/6KCk
	 ogN2VV3yjj2OpQJHObl3GUIVrOphixAt/2R6y5hsxrM532DprF4wjR9CwEkzWbKWom
	 XE6BPCzsxEedrqL/FIpRFGx9BVidu+3GzYONlbKf8rVqJm9wQfl5wsFI7lHAGE2baP
	 VTMtToWLiRyoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A1DCA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592459358.28029.12592935502890520135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61784fc3c00037f58b4e4cd92da155fc6a9f96ecc4df27ff7bdf0191a2997bf
Date: Sat, 23 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755924593
