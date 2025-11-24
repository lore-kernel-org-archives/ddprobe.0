Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5042F363C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764025973; cv=none; b=RfIe+v0vrURbj/KyeH/hhy2MOqUH5muvgRlDSjBvQ4/NVSC374PNvXdQ5XBAm96sMm3FtGgJg4vsf+DXLKZJpgF5gdooZloLSctLjeXEaL/VPJkvwD+u3LB0l9EPM/EfEl+e81v9PkTQEEbzGieu4dzHm9GM9ZppJDkEpLSLWiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764025973; c=relaxed/simple;
	bh=H028kT4xB5Fgap4GnspFhjyXbaUpEh54S/mSIlYRfzY=;
	h=To:Subject:From:Message-Id:Date; b=GbpAbhXs/afps49bRZCtbmE91/XOCNtT/Vfy65vAG8CPngouz9YPkG/twLP/QtkwR34sEdOxHL7BoUvyhWuYnA+uhg7/DJEqjRCr5niXb6s9UiHXVE+k9miEyunOf9JfasV6g8HnKw40fkDkQ5Dy3JKiOTzfRDYbLLBOboyaSh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwH9Frpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwH9Frpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA857C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764025973;
	bh=H028kT4xB5Fgap4GnspFhjyXbaUpEh54S/mSIlYRfzY=;
	h=To:Subject:From:Date:From;
	b=BwH9FrpwQ8QygNEIPA1ChuTFXIUhiRnAIaOjgGUqyDTcZjglLa+R/C1iyYPiwupBX
	 WbKpbqe4rtopMsM9fSr3ob3MCVm/dQQ8hKc+4lDtsOiuScADYM+uE69yllCKU37AqB
	 Ewyivbxxf2XNek4qy5u9pb2qntkUAQcNnDWI1QRvSY84xDJ47NywNQuPZ01JfbX895
	 IVfHheeE9MUwOhMrGxknjTZdLDHEK3dB+FTQBJyxPA0z0I3+t27ShRUBsNFuWbhn0F
	 dvOCiHnVrpiX6lIy2+cDenx2ZCKro4DawGKmIk2fzT0KO8LyiDWdDVfG43cKjgOMIR
	 k9RuQRjFOvtpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9929FCFD367
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402597360.24201.8673936277469909657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b51166030099181f0396c778541084cbc9f094e851e80ee3fd8fefc481ce99
Date: Mon, 24 Nov 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764025973
