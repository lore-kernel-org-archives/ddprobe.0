Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EEB13A26F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738043155; cv=none; b=kM4FZ9NokC+6oR35OK837vDk8rEFjAxZuTOtfcyiZzf5T8/6P7gjz06/xZ0Lq9ERBp9LUkqrs/pfTMNjWSKYOk2pga512jO7TmvB4gsydp53+WPuwWKquN1N0Q1NbvJY0llnGRfTooCXllz6O3vMBc/LL4iJeTBVFi2gYacb8k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738043155; c=relaxed/simple;
	bh=dEBCpbfr7qXOHnTvvA06ETVOmWhAsONa8x/Iu3OY8dM=;
	h=To:Subject:From:Message-Id:Date; b=R6iUfKCgi7EleOfyvie8QzhPLeXsG6TjxXOXEanpnpIwG466xZAFgrNul0MllAzac3rYHk+F9MTF9zlhsJ0gQjjZEQWYCKCqKHMH6myT4rkRketaLmsLMun5yI/MhmABudo4rsQmzNmXGbDDfDMBDW6yy2bdt2ybRl4xjbGSWB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ktwnjgdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ktwnjgdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD66EC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738043153;
	bh=dEBCpbfr7qXOHnTvvA06ETVOmWhAsONa8x/Iu3OY8dM=;
	h=To:Subject:From:Date:From;
	b=KtwnjgdcLLPdJXYyYpHw60NgENjcS9iQZq4TqTGHJL6BSRvW5+zPJUj2YH6yZ9J1U
	 fm7JMY0osLzAYLG68BGeDPDB1tOPw/80xRtDckwhaEy3asqGJrAcP+BHbDzEJauy7V
	 tLGWoAULx+mqjcaS6epjoyarp5aUH1BUTe92ewLYO+F7+w/kgZ8rm2J8TR9hd0Nezx
	 khOEWxr/iwMLJs1BOg8OJyChMZmzQpG0loTBKZorSWHIWnyAGqH01dDrM16wVRIto2
	 4Ro7XiHlQooPaWKk+XXdd6huptxYZ4BzGXbBbpYXfX8V7M4tzh5R6+RQCal4mVicXa
	 8OU7SCkMMUfhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A204DC0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173804315363.2306.3944064154939478396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5f87014c14bf57ae9d0cfa782de79f9ac2af51a4d064e2ff90a5cf99eeb90f
Date: Tue, 28 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738043153
