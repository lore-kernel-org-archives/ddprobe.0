Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713E1E7C03
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743548994; cv=none; b=H4i8qSPq5an4zgkpHK8P5+eYYR6uHyiXPEjnJiVDlGd27f1fXCDU939WyZdg5AUxB97lMvG9bUOU0u/N14GN8e5zpAIjD4wsWFTXqQELWcn68KfU3n8X4yCKqvZJKvhYdITnkbP7u0cN86KIidNzhWG2xg+aSbgKxChDjj64EUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743548994; c=relaxed/simple;
	bh=2u+LROb6EHKaXtgvFwsXK+c+u7Tqp+Tw/JZdrXiWM7k=;
	h=To:Subject:From:Message-Id:Date; b=FrDUkf1NHpdWTpN8bswDMsflino7Kv4EYZHAo9JD4/+AKOjm3YEZTingpPDLofN5SEODSwLodRuc9XPMXxPasLC8FdYrc7EdGttm7tfVo1XJ51begUM+P1dRNqnTbWVHDmxuftFrNTpaaNHIrbV1H07Q/qKEuxiDkQWS3Igg4eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOcPyNC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOcPyNC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6DDC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743548993;
	bh=2u+LROb6EHKaXtgvFwsXK+c+u7Tqp+Tw/JZdrXiWM7k=;
	h=To:Subject:From:Date:From;
	b=TOcPyNC7T7zM1hbzBxE6h7fIkbBYTzRghSbbJnnOyhByRbmla5BJr5JDFOOxwCuLA
	 tayPScnKMtr8/EPtjL7tyUYnrjmo7XUkh2hoVFzl8XZvTTAIAq3qNDDBhl6Kaqt8wE
	 ubas4LdEkM3zXf67dloIYIrDKKOwk6keVxrqfPqWp49oeokDVmirBgtbPMWbGzibFs
	 XalTLyTbwb96uw9SVeosb0sq94orF42dCBn6TCSXATTeTkvTMBbxL9krxt1QLW+drc
	 0LWgIDEzio8OH96Zv6bMyhcHeJe4Pdi8TbsaVF30TN5GCIQP2Pvkty6OBuhvpi4+jk
	 R7ftC4UnwxvqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE4C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354899358.23291.17394934696590310446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f348f6ddfed11968397b7713da4957315929439be4e0c4e161b260c89861956b
Date: Tue, 01 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743548993
