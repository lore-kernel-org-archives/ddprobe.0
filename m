Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B385145A12
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720167923; cv=none; b=r3XfdUjK7+RNQ4NfOikeJKa+ese+e8MC9UaI/LKhWzKVBnlqBetnggAO9ea0+Zfu/Kf5tDmNROCvDAUCZNBQTI317dEmSQ8EbKNlQFW3dl0GBH4+UDjiDmIyyPfgm+mESoyOOKZ7oiIix4FJiDjmAp2qiI0jUuxIZna0Nvv4GCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720167923; c=relaxed/simple;
	bh=rstG9ObVogGOrxEqsC6paNPmrnV2K19QmuboCV+J6T0=;
	h=To:Subject:From:Message-Id:Date; b=HWkdh/VlrHfPHVCEg9t7lMI+bYm/r10t7JLoLxuACD7uocMIH6+uRs0LctIiN0KZxUHgG5HI3rH0gUuzzpdeB40nmi7wv9ZEm3IlL4jZPEzYw3MnTV0RFz+3tXmDQDsgeZo4ptQchwQJVC4aZxnunMlQtZqfykK8UsgTzhp7Wlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp+R3M21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp+R3M21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B2BC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720167922;
	bh=rstG9ObVogGOrxEqsC6paNPmrnV2K19QmuboCV+J6T0=;
	h=To:Subject:From:Date:From;
	b=Cp+R3M21uUe4OpLZcGjoqs3FnWxHW53vWEfcu++WqsOPuCdzBxGBq7SPt/1aLXO4i
	 oWHjtAjafnVFKg0+nxHpYoxvhoAlIILhly2XvJqtgrUCZkdrh9i6G2nMnNr8D6QXTj
	 USHDxP+oVI87dHhVtnj2hF4cxjQ6HhRYBJReE0NF47qEhoMXkvGiOoNAukDzudf8Md
	 DJwe6dpQW1EUDfq3kGVm5ZHbW3RUVLAH5T5kSA3Bfyg5vbhG9KzpzHiTo0L8mol9o4
	 JkbOMaaV73+9yW0wuCmqE31PDaH5PENuf42FHP5Qw02X+IXqqJSMv9436/Uzf2CICb
	 +lEBObNVghrMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A13C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016792280.14459.12960959218664241127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766325ed55f86578d649e2c2fccc740f1bf8be98df5de4c7daefb537a089341d
Date: Fri, 05 Jul 2024 08:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720167922
