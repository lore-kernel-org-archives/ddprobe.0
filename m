Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF9F1DA31C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720016123; cv=none; b=hsFqUcsIUWochIHpt/o4Th7IacrUrqx+oLariSjJf1mUs53Uedw2nD1s/351dgGYWcqFof5TiewbFGVA4KyPFrOspiT1Drh58aodRERKl1ExBea2rwQ9aVHg9R8XSd6GWwYvzQorrtSkznZwNtZCMMmPtsjxQtZILrrCvyNncVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720016123; c=relaxed/simple;
	bh=99SvpwtDwbU0QIXlEC3mmt7vMAVqlKWBJsgMEmrDdcY=;
	h=To:Subject:From:Message-Id:Date; b=CRgHFQihQSvYPZcrKFJd9R3IiC9ooza7hepNGq0mPhyfDxwxIy22A3ZHyzFKAGEs90+9Xab8pNdE42DPRbBo3PbmAYsmoRyD71YxspRkRWFlwy7++7h5Tt+JLR3PqXz6jPXyUTbxEss/R+YfGPoG1wEWsYd2qhR1ikvhIWnNhBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt3JF9Ug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt3JF9Ug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE73AC3277B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720016122;
	bh=99SvpwtDwbU0QIXlEC3mmt7vMAVqlKWBJsgMEmrDdcY=;
	h=To:Subject:From:Date:From;
	b=Gt3JF9UgUEtTejAvMPjn9TNZdYGfaU0J6SWdci7oc6EtC2/u2Gi+Oev5OTXvhJsJW
	 3qDVHzL7dgddKFPUeRV2Z2dsSq8UhDt1UGtPuNbpKx15Y02+YgaH5r9n/QqCCyXl/g
	 SPFBAkKTH2wFZOxieBUlPsA2NF6dKHMCOzpJyvDDVXykb/LaxVv+CVBxBrm+jkgJMI
	 YsTgfQFdJbHdDyevIDNmm1tfCCe95ELqE5TV0vTs4Tjn9kugGPD66FR4hNtiLCe5UA
	 oE7qiabgpjfEN8HYGCiw86LX1T3U+pARL5qe3Xf7wqn4YwDC0mAOEu2r31Xr7EEgdk
	 9UamaqbyiDGqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6230C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001612276.31035.15443406283285718508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc78dd35b6df1b4d60002645947d8afb4866d7952a48b4afef4360862131a6e
Date: Wed, 03 Jul 2024 14:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720016122
