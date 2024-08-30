Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFFE14A612
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724998554; cv=none; b=k3q5KG9uCWdmMIZxOYoILmCr5nqYXRebiJ1Pu5FTW4SKaT1TlD8Y4xaa3EEXyOdBQgBYy0RqM0iSp5aOTd8JYhuqXvUH6Qqf9z9ZgGG64BHrW6eV1hPOuR4QVtZaS/kXbA7xMk4YR60O7RF2awzibmX8QqlKiTRt0yBY9vm1+6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724998554; c=relaxed/simple;
	bh=5o98PHZd6KDem5MxSIu6BsPZ2yTtYM1yUuPOrgIVUMk=;
	h=To:Subject:From:Message-Id:Date; b=BIRIysjFm1TGi1Wu6akBG7emqJR7CRngg+UTZZfoMNMwn/ROg4OQOkqhln72L2AhHlrrlYUz28pFY5O/eEdiQaQHLRk2xxB741qsNEuWYhKPojgIUFKciEDiBXEpcOKEJlpn5jhbHmTDFbKASK7VZHGTfjZIadS32mLFUCX6R94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GH280LeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GH280LeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6388C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724998553;
	bh=5o98PHZd6KDem5MxSIu6BsPZ2yTtYM1yUuPOrgIVUMk=;
	h=To:Subject:From:Date:From;
	b=GH280LeJGHBuneDBZ60ro9w8AekwNuNuAf97iXYgQ1cX3Dqy6cU+I/RM51EfUdTrv
	 OmQKNDIEwdg0w3o91LXRIL6ydO6bOCdN8I/+mgtZ/vgAjK3K7Fjmtnw5CIJepx/8Wj
	 bMxka9XqWnDa9IX5C3KCC5j2pohokLSdiTQFB2QZQkYdUMtR9hIISFqYd9uWOjsAoI
	 R5dxjf0Y1meTPMZY5ZBv+wtyTR/pE6ydbKWnFj5Nf/rEJIDwJcDlaWE2COxjg8IgJQ
	 e+4ktOTsAAfD4nuH4p/A59TjpLiyV8tcjacnLz0eQ/7UlEGwlohWcczUQnO6lfnQgv
	 P40wMv+ybGaLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9722CCA0EE1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172499855360.26222.15085372623557284383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff54bbc72b93f15fc9c6b802d34724972fa2135167d4785d9e807205e6e0948
Date: Fri, 30 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724998553
