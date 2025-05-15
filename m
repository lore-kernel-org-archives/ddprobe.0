Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD2B15A864
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747331994; cv=none; b=M3+ZsduduSJrrgacy2tLYRT41Pas6CO3d2NYiUnIG2btg5Xuk2cIUZVKt377dCk5v1Q5Ks5It/5vDpwOmYCAqwMI2AWRp7dWDvY7biJ60J/+8dYQC1YuWvwp9dqyEcjcNu5QmlwHWbncYOqOa1yn9Jihjaw/4HEI98Nh6Txqlfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747331994; c=relaxed/simple;
	bh=6HSfCh/EicXkB1c5M9kOU5OvLo34HM6QmmQeyQ1gPt0=;
	h=To:Subject:From:Message-Id:Date; b=m4PzC+7U2tp+RisJf37szh4GLJSw8QoYhgDLZBVaUl/XD66JjJWIP9Zy3XMoaU5l4meM7wBpiN0qmYpb6+6J/SdN/94O/t8JBplfX82k67wK83oXNrvrNjB1ciy0VVB15Wlsn2SafOjL+PpCpIg+kPLaD4htqaFIOMJfREUTay0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZLDIJw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZLDIJw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0BEC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747331993;
	bh=6HSfCh/EicXkB1c5M9kOU5OvLo34HM6QmmQeyQ1gPt0=;
	h=To:Subject:From:Date:From;
	b=jZLDIJw3PQ2pmoqiKvB31eYcADiUlOoB6FCIfjD63rSH3pUhBYt1ZgqcaQoizD5XB
	 KdaaeYB+Fr23eUcCudcTKtp0XP8VuRtoZriz/mivS/YBjHE3PH2TIrDZz370B561jc
	 lKUlkjqlLtUijQwdaUxaMS73RcDBXPMFKtNcDn6uVuzXpFkH3e3DtWhPwQR4WUN0ke
	 VkqIVSewxDNgpgW5Gf07qGeLoY2fKE8wV04NczIs0xeIgnwfzS7dZ4Fb+kYBQVewLJ
	 QrXjTIVACSKFo50K14oRH1I8XwlZhdj5tXsBArWWx19YDjd4Icyzo6vt+aWMMuFLJW
	 3kSzk59oVDelg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F49FC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733199357.12330.7666013151131642112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddec642f80ab0d50b820b89312c01c7952852c59fe8afca5d96a524d88d4aeb
Date: Thu, 15 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747331993
