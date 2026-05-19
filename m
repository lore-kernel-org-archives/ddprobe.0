Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E035949553A
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779193833; cv=none; b=goMbA3Mf38lOMDG0Ov4mmelZlfoyrI/aR8fbEkdpoD3nQnfUEpMbIXefen9N7UAVJUevaocR9M+IjP0trgiRM8mKP+jIOsFsu8jqo4Y5H+uZYwl/Fqs7NHvHRKR5KQEm+pE/wTgKtrbBr4XQDh8CPXQQMA0KTMiGrrbeqFSZFns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779193833; c=relaxed/simple;
	bh=wF7TELlmwiAw1UIxLJqVKFQuv2A8hBaJ7zhqwRnlvLg=;
	h=To:Subject:From:Message-Id:Date; b=rjDQ+kFkfIQ2nHzMe+2p+8RigJqzWaFymF+v8gCKjPEuln1EzL9802+GBRbXr2pUwDd+5spxSDe7C1MEX0hGe1qqi6LITuKhcjryTPdQFilvaR8GB7Ju0W/M6+0Z4pU4vr1fhY1gBk1TXumbowat6XshJO8HoPMcGkDbKYd9qKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbPuM8Hf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbPuM8Hf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3555C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779193833;
	bh=wF7TELlmwiAw1UIxLJqVKFQuv2A8hBaJ7zhqwRnlvLg=;
	h=To:Subject:From:Date:From;
	b=AbPuM8HfRMdGnx306JGQMhhn3KXk+SwpenZRkkXlhEtDaFn88HJTdOXCVGNont9gZ
	 RBELOpsISSgfNiwO1bfAnN0AjZGRpPlPG4y36WLrwVtWj2lfLI7dwzImDuaDpd5nsp
	 glVMiWyqLD7w8fXiM5uG+KZQp5m35OH0gvi5qFO7hg0fTEsxRg8E+W3f2Vk1VIU/sU
	 rjIKqhAvUCoXHAUMTfFCA/hd14SrNdOrBDrPh0n83603fSiSBtAXToK8LQXnMDjDq4
	 JVK7Plr0PqAyujdy7Hjdk934HwXZw4yl9NFvA67ygUYV2N6iHrB64IbH02BHIenZFe
	 CCbcTj+fXVqow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35FCCD5BA4
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919383371.28156.2733349371469042700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c87c5391210523befa5a23026dd224731feb2da5b214e3b2117eb2331e3b7f9
Date: Tue, 19 May 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779193833
