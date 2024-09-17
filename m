Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4D3762E0
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726596954; cv=none; b=GQ9G+fxPaGAtwYqHqhC5Rb8wb+kwC8FIhkm2qEXDSqU6rxM2fyanbhDskCyo921d+0aLh0XEHMnOOxyjE/8V+QZEa/+9JOov20sKix6VnMP5NC4jLUPh8WmmdgC1rd22ITAGLMQMFWfDaVOhFVBr1wRDRhUulF9x1vVInziFS88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726596954; c=relaxed/simple;
	bh=nIhb86haiD+y0RMy4iZhUWlkkW4bjgm9PaI3ZKf10pU=;
	h=To:Subject:From:Message-Id:Date; b=K/tTV/szqegRadiInfawu2jafrh8o1tKq5wN96jtzKtqsawPpbULovh1EFiuj/bP56G97+8euR0Rzq/dFeBRWStEqAtovlYrFe34aMd2dRzUYqc+/ShLXhr//xi1sNHiDwD0BvcLXPJ16v7g1lS++8gL05I5pEFG8eH4HmAgZF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjcOzx5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjcOzx5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2E3C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726596953;
	bh=nIhb86haiD+y0RMy4iZhUWlkkW4bjgm9PaI3ZKf10pU=;
	h=To:Subject:From:Date:From;
	b=GjcOzx5bLX6ng0tbxH4OoEQIvuljv0mHeWEgiPmZF8IxN/1Xq5gyd+wYYwjwE33mP
	 evy+5ARrKyLX/N1hDElQVsq1GAYTZ561C9GlQ8OKJngOQKC8L3VEbGgiDQYVK3lRgi
	 WqD8APbxb28Tgntkol8PNDCqXHQpWgYNoW2MidIKCi8rjLodn3mkfAkQH3Rsh0lMbS
	 AF7fdoU6TFb7RyOlo9/UlTo/rqO2gH+yMoZm3QqYx5Q6zIr4Qrbfrt+sj7iSZWVlg8
	 8eZY/tDzMvPCnWs7wJyr+L368BNKpPoWfkhyo8Y/kiMSA3zz+I4HaPUJfqndI1E0hC
	 83cmm1bdaQ9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960A8CAC595
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172659695360.24328.5593823882121461591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10623ca9f839d0167dd36d5570b3d5ea2e974b19dff156db2afd0d3f754c147
Date: Tue, 17 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726596953
