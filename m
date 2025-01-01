Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DCD18AFC
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735767954; cv=none; b=ejfz6KBzFx1YxL9+njzZFm9PHsDgpGKA2eZY1+n50XE9ex/xoYDKg/6SJ/2Cr3YkVQoDDNvv6MYARhGpXUkppdP0JJr2xCt1Pcj5ceSc4HE2JNqE/HjPYwsSn1+plFxk4D0BrKDdkYCRKHbVqCAgI5tpesPqsoHpTJEjolqpjjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735767954; c=relaxed/simple;
	bh=6Gf+K5wqsRk0WfOBd7xT/PkmVIqMNJaDP8KmQXeDgAA=;
	h=To:Subject:From:Message-Id:Date; b=Ju63UlLJ6JiwCc13K4yzT3o9grLbVOeX65GpLj5Y09q9kmIDlUGjRhwy2f00vzwdGobCKLPWNOLoR2qwDMVYsiIwNKJqW6hBCAAvKXuwBQEpqVPJe3AukhY1eh5StN+6yK1+78hlfyKAg70VsWjMRulKsmKYI+qL/f2HZMQYdUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0JbtcKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0JbtcKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A546CC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735767953;
	bh=6Gf+K5wqsRk0WfOBd7xT/PkmVIqMNJaDP8KmQXeDgAA=;
	h=To:Subject:From:Date:From;
	b=A0JbtcKsuam9qMpEjO/JyEhGW/UfwtyiTwDtVyANDSWwtUyiaIJ1Oaqzwl5aiJLHh
	 gdD3WZdQVnmpvmsmVLMHG2kWXcome+hVIbhOLrTR2iIBWtPz8QnnIv4LNp3Q9uLd26
	 G3jSeykR24eZBsqf3TOyjcxr49iiwN7cwxMz/x74BkA1F+26o9AMtJWMgaT05PoSXH
	 CJVqtiuZoot/MlS9SSZtuii0tc9gFOlliXSv3p9Mf3sDMUGcyhZk4yWXvhwnspVxtn
	 kwPzh852PJ7lbAdR647WObOrw98Ns9eP8vQFukJLAqScNGtkMFyknw70aDBkE3UXSe
	 Df2J4evXsgMkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D72E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576795358.20436.2687198365219270634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4070e826bb67eb18501479ba7ffd3ee35b1fdea4b76d09d7e581dc19661de5e1
Date: Wed, 01 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735767953
