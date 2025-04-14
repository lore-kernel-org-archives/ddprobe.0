Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B239236A77
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744614594; cv=none; b=tTE39tfeZpfNHMaMUcojaXVt1qtC3NwVdx03hA187klcF+rCmTBZQfNcgBd6BNdHIEXuKhLUGWqfME8aQcNKvDTsVjeY9s8nN25s8HRmNE9M9Rgk9FYUWuXRLYK80rXbG14Fg7ef0v9uY2fxABmw9+1sTTUm8AAzlLCCDAQ6ipM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744614594; c=relaxed/simple;
	bh=VG58k4TfV9Ym1CdElbV2QiRvm+/Mi6bpOKpBHpaYKlE=;
	h=To:Subject:From:Message-Id:Date; b=L7baUySqN6ww0CTFwpeGbukywXIBCkLb4VOspMwsFr6eaPs+dP/bzLLp7eclr2VAQ4FRAOp7amlO6PMFQLZxWhTjkyB6y/WEPb2qg0y/NCUm/3BsfSx67vMAzj52mNMfm/ziioKbD2FXlhcgMD/+lzJ+3EJDdcz8L8FyNZ+xSVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVN2sNzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVN2sNzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8025C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744614593;
	bh=VG58k4TfV9Ym1CdElbV2QiRvm+/Mi6bpOKpBHpaYKlE=;
	h=To:Subject:From:Date:From;
	b=hVN2sNzY1hVL5VOTmuxLj5WRme9KkZWUCwCKMP6eBK3pd0uu/r5tsE9kPSUzW24Rl
	 6L/ZNOosYHE7WmwmGzHuiNSmCbqh63Att1KmnxJeVoPBg9vWcolzP9IlpnhKTxEzJo
	 vsEq/eKp6aObtYcaEpngDNhaPKnJH2w7UAKenH+JswaeRl7Eetymii0Aib1qdfu4w4
	 F/affTwnPVKdfiRNDcfhkbqRU1TYMERTiO9r9gPifG6VSJJaiM3UZobjTspO33wpTM
	 EtHQqe/K8AZCU5f5Gwm+SNPyDMLO6WEwyo9JT0VDfA7qDYMouxdjqWmfUDR8T5jntN
	 EgBzVa/Vvysgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954C5C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461459360.3238.6566560916846577911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989425a765faf0d0f02cffc4bf2276780bda2d2a0a9bd40547fbb8dd39f09390
Date: Mon, 14 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744614593
