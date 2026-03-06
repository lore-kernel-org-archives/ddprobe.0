Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108DF421A07
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772821494; cv=none; b=Kg6sE7aIKdVmb6oUsrQbWJBZ3PqoYoP5+UaWotQXJvlzV21EDNv/0fOg8hVY0ZNHoDPDaoj5uof6sPfsiQyPFmqLvt3u1Lr1nu9LVNIfmRNp5bOUK/bA8ZsKEnp/FNqqigls3ipf1GGlA0J10P1egRGfTGbLRLt10WwbCUsI1Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772821494; c=relaxed/simple;
	bh=g5CLGiFOk9YJx/VS8a8x630zG3cvXAWElsOCQTMO4c4=;
	h=To:Subject:From:Message-Id:Date; b=ov79fmItkrdIEmheu1hMxR59BYIbAgkDSkW22Rcezngw+Mn0AGXib4fjcz83gRjCKZHh9oKEwAbjfn8m8afVACu8dOz9KiQh0F/h96xiYuNUcoRE2s7rUDAfjndSDX6rhX/sjUWLPLdzSy+3a0RpRdDUsw4/e8BTshkmXE5730U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaohVDAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaohVDAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5DFC19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772821493;
	bh=g5CLGiFOk9YJx/VS8a8x630zG3cvXAWElsOCQTMO4c4=;
	h=To:Subject:From:Date:From;
	b=jaohVDAw+zxNZiKqsuNLWPBX4qPTEHQxlPhbT6JqaeNKQEagPVEu+WxfSgFrCe9IC
	 XOFZEpVbpL0IQGzk6/5w1Kwxki+srDl6kWlg7e4g9Locu5OzKp7fhr6V1IskGnwY5Y
	 pPTlCmL01zuIVaVET23MdrioVFm1Zufo4vd0fHn3Hgg3uqNli7kgarTwuo3ajrZHBK
	 3fwhrRQOi385VNSUa/CMyIJLCoj+zE5oQU3qtuxGIBPCKlt2YFt7iI3lspgiageJ4G
	 aULQzpTImOQ02OtKCvmcOTG5hA34rvVGRP7FRQULSv4uRj6wx8i8VGW4cJ/koS1FXN
	 twYYIRnvjdugA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994F3FCC050
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282149359.12812.6078509692185919438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b73772b377b5de336b3a63faa403ca322aebf57b46c3d3729a7ea98212c4c7a
Date: Fri, 06 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772821493
