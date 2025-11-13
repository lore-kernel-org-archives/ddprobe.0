Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C88734DB61
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763036394; cv=none; b=OHoVSck7P6xHStBNwdDpE0Vx61lY7wSXD4E4ft1jBiQkRB/v3VPqJ0YevZil3+U5PqPDwdAdzW7cZdV9rBoJw9Fu+QH2zHXVLsTZcnpXtaUc6fGVyh7hBpGv6lGrPaMSAYBziow6jJuScp/tuoGbY8mK209b1VQmWDFNAF7RANA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763036394; c=relaxed/simple;
	bh=c7FBTJKVriAlwC/NRLwVCek2GIZymIekINuIRCHbRPo=;
	h=To:Subject:From:Message-Id:Date; b=agW1LMPWbN2AeFhLq2T9hO3cHEVahwlADvmXcXxCmpkH4uvaMtUfsteITZMlVdDFrUI47D3Zs1KtLDy1WIQdJOnQ155zEPskH67RPX+q64ki/D8ooM5DJQtEK3IY24aK35IZevzEe6OtgzZiTnKfkH4DZVumM9vNpqARhJu0/v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5aGE5Ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5aGE5Ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF63FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763036393;
	bh=c7FBTJKVriAlwC/NRLwVCek2GIZymIekINuIRCHbRPo=;
	h=To:Subject:From:Date:From;
	b=t5aGE5Ga/SY2dpKT7DcSHu5oDIzM7QGDaemIFxYkqUsh2RQCi31l+nkmue4TpRIkT
	 KCXucag4hqXu5iyEkMSRvicCxdDpdR8NQHJ4+D5sMDBHvf5VQShYfLfNmi6XilOYFt
	 2aU5AdzFxHL1bx3Eb1/D7cVFjkR34IciVSZq4iZRCy/s4Ilom9xUGGgWkijNJP82XY
	 8pt+DZgW3R/TpfNTAIQjl10Al//5LGDNyQ2EcQjBNGv2Dg97H/Wu3wWxwwcn+n0ZmJ
	 qU+zRXBcfXdm3bGceMHPHsRQfBiX6pPUPgosAUTWWl1QJ2O0OU/Tao0DYOqli1J6AR
	 Hu4yOBTPAagzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCDFCD6E41
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303639357.15750.3709435834413640378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecdb7c0af80c1dcafb3bb962aac991bc76063e1a48f2c8e7d948605dd163dc40
Date: Thu, 13 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763036393
