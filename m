Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612AC4BD78F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791543034; cv=none; b=IJQ7e1s8OjM0dNtacI3MYiMgVRYizW9iTWQRjLmMKvoE4MF9FmZUk8+4HxKsU2k4i+BrmHzcDc5K2Rd3jl0xIqFUoNnGlhFKTiNr1Oy+iHeSVrhnSwiQAGMUDtUJbTSwhfIkXtPPS6XcF2+qrcewY85XtNT6fix3HxNuAvKuLNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791543034; c=relaxed/simple;
	bh=RIbYapCmXg3lO3cO6VHD0N4kDEvNO+VVA4J5jagDkF4=;
	h=To:Subject:From:Message-Id:Date; b=iqZATXSqo34tkaJJq8CE++IKZWhI3LPXfoAGm6K5bQm4z+MEpqpEEEZyPjY9vFjKXw/nYL9fiGGqNcX9V/HcRhQAdVMJxZ0ZX8arq+0F+WsxvDunJpfjS20lf0+RICrGnSxdvA75AhSFPtd6u7UYnD6EcB1MMoSDGAUD08khEqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcOkaxBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcOkaxBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE79C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791543033;
	bh=RIbYapCmXg3lO3cO6VHD0N4kDEvNO+VVA4J5jagDkF4=;
	h=To:Subject:From:Date:From;
	b=OcOkaxBfIzotTHNlDZ7sD8tpKTj6QGkMQaqPwI9cYXV8DXErOjG0di4vtZ1UTldBc
	 XB1Z4s+xM9wT0/zds1kGkJwUWbb0wRg0nkgXVHohWEPZ8inm1kCQkpSoQZnXneifmg
	 LexscxHuu37Hh4e57DMluWYXTdwHx+ioXD2xNzaYYBaOiYTCE8/47FqrCdn3ACkeqS
	 MCLstrBxC1mD3kuvy4uzvy3QiGNlZUKasmvLD2Nc3f7SO/TP7Qs97qvHWYvGssl867
	 eXHSSfjOLmmMQyImcFsdiePqbPbVHn0GxOmFgsh/P33ZiBEJyAD2Xf1NdwvcddOVFo
	 7sIgqi0BNhyLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E7CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154303368.619.15238089397592076501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0198f84fcd1eeafc33284532a76592452fdf5cf119b5b56e72dc153aebef736c
Date: Fri, 09 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791543033
