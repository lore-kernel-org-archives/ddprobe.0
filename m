Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0652E385515
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774542294; cv=none; b=Y7LYIFsr/s0o0O/qXCdSIVn9jHmjY7r7Z8ftAF72UDbn771ecbP0PFbVnnn771wIjJnlFJUmSEBfjmVyhXaAP2/n8O5pjt8GzVjmpwPcppO3Ef8syIsXT5HYrD+5Ca6jpbrNTIPByH9osDuc7xbFvLsoLnAVCLcl1PMUFA3Vzkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774542294; c=relaxed/simple;
	bh=ti3aGVnHa/drphddJDX2nb/KlCDObYU29iYxTSyfrik=;
	h=To:Subject:From:Message-Id:Date; b=CjNmfaBb6vv1GDwzhikJb0OYzr464s35wyHq/xtXae/dd3T7PDJPQKSW4KKV/RfbJt6QMIINlYga5+sS3pGk7sVPL/H4+q/XoW67A0znhd2u1lEV1C5ikom3xYwJGBfGSGsctKb2GYp+sqTRGd/1XEgciipXMepiiAZp0kmO0BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXZNxJXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXZNxJXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71A1C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774542293;
	bh=ti3aGVnHa/drphddJDX2nb/KlCDObYU29iYxTSyfrik=;
	h=To:Subject:From:Date:From;
	b=sXZNxJXmHS5Tm6fdu8MtUt1Q4Llzot/WV+QyeMIfGI8/DIDUoCF0PYwC5Vky5i3ew
	 hznFCsH2mRpfC7oRTETA+vSYA+BFq10OLc/WqPMicsZZjCBSsCX5X8oFVAyw952XEt
	 pRojO3rk6oGgtbwo3ia3SIpoAnqIs2USYfpRxAP3wTn87lAme4nKbR85w+0jelMH8K
	 Tr52EasH/W9GLxQ6D85N2l0GqRlmopLkxu8vJHj+C/bshQUBSGY4JVF+Jo6jUDyXg7
	 XpWxvWpo9W5QvLkSlW0geoTLYatLHQC3Fjl7DAI9OR7IldtRccrCGOfVeJpxrTHOYo
	 YLYNYTiQ6RKrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A4B10A88D4
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454229358.20900.7140075663791986880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72defb0d3386b34fafc913400080e227437fa6d1d502424ca13bc7bf5036f6fa
Date: Thu, 26 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774542293
