Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9A913DBA4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708036097; cv=none; b=l431PWLP2DtyTQJV05KZZuD1TBjZt+BNpNykVv3qUVbgTsIwUL4sdnCfLpwTKqOwfcDtzIzq09XfyG00KGlBN3ktof5xJ8QD/U6QDE5KFU1P42hEG8/CiM61JMfNbV0+UfK5L501smtw2qrgZ4a+p9VejWV2irJ+SOgltkFJrP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708036097; c=relaxed/simple;
	bh=NqE5X50T133QQoP35hd/7Lx/RCMBpTybqcJzpKnKA2U=;
	h=To:Subject:From:Message-Id:Date; b=QhhuQMuHDDmWjUA9xrE4/wMTkV0vyA4py0YZv3hekzumpSw1F7GbOY1XCXw/cknOLPGPmksC4FPuwghPMQG9Lq0yi65L5ZMMHdSxYo2+Qt8HOWFayk0JpvKl5RGiP7Lt76weiiHFwdzhHpVrZcW7ZAeQc4fPuzTNVDCmgAzDtvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+tfjf7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+tfjf7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89CA6C433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708036096;
	bh=NqE5X50T133QQoP35hd/7Lx/RCMBpTybqcJzpKnKA2U=;
	h=To:Subject:From:Date:From;
	b=U+tfjf7nwWaPLaqmQ4NvNOhAtU4chtuB76SUod/3QFyrbW3EpIsmOMUu3CGpvD7Zo
	 3IPCgGs2jw/C/QR+CfttIK3jGR8rBAfBzbrbWjFyFhB4J7QxwfrRhTe9R/65FZABb6
	 B1S67O6V6ztvAfCxiz9I4nX17h0Lphs16WcSHXMB/TP8z0/fMqdH57swXPZgtz1OpC
	 q64uX/0ALr+GRZVQ4x+jnYPFmp2KEB6QIj/V4Og8NNDG1KrcVHFwMyKSaXcs4ugxNp
	 4jAVhgpcO2jLRhuRPeSZ/WBS2Pedm35yFpsD7lzAlRQgDulLTryldlVEqiUleTFrUh
	 Yk2lHjYOrQiGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F7DAC48BC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170803609644.20520.10730051494647845115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41bfac1645b78770dd16853f461733db5f6e02339408e651e3859544793f0559
Date: Thu, 15 Feb 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708036096
