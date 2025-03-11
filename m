Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7071CA84
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741664934; cv=none; b=rBT2D2NftWnPUWGclXUlwg/LkuX76P3Na5Evamx2OVecTHOnjAvkidtgFq/Ngzmd4IbiUG3pcnY7O2j6Ell6TGvFzcahwk9a6O+OeZCWRsorQgFAu1BojZIvxpmTe1i5jKHZKWJBCU+e+LJ/buKVap6ACd8Sh/1NOfwTuBQpedw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741664934; c=relaxed/simple;
	bh=JoIVQYdl+nmsTum/EE6qg20CI/+I8u9LhkI7kcnXQXU=;
	h=To:Subject:From:Message-Id:Date; b=E5Ct5EyLjBJKJmCEeZZWh+wlIIldmdZXBZ5G0zs1EnoLTk43fP9QambdKkkbtGh5Prx+Xi7IbydFZobETOUIPQVwXfb3GKayqadFV4zMWTagz4OVmIFk3FYmu8Lc9vG5gaCGVQC7mkoOFlUX+cCe+0C1+phEWM2vJuDAaP82G8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOB1Rfb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOB1Rfb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA766C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741664933;
	bh=JoIVQYdl+nmsTum/EE6qg20CI/+I8u9LhkI7kcnXQXU=;
	h=To:Subject:From:Date:From;
	b=tOB1Rfb1b1WiZJMUoO5kzKeJCEr2TQr3VMh4jgccloGVSUIX3kNt6p5uBASDz5kXy
	 R5SoJq/GM9MwONANp5hzRzKFk3GsnDcjmIJICB1BDKOUECSfDK1cyzaEwhKSvZAdc6
	 xz8guH7g0Y2DLemzbwF+HrAbCEIi3Y35tiv0OooCb9R64RZiYK4faIGFt34LIyrCA9
	 DhUqJzgmXWK8ObcXO97gkqwifCdTCy86XSUBN06i9Hu393LRrMedVnPzwQhJpONoAE
	 MKxxNU18z4gBHds/OUEG8rhTfQ8wlqkJVwm7Aa/5B9uGwh4Bhw7NFeJ6oGK+qVugJl
	 Q1HjQ3/CO7W4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9856FC28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174166493361.2673.1247078877079730942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff8d9ba53c5d8caf6c8d2a11eacf7b74819b16a444187006f629bb61a4a3d5d
Date: Tue, 11 Mar 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741664933
