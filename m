Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F24DBA4A
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754566194; cv=none; b=StcKX+Ycm1AeKcjigrIWmFi/e/JMShIwj3DfKFAHShevOBf8auIpNmHx94ZIzgpNjqwyaq5l3fhRlxvcagbZeVTe76hJYQnfLzSw/zW5mmp85W1JacaF4RFlOsY+97niIQoqAJYxOfEjSdNnutEZUmBGcG1XLwoboDanTaG0F7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754566194; c=relaxed/simple;
	bh=DshMdBDXgFt2YoXhwGsYwvvwxlyr73PsjZ1NGt95CxI=;
	h=To:Subject:From:Message-Id:Date; b=JO0pM+DJsvpZC6M1NfUM4bd/wdDquSl02Pi1N/nopF5kpTHk7PqeWrGw6bhnZWfNZasGObHzAxw7E9yco5L/g21orWI0Zh1FsC3herGXDcwbt4WUGJJq4CFahft35HfL6Mk6Caxh+B3cfHkVUTomgNjHKdwm6YSl8NowzLodhmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YP/rVLxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YP/rVLxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD577C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754566193;
	bh=DshMdBDXgFt2YoXhwGsYwvvwxlyr73PsjZ1NGt95CxI=;
	h=To:Subject:From:Date:From;
	b=YP/rVLxBGXBnuCGev2HPJ4+QhiZKnft8jMODbkpgIBkfWt2PidANP/YjcLwgeDWg0
	 9Qe33Bj2xCHeQ8cTRS0NheENAjvxwTF77D+rM3YZhubVm9K8VPpsBr4KsrB4Cq+Ec+
	 A6xSOmPeTRmas0Kl4p/AxqSDsS10QF9nRHi+6rRpKEAV3YzRrKgfbfqZTQKexueghE
	 YfASbXylDwu8jcCQhEEtF/ijCowPfly2hGTdSDdydB+HmVHRWWVZFPhnxny3YAw96k
	 N7ekP4a/lury7s8Z93Pz4PJWrWLl6A3/XbyQtYm9REmrK1B2RMYaFgG0ghqjAG459h
	 HB40wWLpiPKbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A193CC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456619364.13712.2071769551642502168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2d1859bf2587dbd29c6ce336291673a0655ce60236e226fc6fce61fd84d910
Date: Thu, 07 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754566193
