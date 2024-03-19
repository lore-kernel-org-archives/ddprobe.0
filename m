Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DF97D3E3
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710839296; cv=none; b=sWlPPQMwS5EAlx4128tWwlXHQBv7j2qS5tB6ixi713eVqy3u53X8A5VKdj2yrize2xs8DGsWdHxALDKC0Jb/0766R2iEEbYz4sekpSYIJEpAYx5h4Ptf1XT6wVLOIPIU4z0cAlRCh9xOZrjDUJmlKPa4pL3VU29hIU6FgnyUR4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710839296; c=relaxed/simple;
	bh=zHj27z63XYO0SlgLcK9nIqefbpFkM0h95vkqYtxEBMM=;
	h=To:Subject:From:Message-Id:Date; b=FBGkpC/9z3RWEnSx1RJ8IoEoA4AHrPHLKr+TRGvOGc+aCsfO7sWljuyZoQZ/k3qpk+J2hSfJ/HHuDhMqe/GpAu12dldRMiD3MCtSPw1kDkika8nYbwqm0K3yFk+W+saObDRm8dUepL+mYbEFbMQLNnsXi1CGDpxuP4iSbaYv8oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxogDCBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxogDCBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70227C43390
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710839296;
	bh=zHj27z63XYO0SlgLcK9nIqefbpFkM0h95vkqYtxEBMM=;
	h=To:Subject:From:Date:From;
	b=BxogDCBM2BUCrb5DEGAOFPggvdib9PmiglmSzpltTK91+4LEa/3umvwuKg29vT2FN
	 6PtGkf24gHsJqi70UJkExu27Y1kwG5AMLvnhbPFQtdsjQy1LIXLsyf3VRZa1NjRyAG
	 YGGwieopaESwZT825qQZHXOxyuugJ5JsiegsEPuP8jHDWqcMwVMcNJEfocTFbAM5wt
	 jfxVwhwfPBPBoAkAPlF4OO0fINCs0Vs69hOfc7msfFIs/QxKwxLwEnCF3BhPZBuVd1
	 +0Yi0D0ZsHVGuyiezmQ0ly98UWtt/iX21ICBt1lQT8Y80od1/xvKzioTc9Wpikg9pI
	 8VAtVY9+84Tjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F72C54E68
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171083929639.13334.1996441393452291627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39056c801b4abe7df708362d519f049743fca02a478c75fbd780fc87a1ac9c2f
Date: Tue, 19 Mar 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710839296
