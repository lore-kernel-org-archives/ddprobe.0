Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F20B18C93F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728369954; cv=none; b=XV+TZXBlJEwu/gaCrbmWrbmRHqa5tX0ol+ECZjZlCoBNtTUd9Gz7YJv/5ICfkq+FdNZWcdAoGGf85yhyAmctl3OSEje+ILqQjRUxFaJSYO4iOFdQ6BTUH0SK1ZxM5PaK0F6zIO7hrrGHdnLxDfeR4gVrHNMpm6r2qbk7BlX4fCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728369954; c=relaxed/simple;
	bh=lCri+vwPhy4IUNUhC3ak+0A+Rh1FzuiiwKdGFHVuClA=;
	h=To:Subject:From:Message-Id:Date; b=mplQFLPQxu/Ew2GEyc8AfWn5qn9T8OtU12xyW7pHeTNMt3oX9wx3yW/AGEMpuprDzlNcTKQSGbNIaU/NA60lsFAFlGcg9YrYNaxyMyZAVmwA7I4GxVxA3T8qzJudqoHR0KZc242PzlORSBwlwnCKSna/YzDcBymZfTYzgU4Mjec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmRRPLgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmRRPLgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CC2C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728369953;
	bh=lCri+vwPhy4IUNUhC3ak+0A+Rh1FzuiiwKdGFHVuClA=;
	h=To:Subject:From:Date:From;
	b=TmRRPLgtBFndPgAD+CCn3TwHah1+OfJ4r8x1pF5ppZowwdg6+PPoSgKPBRcrmCkPr
	 DSebLSDVml3QoIT2O2bSXZFbg2C+8piMPhhT3G1iW8yB6MjRtUBDGn4zzF2FImk/Of
	 PovAnAqVYo9BJ0xVMfDRqS0hLn5fY8hlanpOWmTcRGp8JaU3ywMCwCqJ6afBzyVDQd
	 dmKidNmQOanocubf6xGGahso/lTZs4B2VG8IvKqtIsaMrUDrzHtV/sOLGKAa6HR4o+
	 kq/3Vtj2T44PeeMV4imKQ/U33aoQUeYFI0edVeB7SSwWwUfXgXPjqYzlFEo8FU6RCj
	 3uvv4KD1I2S3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93393CED270
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836995359.5493.12352546180888603186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6763d5065ab3a35e704bfffbebf19fcec3191255d170e2513299f1679f93fd35
Date: Tue, 08 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728369953
