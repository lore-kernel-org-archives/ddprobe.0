Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCEE242D9A
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754298594; cv=none; b=T41RgrOTnPIMeJdl0cjjaew/y8BhzpPQVul0Jt78tt1gDQehwM9m8xCTn4vV0Yl6kzC4NOvpd/urc1Kxwit7JwJW2EI5y01VrkCMMi3Ko+/ibQpCbvOoybZPPHjV6fEUhE4Vs7H+iOLG8tmLFiUHNaBIZp58m1Y3ieQWqm61MqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754298594; c=relaxed/simple;
	bh=bHGYJ4dbjn1vFNZYjvOZRTTGkINZr9XVQACy1jJHNjo=;
	h=To:Subject:From:Message-Id:Date; b=vCDiaxrNZtIRwB4OBWO7z3lXurWxmNWGWOGSx0kwa5YlvNyXuOdgfg2dArReHrRjxX3L+RIb8LMLmp8DgxlCWZdLUNXDmdyLfgKudfy/6P5O86mIUHHqnbFzsy3xf3D3BQjjWxkS/bxnt7UKzGPH0HLnO8Ds6+la4vlfvtnx05k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAlNN+wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAlNN+wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0610C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754298593;
	bh=bHGYJ4dbjn1vFNZYjvOZRTTGkINZr9XVQACy1jJHNjo=;
	h=To:Subject:From:Date:From;
	b=oAlNN+wzXb8ZvSyiLx2dSWXBWoPKPnzYrhmOI1ZtjmPP1nYnYMenfM2fHwlOPop+a
	 dvZoxJj+7w3M4+ZXQg2m0abGq/KGcxFApju5na32OKnxqnoAowxBOgiG+3VcQY8Frb
	 mvKBvxESs2KX+W8QD9wyYw4ZBl/2BgG8lLCp38Hoy+vTf6RE8kob5S7ucgArjpxetF
	 1lB9KUOEGb+HoGc+xiIo6gEEK6R8kX+EsbfPqw/89Kzgu8aUOnYPiHuVfw8I03Gztp
	 3A7R9posTwN5okrNdaFhNy+L6oEttTaLePL6jRoakjs3jeKIIURhxYfvWh5z5/X0AJ
	 socZ57YzpHlTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F781C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429859358.6169.6972784049046098164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656d9a2d28e105935be72408e71618c7ec450235bede3a9dd44bfb07729908e6
Date: Mon, 04 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754298593
