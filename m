Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512C21A616A
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722409554; cv=none; b=KPMdacu/3oJW2bsGHzAiWSSdFp9GnVPwdaZE47GDmT9FDRKcWzuLZYCFu1EorbRq3sdvFi+yxJymtZ7rEPxPLC4wrnxVzDiTeGyRbaeLuMShAs+5DyUNsdVlB4o3txaxdjp1nhgaBpIGC86W8cL0jSD6KzGapUsjcTCapffOWtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722409554; c=relaxed/simple;
	bh=nIHEvRnWqV4ieui8fZaKg1OPlcYySe83bKaWJRJqDco=;
	h=To:Subject:From:Message-Id:Date; b=jqyBGF7Ic0zXvvyCk42cuZ8aYdXaA8qt5KZ/kv+ORmXleNQmS86QEMV6Ax9eERGIFKdkmlEoKtsV5LqFpzzs46XkZlN/ps7QOPT+M77/x6eaXU5KDIiG2i1OhsqZd485nnzog/C7Td1RIcwVmM3UcDIMdABN1AYqbHsanm4kPAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWir5PfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWir5PfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09DAC4AF18
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722409553;
	bh=nIHEvRnWqV4ieui8fZaKg1OPlcYySe83bKaWJRJqDco=;
	h=To:Subject:From:Date:From;
	b=WWir5PfNMkx12zxP+mRcxeTs1VfZqISY3nmcknMXGPIGPSV82yc5mt9T3fae97+cY
	 8QvG0JLkPEX0sbgjuiFC0iNynqe0CcPCC5f/OccpId9nih7QFX9HVgcJmgDBqV0yX/
	 UhxjbFETP3e5C6xpT99Ygxbjqj5RCEn93zNZz7YbM4jh5iV1DtyI8WpBbAVdA8Y/YV
	 WNYBax1iNA6J+srfpp7A9RmuVNZhijz80Yz+P0d7rugBp5TgkwFjHF8V37prFcJiUs
	 MQDlsWXNBArQfDZj8AwJ3B1jqRoxZsjePSBy9KLwEgtDmjfhWTr8ocDDTCDg//693U
	 7PfVsFejEqsWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE8C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172240955361.1215.351637232357693080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2efb905e46c797c47470449733a1ad91c5ee026fd18586671d1a4888076a514
Date: Wed, 31 Jul 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722409553
