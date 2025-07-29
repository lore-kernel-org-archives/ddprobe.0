Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379E72AE66
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753832994; cv=none; b=plKrGIBeHV+RDujBz6soSRtguICB7pVM5lp6dGlI66aBaEMm3s/pUV9CfHdgJ0srDxBDXagwOTgc1cG98iQaR0+J+H5YQaoPc13RCzR0eVz2WRf24mj2Er9JC0AnlD0m/lqVzLpQgRMGwn/+9aaQLg48QCTIKiMkTMYs0RI4a6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753832994; c=relaxed/simple;
	bh=sb/uykP/iorL4fLv7YxitH9ttgsT9h0IwwnGOuhGBNw=;
	h=To:Subject:From:Message-Id:Date; b=oiQ/hZV+0lV1og/N72yskGnJQx38pFPDGcIZiJTrW12BxjPVTifzz93dhjURUk5X/jUU142Otxzk39I372Dn/8icjGCa9z0XI0m95o74CDMPCIn9ncJeroKJ60923iie+p4qt0zGp+2F61leAzifR58T0lVbFpiwQhs2LfUr82s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttRENfH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttRENfH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C71C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753832993;
	bh=sb/uykP/iorL4fLv7YxitH9ttgsT9h0IwwnGOuhGBNw=;
	h=To:Subject:From:Date:From;
	b=ttRENfH1SZuf/g03XrX7yB+AgAJv9GEhVFJQHMnQMjQONLOOdwk/0rszlfTOFN01a
	 iUBZEeruUNu9q85vpmqqt76Sp8wxNOiAHEtOPBDYOmrVFb+7giBd/Ecqa5wRLWGu4i
	 FOZQoZGO+jMbYTvCoQL2byE3lotxw6414Xz2P+i7A1dueNdTLklgo/1yrkDsA5BWzm
	 AgBI8uswsGyX2fbD39Zb/PeA859sVYN6UsqfNrKa1FZa1IBuJqsAuwMMVmzxbs2GTZ
	 2YzUrnIOjNkWs8Zw6ndetei+tKdlbUJVJxWV7ONg4Bc5Nv3erAYg3Xtl5+wGEnbzqg
	 qRqMJuwj+kzjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B20C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383299358.17491.10193137151895535327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc1dd19aae10b78dca27eba2e7f6ef82a62ac14aee36b5edec2af7ea39354b6
Date: Tue, 29 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753832993
