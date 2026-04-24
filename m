Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2010821CFEF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777002454; cv=none; b=VAWrd6Glrx7Woa6tgeuP5APBcRlMizQioGuV38aM47wvhGIHD4X1hi/c+IukL9goovxs+mjo6LE6YR0FAUV3i7Iz8DoDWcmDwYaOajbzAW8lQYOFHbQVwOK/PbWiIdLbdrjsB5RJ4NFYKsgn3yMSMT6IFJK4RXnes1IhYUz8Jls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777002454; c=relaxed/simple;
	bh=cEh0eE554cD7B929kE5o3P6zX2vkrZHMElgio1qceKY=;
	h=To:Subject:From:Message-Id:Date; b=ijjGxwPpC+tA21vunAFxqxKzeumuNmvj1YC0ivJtojtazHG5tpPknEiO9LGd+2GsjCAxaoGLN7LuhrOJzrZvSjbOuvoSbygxvMLjfJe1Cjc4iVDLvGG+q4ojrLmbfeZ+2UVNsvKvPnFpi3Jgnkh2tseZVQibvTZpIrJexPCF76o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqIj3anu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqIj3anu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB905C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777002453;
	bh=cEh0eE554cD7B929kE5o3P6zX2vkrZHMElgio1qceKY=;
	h=To:Subject:From:Date:From;
	b=BqIj3anuo2qVUb1SfHzBb1mjIY/4Sk8TXRjeW1VX7JjVukjMaTy2nGV+QzlMFByd3
	 6B5fztyrhqVPkDcHiRDPM6rs++hG441WlE73GtijNZcmFP6feu0Hp0Vrg3HZtPBsYU
	 QNDhyozKxbrpCY48UWJoDVc8jU5KjmUgENreYPU8YMz1qO3HsaTJ3f//iTvHgEtKG8
	 eVLTfHFJuy/Wvb8O0QAVRFxc1zJGh17ty/0BZ+F4qU8jxNKBWWBHMp0NwTHxVLWpA0
	 taVvHjAQtpDG3BDTaKMgLs0xQGkLlKztO73E3bgSIHNGqO12otDQ1myN9DT8IXig//
	 4vwtgdz5cqgBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95FCF589DF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700245368.11810.3981960946187579986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7589571514eed177006be941dd801134bc27b169176d18b0c2f1aea081a4c83
Date: Fri, 24 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777002453
