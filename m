Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4600224B26
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718910623; cv=none; b=VdumC3JCDDZIuUlv2/RMsl7EQJVAx5La81lwTT+v6+cNLEtDgBqjJoI/HgpJoSLRfCHxryZVnV0FD331nj3/xRqvech2nLBX6siQxmaTtkyTBeX3/SA59ogOIT9tt9NZ6UYQF/BGJm+mPgZ95eQu0t97pmskY/btpX44tjn5Bu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718910623; c=relaxed/simple;
	bh=VRLLBaGBQ2Mr/fq85mx47HTkX2jkTQVR4toDRqOgWhY=;
	h=To:Subject:From:Message-Id:Date; b=SjKNysLBTcfqE4xG5M9EVw1vAj6/GUHff28MvUP8dAPBfjGz/XFZqiP+1zervlMdcci4znxPgOh1tWMbKfUJdUI0d8zTxY5uGg7dyKlDvdViy8JULnEuh7gHZNNSOr5ecb5SVJSA+/kdZZQW9OWvGq4aee1GaJiOmGHsRx9X0oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVSDilCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVSDilCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85DCC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718910622;
	bh=VRLLBaGBQ2Mr/fq85mx47HTkX2jkTQVR4toDRqOgWhY=;
	h=To:Subject:From:Date:From;
	b=TVSDilCJ/ZW6PixPYg6SUrGK6MUlkyiaIB7C0scwxTJkum+ERydLNe+KZsz0GR1WD
	 TUWK9a1Umbl0+kysyGGcGwYarMdmm8JLWxE22uilFDjdaAvgNiPMuzNCGxhcpCvyKl
	 QGXXjPIO1Tgkn5oXQPfDqxu9MWMHC7ihZ5wc1aYMRiyoaeRXsiE3c6FFTv31XWeOMI
	 sTZQefnpt0zoZUIHmYaGkdNlleZChraXE2UmamBtdG/Huah9lcSSkpZKDYd795ShsX
	 /iNXTIkQmbXDXRiKSWhqXwfAJlchueILqVO+rhmiJqLSFSGy8whnV0cpRSHmbdx7ur
	 +aiOarvSaMXZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDD3C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891062277.22752.12617289316537067370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c87cf8e77df71f897f0ea993547be4a966291c3986152783bbe2996262c07d2
Date: Thu, 20 Jun 2024 19:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718910622
