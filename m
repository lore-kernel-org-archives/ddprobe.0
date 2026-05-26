Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397093BFAF5
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779774754; cv=none; b=WS8KJdXccFFmjJt1CLslz8ysddn9dnfnRGvtxLTuS3tEySvfl3kJUydLi7QOMjythm2hpaoZ00M7StxKuDB7LpUvJ6tb82+o2l5u6n1zfPzfKue7AqzIgvo88fbwtpVDvSIfAj9aJ5h+8V3DuwfxmPkslvY1MVbeeHifWqiDBZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779774754; c=relaxed/simple;
	bh=1LtPWtlWYJi5fas1nyBjMpz8sRe7Jlw4V2lqpS7stwg=;
	h=To:Subject:From:Message-Id:Date; b=Qts3wCp6MRAk/3ucRNsVhQXMgqlZ+iUFfjBjaaMLIM03aSNselyf4njls3Y9d254C+xOzusbuV7vniEbtldhDcjvjQstHrs4Vu23uwvhmCVXbTmpCAbP5HiPaAhvcoGmIOqAWz1zoGJOVpBhSTuEIsy+3xMZZInr4zSTIpEaJgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXrgLOqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXrgLOqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BDEC2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779774753;
	bh=1LtPWtlWYJi5fas1nyBjMpz8sRe7Jlw4V2lqpS7stwg=;
	h=To:Subject:From:Date:From;
	b=WXrgLOqNYt3x8oorHxczs1GUclkdT46KjsD39zL+I0rsrM4VEJwF7+xu26Z/dfL9m
	 0MT8/OjPockfsyn46Srb0bulRWjS5GzqFwJKf7e0eNo24icqfYzZXYFzEiCbfTt/XX
	 0IXETkCfXmf8Jm2+oDP2yex282prcc3dOd6joGysBJBEDcci3Zmfmprcf9SK7Mh/yR
	 BuY30xAc68FT4Y+0AbbqVJ8nxi1dxD05cE+gthdoOFxeBk37/O6YsA+0O5g1iNjZ+e
	 Sp0FrOuowfAEJjaZaSqd/c4MAwDgDd4yuKTtwZs41DbOj2Nu1Ur+91UABHzStYmFW6
	 cTfZns9Rj7jjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6BFCD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977475368.5564.13159686607098419153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb61545e66ae2c315069b79a2e87a18de43f59c56ebe62b7b3a12a71da930a4
Date: Tue, 26 May 2026 05:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779774753
