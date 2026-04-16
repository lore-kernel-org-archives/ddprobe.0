Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D512DB79E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776310054; cv=none; b=YFmjDwuiscif/hlU8y7BfhJM5ROcKWEM+LUjitwUmpeJfnCueRiAicdwCrrLuBD+qhG+lQ0nDnBZG7mtywyeyayvDwdCfOM/Rt03BGvuIEeVke/HtuXCSn7YIqbddm3p7bN6uMjBR7hzbTvXHc8TMULigOa0OAM9g+pc/49plHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776310054; c=relaxed/simple;
	bh=+NUMjT7Z1/P70lbhEnJ0Srll9hxU7PqBRauUbVbSSYk=;
	h=To:Subject:From:Message-Id:Date; b=pwfA6oWv7zNS4ijWFjLySJG8V3HGtbBUAmxWqHwKQmgxChbfXAe6nvnFmcO34dlZKMewoV+v/4HK7LTfjbLLYCSYaAEyvjtO0exg88A4MBAtlg2dWRzNllZjMvN8pInaks1jNU22dqL1bC21wgZnWnG7Pu9EQq6jSy64XJhg1B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRxwyhq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRxwyhq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4296C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776310053;
	bh=+NUMjT7Z1/P70lbhEnJ0Srll9hxU7PqBRauUbVbSSYk=;
	h=To:Subject:From:Date:From;
	b=kRxwyhq3HCqImWOc5piW1OdIxAN8Sel84cCQzx3TxReYuzLuNEFe0nepLvlXq3xmh
	 spGOdbnN+5fhL3kFCI02PWQgdx1XxZ1SxHu3/Okrr70U3NNd8m7H5Jkcpp0faSNwKZ
	 bYBIJRm8aNEjwPQq5NTR6ba7wWZNiKbytagzq5py5Uks5Krkj76OMBgxj2iRnbojNY
	 x1yhQvLYREJTvzSJ7egsMFaxv9mbAM5+EXe6nIP0hhAPCWoRT5ZeSbPEpDgSaVwioD
	 5NOT8oqq6VuAyl4s8uy3rN78VXZNmVqhUBVJe3l7Gk0myj7mPo+vZ97FtYNTv+7z9g
	 jnS71+Nk86J6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27FAF433DF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631005369.13033.11233386356954478762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff447a490f47ca8e0c82569b38a1e3a7889b2bc792ae251a3ee6557d4f2a131
Date: Thu, 16 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776310053
