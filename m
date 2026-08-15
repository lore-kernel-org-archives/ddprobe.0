Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533BF2BCF7F
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786825834; cv=none; b=fbw4uqKtprDF8mrmxm1Gf3P1H6goY6z6BtlmE5uaQeCoBZHTsM1ajldgryOhdyOtUk3hCRg4Jkp2IZUVQDW2Yb1WBYm4iWxaWq4yQOIm3VC+6KuIO8K8rGgRVOt9ghClsaL5NrpjfjnDQ7XzxqOH+APRlZaCzODcylXVzNZwevQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786825834; c=relaxed/simple;
	bh=3V1oEUbioZreejAOeQIh4Ty07rR6unmr7zWxSuBaqXc=;
	h=To:Subject:From:Message-Id:Date; b=intqOyeT0/kB3Iok1CZ88l0LwpTjV1nwqVZ2arAxB/vCgBlPxzkP4enui7jeTZiv2s4Um1jn2INqxPJKII26So0fm52WhKRfhJoD4NAv7Jsjt4xRC5GWhROKOxYGkuc109fY1Ji7a/6aSk5w2SGUsd0acuDC3EZ+NaFCUTyBpi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isMboRug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isMboRug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80BBC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786825833;
	bh=3V1oEUbioZreejAOeQIh4Ty07rR6unmr7zWxSuBaqXc=;
	h=To:Subject:From:Date:From;
	b=isMboRugSE4fBWpPzjs4Up6fPR/t6Mzt9QNMaiWt30CPQcyI9OD8+SoXEitB9vg0m
	 GWCOPUL+KYIPEKBqexkQd1cXz+TbItWkRI5DmlMytV5ape+fEG02YwiFOvCM++06Hf
	 sTCfIaGmN325Sv/Xl5G5MoKhOppcEOQEh+/jtlPfjlZBg5VSasP6IPmWKbHLpCGjL4
	 FeRMypEEtLmoDvsFDmgPHCZ7w/lnxmoR+IqfsnPwM9bEfvO0wsVN7BXI6975uFbXLp
	 rHzqTlAkfO1OBrnhELq60lr3avm3zxh8bobthJ2427HzEZhQWLT5Mfvydqy07Dahky
	 obANESlJaeTzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8AFC5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682583369.14206.4261074900675044533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44af13ec3e7a7533ed8b2c0a11babae58690eb8bbed5d99e471e26fe9ab8574a
Date: Sat, 15 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786825833
