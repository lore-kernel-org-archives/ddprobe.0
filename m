Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13137376475
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772702094; cv=none; b=PhYxtNdPlemtifsHjnH1OcvCbyNjudriHPYQRcEuQJmtJ2HrYD5vjHAypuHPkR0S7lCp5n5ShPjpaxMiSyQjmvLbT/i94cAYHDmnoc7Iv5dgTMp5L04Q2xLltmDaroGlPD4q74Msby6i+S5VLq+VisvWLrCmPT+SaDFL6kzORaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772702094; c=relaxed/simple;
	bh=WVDxYGgBrIEYM7DjwNoCA4/rnDXW/2Ryhwvm3LF45jE=;
	h=To:Subject:From:Message-Id:Date; b=qp2vedEgvwgylf7F5ATZ0cpSYZQk91VLbAKgD/JtSa7ZW/9IwPvu2AyQGVPEjewkkNGu17ZeG1tLkt7Lxg6yhpprxctVQJzyZMxcgdAfq1YwhZrwBK4fkjutTdTf2wtDSAdcAylklGpTU5K+9ZdqVRqKiM8WIm8XobXo/j1HyOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+ph/AhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+ph/AhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9A5C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772702093;
	bh=WVDxYGgBrIEYM7DjwNoCA4/rnDXW/2Ryhwvm3LF45jE=;
	h=To:Subject:From:Date:From;
	b=H+ph/AhRa4aDRSp6Qry744dG5x6NH8KOBeC077zNFmaVEJ4mKe+8JsVaHB7B6j/Oz
	 4vXT8VmQISqmhDsL697LUBsBr1kcGNP43vi4Rp1z8nPWm1y4ruzxAad8Of5EuO2rgZ
	 ODu6N1gwqVlG79QkITnvdvum4u1XE8ofVY/2V8v1mE/stFrQbfoYTTJ5RHwa2G6RFC
	 Q8rx+R6+RIsMnxEnwNFWA89MlLDP3edjAboFc+FcAiRp6Bo2gG6qjCEuR7tBHXTnwf
	 oVnwTm5Zr7lGwh/LQbG92TQ85akCvbHGqgceHY3zz2bcdFq/Isljk1g6ml7+T0U4Pl
	 EHw/eE4Fukw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD25EEF33F
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270209362.28769.17432200751674820984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15adcbc70f9b43d0ebd03193e8b8f06cced2caac7bf8f0ddccb1f7523d1b154
Date: Thu, 05 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772702093
