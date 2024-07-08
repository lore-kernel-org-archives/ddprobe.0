Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565B8803
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720406183; cv=none; b=fI6qyy1IjD3foKf9eiD6R9LJ+8Pr/WsgFztKCnGIJmZkClN7b5ZQNQ5Or8sr2Fu2RNLVdpQx8l9iuLs/32Z/mXbuGFI1SlPteCub+F/FECK97M9zAY+SCpLrbTQQupSelohge/j565uu/iGcw5QwWtnBYkidxb/YoBde85VxpSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720406183; c=relaxed/simple;
	bh=B/zaL2NzYBlnkdCk1mP2bBOI7qZEZ8W9Mn4vtSqc22Y=;
	h=To:Subject:From:Message-Id:Date; b=UerFx1yI6+xPDnz8DZ1ep4bsas1bxa8w3kkXBkyjKldDmCbR76O9kWuyvv2aUyVerGLpyTNUrpDhENjKSyKXPN5TgOKJ7PDOuwUrXtYwB7qv2KNwjXq7TG2l0e/paEYFxuvA7x03eUCysEuRnNpN500Y2zKB1JNKcD9Yc/r1BPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j07XEn5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j07XEn5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E07FFC3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720406182;
	bh=B/zaL2NzYBlnkdCk1mP2bBOI7qZEZ8W9Mn4vtSqc22Y=;
	h=To:Subject:From:Date:From;
	b=j07XEn5c+w8ZWC7sw/X4EutDymwPL/+lQLX9yzs5+18CRzw2AVzO71P7zGsFIZZpq
	 r5HAmbAeWpiwsVIVKD7ZhAdhfbKp0IOduou7It2ZOC+g9+DC1d/TFmGe/OSRQvbZpm
	 XGH3PVruN0SbXdSKyufMsszGLE9/TbMbxNTB6pMRYSmo2EHLfUKh0ZMGn7rIMSg2cz
	 iEkDf2MLCn+bEHO0bpWX/c1npzDOL2mVi+ppggqH5UNUrFundoZiJeQe4YsjDGT7Fy
	 T1Ss/8ACciuqKbFJlqFZuyK3nIpYXw6Ix3AshjpcRk/EDvjDPu18nulX+PaHdPX4Ev
	 idDdZbesIK3ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D73C38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040618276.30711.8444177731758374862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0426ad4fec8db65a4d5a4c5392fd81a8a610c471ad272cc003210396865e44
Date: Mon, 08 Jul 2024 02:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720406182
