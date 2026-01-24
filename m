Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D33E217F33
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769223234; cv=none; b=QnOXLS3xqJGT9i6R7Bch3GKDnaoio5HyFs9UCwXxTZjqlLgVo1HtpqrnhXbN8NYv/LtqZPUd8aNhIgzMT/OxyXbfUvG1glGh5m/79g62A1HqIRE+zOKnKtxXzv64jqSGLpHMT40zJRPZ051XpGaINI+OJnpO3ZI7ZTECj/c37Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769223234; c=relaxed/simple;
	bh=fBuSB8Z68i7zi+ezEgrXIXzY+XN9rgze/twmcOnYjEo=;
	h=To:Subject:From:Message-Id:Date; b=Kzz3Sgo/Zd+cQSsqsmqkb85kPk0aj+KSyrJZN1vhediklBswy1kygFetzPQ5apMd2cix0kG1KiPWVEfXRo48f7Wi23ZabirxJJ34BG5bJhJCCXjtTeoAYbOevh+EYl7NNiH1OYwDSXDXQaMU2RVugsSTSmZHIwL+gWYrAFD2cB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khz5vTlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khz5vTlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A6DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769223233;
	bh=fBuSB8Z68i7zi+ezEgrXIXzY+XN9rgze/twmcOnYjEo=;
	h=To:Subject:From:Date:From;
	b=khz5vTlKArN7nx1FNK2N4RoZwjYLCNOIK6apsdhC2dkCyOcXvX8DRCRZmZXJ6SKKo
	 PVBeAHKvuCVEIKcKhH3jIISZ2cci8stlIT2N5AZSpAkANW6VOB+Q4dar4d2EuGO4as
	 u88iTLUeWc9rSiXQO0UlgXvjXusjMQCaGg27KfQvZcNiGDUb0yevroTiD1Va4XpUG4
	 +CAGcdMrh/1tFnNRXEwD4Motyzy+DxE2msa00mFjgOqcc21w8m4K9lgHDHKmWeKtvn
	 KJWgpYO7RTshGIaivXmps1u8PHh84/QCosotynfE+bjXGFj1+dkQZP3PbcNsk6Vx9s
	 2h+TbBTts089g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A204CD778B1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922323358.14917.8569219487404264126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1c33461546dfc75c79d5637878f7726cf9d4ba23ebfab2f9af8d19172be94c
Date: Sat, 24 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769223233
