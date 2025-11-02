Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384BF248883
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762079394; cv=none; b=p+nNqYIbYfuyo7hGQWzsgGQwUO9yY5BeWSDV2K1pPix33l45tW/Lcp+qtZTqXlnxNGrYJjgesNuKlUhHNkNGFnjkU0Dbq/55Js5eDFXz8d3DVoOAVwi35eqOcwwNZrVj6WQ/MtAiQPbbWDkHVfLk7Xl+OXyYd9cS5ocgIjzv3jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762079394; c=relaxed/simple;
	bh=iItKELQPXhTBLDl5UHJKg9QVpIdgxfQwrAo1nv9kQYI=;
	h=To:Subject:From:Message-Id:Date; b=nIX2kmv7rzy85DxwV+bUDWN66V4Xtt45ibML22COn0xmzHFOsBazffA1rC3yvkCOC/1T8QPmR7QGDXjoT5kw964fEk9LYm7cCuIr5SvibTe7qvuNViP+PkRJCckIeuR92iGCRCuCLlhcJB1HmVnSf3OxlTYWQayDw+3bRCXmc30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm5mefph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm5mefph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB4BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762079393;
	bh=iItKELQPXhTBLDl5UHJKg9QVpIdgxfQwrAo1nv9kQYI=;
	h=To:Subject:From:Date:From;
	b=Vm5mefphsm8uhmhbstVXCQk5fuDMgutPYn5FYYJKQ9V75i81P3wrffpWQOwZQGpOD
	 hfmf17ZGpgQcQrDfr3s/3KSgsyKwnbaeFGtomje4TR94nncidchG+DJTrqIcuIWp3M
	 FN29q4Jl/sLHYtoTstB3hwBEUPIMhwBr3xPC4iFeXxsx6ku436ziGPPFduJs+HAGPl
	 hDRpDK7XmOZu6Rf6EHdFp5MTvetb+yZ0ScX2xeN9Aq18JLnAmeaKZXU77i93AtMR1P
	 d4TkoLzmHL0i0FsZrVIrNSYsobYoY+kkRwmMkAKl5CUTKm5avO16F9JCYrR+zMVXHZ
	 ZFaMrKQaa3SHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB2BCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207939363.2800.5529089192632828524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70509f598043db0fc343f2d5117839483963e9232cca02dff5572d6793ee6739
Date: Sun, 02 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762079393
