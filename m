Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C93E2119
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716668663; cv=none; b=RMx/Nz5LUYuVzZWjluIXkRowtEC/c8d4TbtlGf2JnpdLeoXwGw5Ru/iC7X4PG85IwNJQVo6Yc1THoLrGKDGFRXXSDkgxFwT2TOFUhB6Fb9m5njTrsk8kXw8U0fWPxKxHtRBYPuGNe324ob1QtK+ne/To73Vtv0RaipfZhusiRIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716668663; c=relaxed/simple;
	bh=Uen8f2PrVp0v/g8aJo3PpcN5BnaMkdCbrY1vb7ApKMY=;
	h=To:Subject:From:Message-Id:Date; b=VsLNgOQTfJa2gRW2a83O++8fS3Q2mLkaHs1v9rh8NuE8sfkpQquk//IXV+aTd+7xSovKjjgDVr/D+zus1Vypcm0TufP5YzZs35PBjooDKjpAUuf0sqS/utTuXTOp2L/w4UjYdVFtn1+QybRyfM4qZatKn4loH1xjL49oBrM9yAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPD5Qvpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPD5Qvpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FF4C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716668662;
	bh=Uen8f2PrVp0v/g8aJo3PpcN5BnaMkdCbrY1vb7ApKMY=;
	h=To:Subject:From:Date:From;
	b=dPD5QvpoawN3GwPP4zNA2yKbj3JLz/ELmu1M0if1uZbXhxTI6Jaj4dBXQmgliEpnP
	 DJZSW0K8yKjT8SX/uELId2s6C6zqUnRwV9RP0aNIxbb4jMrRJRq1/MJ39rhxt5ZTPb
	 fLAGDJnQjQAz+3m4OthWue/F94n16OQ8c5Z1zuGbSWiucAEc3TTM0iETZMkHyUZbFC
	 aJCijqi+GVJyVzUnudw6SVUVYg9Dmjq6M8xv4+JjEDTcTyj7bAv16xamiztF4OrGxQ
	 i4/yv0WQGIb1QHbYfgNOwC43ld9ps+sp61DJyZMeQ1Ta6n8ObUhBTX8ODs3LRX0quO
	 QpW1HV/2EoQ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEB4C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666866276.11232.10478877933107062376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d786193941fd849b2240dedee1a393960cad919722894e83990ae29f15171b1
Date: Sat, 25 May 2024 20:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716668662
