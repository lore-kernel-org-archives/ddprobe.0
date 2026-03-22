Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D5C346A1D
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774188894; cv=none; b=A0q51Z5iM5HIoZIdnmQhE2ey07F1gdqXSGs96JA6QnyV9PJSBvrXjZs1lV/dkPhQ1bjoFP1zeiEexp16DVH7S61t+VkEpbnn4AM0heSTg/yNc8Qz7Tu5GQrdxaT//253hs3AbMFE9FHIqLfY+iqzTCiaq2bSanqZPUnJSZ+VY7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774188894; c=relaxed/simple;
	bh=ZBI7Z4OHVTysCBuKILUDbVLvkLPwroPE8Up+ief7Y+0=;
	h=To:Subject:From:Message-Id:Date; b=tVqMGHSL4ZmrYbQ2lm+MOeqRpodnlX/O3TFDXvlstV72RrdSMGaG+gmaJ8CUA3WjNgWn6SGxuJo5qjRzUoIzTr4IDvDz+h4CiURp8py/JBcGhjicq20jzu9mPhB6/AiJMUhYvT3i9RArEZH3pZszQD+TAZZtsRKWknlvf4zIZzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4GbwD8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4GbwD8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC2BC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774188893;
	bh=ZBI7Z4OHVTysCBuKILUDbVLvkLPwroPE8Up+ief7Y+0=;
	h=To:Subject:From:Date:From;
	b=J4GbwD8s5BUD6ZVeYCG0AFY3SeZgAUidjeywJB1snmcvfCXuSTem/uR2HTbDlaIVW
	 i9KZKnSCs2I3Cptl/+rIOCapN1lCS4l2+TxQ+ESVX8cIp35uq5PIF3/0sH6B7B6Apf
	 qTcngOXrvm1BVoNvjedCMq403h5PuwWUJZx3ENIQeKPVsoCPBGG3xAv0jjQdgrL6wT
	 N1H498tKdhGkueiTuPqbnn/pSJe5mO8qLT6yRs7/UR6JpeoN2VWIp4Ni7le7GA5t+m
	 ORzjNVlSV7bw6TWhbb23I4I2l02PqmV3LERMMhbsPsN3W3MUoRHLX3a/6JKxuC6+uY
	 zG3NwaOPPdShg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C98FC72C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418889358.686.13424878480063946622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ff44758b60ab41e9e9051f361a220e69e7c599bcdcc892509b425019bf236d
Date: Sun, 22 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774188893
