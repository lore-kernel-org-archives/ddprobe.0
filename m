Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662224C90
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719713063; cv=none; b=E/+QoxG67+K04/p8evObELBOd0HlLdcantTQTjKERu9RS5QbI/1TMJUrXbsed6uXSnGHJsVes15GTVx5PDO29Ti34BBeT3YjyFnmLWooRVixz8oJIuAjI6cF5T0j5ap1l9qIzd7V2ClBwj/Rs9F8k839Hjg8Pf3I+ETEQ5whRTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719713063; c=relaxed/simple;
	bh=PVTjt3wi9rfPo5GG56SGWSHMZRCfV0E6xWhS+/QEsp8=;
	h=To:Subject:From:Message-Id:Date; b=W+NvGIdL56r6E/Ll4Nm6cuhQNXMEjPsnbxh6DGkCrEErYfZWZ4IgKv1CTlncFfRO/PN1AOnkhTn2QC01tPyuoVSq/0Py0sG/cxemJSRXLwpR+4oJrr538e5M1p/qHcBj/qv985xJ6S62ADtTUHVqD0jdt3qx9zv/iXlFBDVJSh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsBoi/Wi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsBoi/Wi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DD6C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719713062;
	bh=PVTjt3wi9rfPo5GG56SGWSHMZRCfV0E6xWhS+/QEsp8=;
	h=To:Subject:From:Date:From;
	b=GsBoi/WiIAHNVEDo0iKtMARgMaEAmUlffnW1vCstPfDAHYmjxtbrYHtuu24tajSCs
	 fmDjB0TcD+DZuTGJaHPCzYDA4SzeLTKq0dktgs6IYHwFJmJQ7RTSBVNwVs7WfUt57T
	 aZgR9VS47pRF4k+rgZxmxDETTMCYC/skWfvMueZLCDK2rK+aA9zYz1YPAQ6pIrTjwQ
	 3G2RsJtih8yMBjmSRk2lAFABBlsLSyEAaUptqPTX5VR5dN6UaXuAxRBPufwc7tx8EQ
	 +sVc94QsHz5gTd5kHyzQkexomobjrGnzT2SW8wEBzkd9UbqTH3S8FSUb53kRyWUC7W
	 Y3LfG8fx757Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A4CC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971306276.3540.369400711224370742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f5ad198394957403d593302ee58ace2fa00e6fcf220dbca62dbd800c9a45f0
Date: Sun, 30 Jun 2024 02:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719713062
