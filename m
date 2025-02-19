Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECEC25B68B
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 22:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740002936; cv=none; b=ZzReIz7/LA48e/S62IJ+XyQLUraJVnuXYiA+ue3rlGYCEGtpDh7aRRiFwj8VRSQE9Y04cPMzQEnCW3hrWWKxtt16n7o7z3O1T+Rapiq9VdtGzojwpfSi2k6+mB30GSUtbYidc57nudp9CFvKGvdFyYICYuu0hX0sYz9hjAUn7gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740002936; c=relaxed/simple;
	bh=F6aE+dO9kkbL8EM+QD4+7W/K6YHxJ+2yY3SINceQJ/0=;
	h=To:Subject:From:Message-Id:Date; b=W5zkP5dOWYVYOkLcp4xKCxmFSrMybxp0sCycnszKJIzlpgkMyjtPEoFc7yhFLH0vidxFwlhlchMqFkMUPPhNdWq14iYJEo2Mt8wPA5nfUoMAWCXzEsxqbfOfrkupZ88RNECPoF3e+hevHR9+mE//3yRsYqnGZpR+TFyPtRQcQr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxV4O0NK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxV4O0NK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B843BC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 22:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740002933;
	bh=F6aE+dO9kkbL8EM+QD4+7W/K6YHxJ+2yY3SINceQJ/0=;
	h=To:Subject:From:Date:From;
	b=lxV4O0NKAT7B/FewZJEOiSjbgK4uCF43shRbv4ies90oRLOGjdRqex/h5GUeVvFns
	 WqPsZpOWj2dH7Q3zvU0m/1B8mtkbPxOjT/5+2LuoE2VAC1iKVRO0+5vYe+7f5ivjkO
	 19E8NjqZDg5fb4fNfGXenBX3Py/NWmaRzgkA3gPRZrCKArafsVUcwetOoPIlq8Sd3r
	 Jrwxf13i8EmIQTZ3hmVgAWqV9VJYONv4HmZwDUR49Q6jJcDzat7REysOgI3Par+B9R
	 UM1JBNcP5vfKaEx25/d915Xv4F2t47vDgqO2cRSoKlrIHbFCEGah3OdAu+b1MTpbCv
	 Spd8b+DJU/kBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1BBC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 22:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174000293361.11164.10608775063063581829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8665e9c600559d45af3855f1b9e1975b2faca6c98ab690dad06f17556d8a08
Date: Wed, 19 Feb 2025 22:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740002933
