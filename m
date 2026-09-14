Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765312F8BC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789351834; cv=none; b=EM3/aI2E26rCjhNcMQD7stF3hD4SASRTGymAvJnxDlEMI5dguKHNJqgn043bCJch743FkE5VNak6l6nAb4zi8RWZn2wzi8HWuE887r7v1kIfFXCOeU6klv89NXVAh7d/tM5zp7sVm9WI2akXJUmnSdmsYFCExbXHAKl5amK7Jgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789351834; c=relaxed/simple;
	bh=cxXoSPpwJrtY4xRq6UQmaqV/66fe6QNjzwWwze9Mjbc=;
	h=To:Subject:From:Message-Id:Date; b=Z2XefVwsDlINy9syiDB7UthK9Ph5L7O0UUdd2uaZMDHlygA6lx/GwigpIL3VTcGZdOc3DriJ8+pnWhfJKmfxFx+PKpByCSJHLpmLMf4M7I+czidP1bYhRl84eogXFViGzzPuN9c8yIuRvC97j89ROfHI146gvo1DNOwgx7SlqMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcAql4XB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcAql4XB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA4CC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789351833;
	bh=cxXoSPpwJrtY4xRq6UQmaqV/66fe6QNjzwWwze9Mjbc=;
	h=To:Subject:From:Date:From;
	b=AcAql4XBVIcKh/pJkxyGCl0/7mFyJNOugqo5YoTRUf3CimEo1K1E7QBVwkkJy6op/
	 zxYO6c/Jm/D7pCywkhLxtEtjDNneN81Y1hSv7T6+PkaGb7Ko8kYBKsRFhQPUaNMybI
	 0y+nIhv352X/BHzTDO8rskkSbNFCyjlAk4SZmFaJpqehC1V9RpzObMwD31lOgkczB9
	 JJeI3+mXvOAeraL/fSzbZPAtLp4phIyUX5kBNnzxPjVdNfyIfOU+HM92yvgzVJsuUl
	 G0bJpQobRLrj5DEqG8c+AiLgDjxm/ancqkXHSWxv0+BeeC6tUeWqPfxhEoSmAOkOf/
	 aMkxyArGXdOPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9214C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935183368.6833.5497772452285008664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef7015673efbeefafb80078be1d9d8e06666fb748c9938e0bf3641a848ce468
Date: Mon, 14 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789351833
