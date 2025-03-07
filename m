Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFC320C468
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 22:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741385934; cv=none; b=EHBPOjn3pR72JPLVWwJ2jUmCJGAokLEip0LhLkHm94WwvWCTO5bKpNvpVFw71RmGoPwF1fZttx982P/AibBMPZz1Bvb7susLXjP4JlAoL8XybQkXseWgEujfAmreBBy9H+Br6WoT2GGyBwm8ZKRZ+RCFcZjCH7eLC2zu1Y/h2Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741385934; c=relaxed/simple;
	bh=nTjQRGEWjtPrhbVtVVOtzEJSoRd8uqfniwYUgM6ijeg=;
	h=To:Subject:From:Message-Id:Date; b=EhkTom1Vo5kwUaFyC3kXVx0X4+WoGLraCG8XDHY6Ci8K6nc9EynIY+qeaKPhj0yQuf/Uq/Ir1DUN5ml1ePG3NyezjvGdU47aOYIYOMuJApa4ll6n13qeu2sRSF8BnDFUqIGbscZuZg5wuNF2NdF9a67imR9gy3iQzamnLc5UvQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qD+ObfXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qD+ObfXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D5DC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741385933;
	bh=nTjQRGEWjtPrhbVtVVOtzEJSoRd8uqfniwYUgM6ijeg=;
	h=To:Subject:From:Date:From;
	b=qD+ObfXV59E41qhyN7DueHamkrg72gbcvsPwzbe2a4anM9mZVFb/fn8U1Fuwla3Q9
	 f7NOw3ZyP/GKf4Euk/A5EKiHQU9WYopKun3cs2M/Go31KM2Do5u3oJ2VoSVEekBz1M
	 MEzh5g0JfTCwWVb0CD+CKQGuZLpQEyITqnKvanSG04f1Jgrvkopsf52ReDrjybuM6e
	 UKKBmSyAa7zvwEuw+ZbHhWQRJuMB809kFRNUocGMv2S52H6DJmOArC9dK9FdyJvj73
	 qHsFJVbuiAFcSa1JwA5yMjtECb5a1FsJ5WkIkIoC4k9FANATR0wWbBEtBkW8oo3nUr
	 WoNmOYRh90CrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C7AC28B28
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 22:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174138593370.31041.5275903206300275273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445d50129c462b61292b2747c8723fa2f62a2625ac2507d15fe3563aed60417c
Date: Fri, 07 Mar 2025 22:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741385933
