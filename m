Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFF544AB6A
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784668714; cv=none; b=YpCFpuCc8KiqX3v53wWILVh9RgEPA1j2NLMjelboInQ2XGHSMZ7Vdn8kL4KD6Pb27s+lD7A9hzCRP5ojZdT6YzIlW08n06LCwiSsDnwQOyVYhU6vUyWIixH+zriaHbfnF067L+mW05j49eH/qHzOOv7oANY79bR2NtwbnkqCBrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784668714; c=relaxed/simple;
	bh=vd5MiyMNGH1n/N5LgnhlIR0cGRN4TCdIPYdnBJvG2nE=;
	h=To:Subject:From:Message-Id:Date; b=mO8RhKebcR6JYJetZYoFKaNiaqu5MDxGCjyByCrbnXOXIJwAaIwnpErm0e2iRMSPISRCAXvK8+AK71+08xn45Vsh9Sv6Ic5yRTETxIsM4zvMK+NgW3tj6GP4qxN63RU/DP2rc/aYoy/cILC6+1lVCkDT9R/GWyZecQQvjaFEvWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGPcqatm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGPcqatm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8785C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784668713;
	bh=vd5MiyMNGH1n/N5LgnhlIR0cGRN4TCdIPYdnBJvG2nE=;
	h=To:Subject:From:Date:From;
	b=tGPcqatmQ+fCe10Rfa2DnlTMdU4bpbH0VCau6pmo28Yl/FhJddD95HaAfr3hfsL0l
	 X/y4uIh6/tVFn05v/zfbfJiyrpk5umvyikS3dbeq5Y88bdtt6+ipPJOe5GKS2dyFEQ
	 fL9shog3/F+fDeZYUo3xTG2ovdqeLLtsn1TlnBXSA3bBpVsRLZmNE60JSnmDwcYGWy
	 YkDhzooNZmm151eNJKcfsGXqYeNeJsbVt6QzleNvlppXtD9zhUQl76EYiv+p4KRIEH
	 Ue1MozijvzoU109vIySbe+rORlz95tjBmtP0XESQeKAYAplZcwuyomjGanpiKEgI5C
	 35vO2bDLwNA/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE58C4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466871371.30781.10945474390013364737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32460205a17de4325804af0985d1e20c2255406bf69efa94ba67b584409b60b5
Date: Tue, 21 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784668713
