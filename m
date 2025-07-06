Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4B18F5E
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751805594; cv=none; b=ssB3RzQqxpqaJg9AWV8vgAdJK+nOSEwH0qtwFk0sPd26qzYHfTBs88RZFz+gmHaVEHtbGFCqBvUJLHlQwT7Fd70UAYoTcUnuf0joRYgp0IlcUX9OlyrRxqKVaqxH5ajvs/hNzdQr7DGmpxfQIHuoukT3NEXz4+P1FlQlOAmsV1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751805594; c=relaxed/simple;
	bh=HXRsZ5hkdIcADHzT6iyOMbrTUXVxlCSb0PDh3NTsDt0=;
	h=To:Subject:From:Message-Id:Date; b=K/otrbaGhoZ5RefxoxDNZKR/iFO4P/nM52c00f5dOuFAdfHM3wxY15hIxS4/YIKgh7tVYQ5XVOXedABTLvvu9Ux3ruQCrKCR/uTF3XgEwcHFHongXn2VhaTM42cYlQXuGe4WJNACg8LT/56k47XXHlA2vzwaPREozUNlMbsfFtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPyHn9a/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPyHn9a/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F26EC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751805593;
	bh=HXRsZ5hkdIcADHzT6iyOMbrTUXVxlCSb0PDh3NTsDt0=;
	h=To:Subject:From:Date:From;
	b=WPyHn9a/9EMELlV/6EoOvhSNt9/qvc5Ad0kfITIJDWiYzB8GPF82l+KxCTpnBf29H
	 bbnh6ysxMZoqJgY4V6/y2Wv/qCI6n8xNqZJqkuHp+ggR6f0aUMFal3miNQKuJl4CI3
	 z73tOBe2hBYxg8EqcpCp0Vq/hPfMeE4oKjGksvuLKhu4xwAO6Hji9xQmMvZTuv8QOE
	 3hcjJgT7rZ42OLB6x+TWvmYlM3BT00DYnCsYJb9Y0/jZ9FkfHOek4AorXStvsloHAL
	 0l6qe/dS9V5e0NsdA/HEFf0+gCkqE2X8QzqTgIvBoluL20KyXp6HQBRYrZKTlRre8z
	 LubBOK07YAY5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9057FC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180559357.6659.10168774732313575142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12e8565623c845640110bb70362535e92cc53d801431dd4e0cb44f5b38bb01f
Date: Sun, 06 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751805593
