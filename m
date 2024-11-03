Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A45F2572
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730634354; cv=none; b=t9jmC86ysKckS/S0C8K3pvxgoL+KWg+tDVyDXJlZ6evHDQyOMK6jKGEWA31/owhtqg/XfN3bU5dUed2tdG2BJkvDl/1mAdRzh/u2KDuR8NdOr4sgALkGVLg5e/vWnbPa2buP5ckitNNHnafzJ6HCFRXgSZHczi5LZxP2HNLaduc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730634354; c=relaxed/simple;
	bh=N/DiHRRt43WOqhZlNf/JvU7ob01FgXwmsAYNpuqJLnE=;
	h=To:Subject:From:Message-Id:Date; b=Mz0XeFJcdl2/rRMYEjoMmHNty+ZI5lYaP/31DwAiWgWoGWUUqiJ4eYoh3C7kyP8Crf2N1u7S6vfxzyJXjZasNH99f9kx5AZdCo9UwXtN3eD5H1RYaIMpC1C8hIITh51SCXgKW4EjlcgPA8aDIW17mkbgoEpcEoTd95/+XpfacIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1CFSD1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1CFSD1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F1C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730634353;
	bh=N/DiHRRt43WOqhZlNf/JvU7ob01FgXwmsAYNpuqJLnE=;
	h=To:Subject:From:Date:From;
	b=D1CFSD1saMtAGt8P40OLXQ2F8h/KcrqcfScI61V5w5J3by6Elw+xk2a4ev6lZQ7L4
	 /bYvgm2k4CeNdJP+EWQW5lkZkQtfJbLHWhOHPbwg1SPpu7W0nIAtC7GYr3FQwBk/Qq
	 fyfAeRKn7S/B2UmCrjxXUiwKVNngb/KgXC0dDNnRAUucQcL1Qyoww0d69nVpI/KT7f
	 vgAZAaE8tnI1CEY6mi+UVd9Sinwy/v/m6iCR/sMVS+BAjDFFuhBD1BTTAXhnbQ08j8
	 FMakMzqWATozJXryRQedDF4mJszgy1ERmk4nZFjTQMVvnAlffgSOq2z2sG+2N9GuUv
	 vagFTNJchvp9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D00D10C0E
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173063435358.17793.4010090547032536506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2778465bfefd200644f198788605777fe59ad1f11da54c18cc048fa0f8e9c867
Date: Sun, 03 Nov 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730634353
