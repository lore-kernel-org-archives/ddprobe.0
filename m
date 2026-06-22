Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A02241C8C
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782106594; cv=none; b=PE3MivPlYVeO+bxIGpEEa26LEX2GLSfgd3g9HB4zIcFtxolBj0+he2yKgKRWkXBm8f0luxCEi2Qz0xjD8wUrITEN/ChoGosu/gU1ub3ste87/9Lu8UqTlG0SGuuBdud1lJa0eAA6Lf5lpjWWPeXBbu5N8jjxFhQHdVOz98neMAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782106594; c=relaxed/simple;
	bh=MZcDjFxWLM+rB6lCOfSwV3Q2Ubw9d2Act6ZMCOGzI3s=;
	h=To:Subject:From:Message-Id:Date; b=IsgIdAzDY16Bu5k9QHXhv/bmMHVCWXxi4MSPccVcC4JdLF9cMTRkyox7MrhXF2WtIw2V/lLUuTpUwbURBC2pi+jqYXfWM/nHxlBkM7rJTlyrUAtXE67++MocgljFZnc+GsWUQ01GsPaXL6EBBHm1bo/MvYChl39Y2afgYP9pexY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgmfmaJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgmfmaJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5FBC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782106593;
	bh=MZcDjFxWLM+rB6lCOfSwV3Q2Ubw9d2Act6ZMCOGzI3s=;
	h=To:Subject:From:Date:From;
	b=mgmfmaJgMbK24UioiXHkRJHpdRI7fskP7SKYgKZcx9zh2XNXtWvJpctdafVC/TsXD
	 keXaYyDmtpQOHyA1gaSmL3ZBisQM3rKefzDe+JCt4NLwWJHVRcN4XhbA4ldkzGYxIB
	 pRXIXZGc5u8pOaYbGTZIwYkPgSVkkcD7YzrkG5CzZGzK/3GS5HZqER0CXA/y5OgqNm
	 Dj7+NAAcldWNgRTC32FV8awcfyOamZZRAVsV/tiwfe1MXLNjT6XAuWRVDX1sJ+9tPi
	 u/k3gKXFWD1qmTXNmM+byGg+eCgJhE0f5Noc3LH+I09Jfe0x077lJsuSK/0FClmzoa
	 jtMUFd+jA9Vrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B238DCDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210659371.11581.4072358327244008729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9e1391dd5613647353c7a9c8cdc1f668753c7d31eddc6401e758709bda62e1
Date: Mon, 22 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782106593
