Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE721CA6F
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705738097; cv=none; b=FTreE3CAZFx7QBLe292POlEmEDDNm9L/5un37XO6u9bTKmN7R2tVB3QOLF9r3yxhew/EK6yNOUFTu7OsSQoqgIKQDBL5C04xU7wIfeg0hxcooNxKj7DrBJxpEcV+lzrf3vo6KGc5iWK4HjdzmrnEfwhJonyNU3GFRBW+47tN2YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705738097; c=relaxed/simple;
	bh=CDYa3wE1w70N3ngwUjN1AEkdpM9KYX3h1oT6RyDeg6Q=;
	h=To:Subject:From:Message-Id:Date; b=j/98YD5SloScPk4J72OhxxHuaL40SfOqEsgclvDFivsuxEb+vFkDIG8pAN/6+8xF9DcVmQYoJjNi3rGmOj7N1NLHe9srB0Ia/S133t8pF9IRuij6/ujwd17W/MsQoiNCxn7+S5ZLZp6ylQY+MoobX3pzcNuJSTswO2qSQzh9Jfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABI4+9fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABI4+9fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E320C43394
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705738096;
	bh=CDYa3wE1w70N3ngwUjN1AEkdpM9KYX3h1oT6RyDeg6Q=;
	h=To:Subject:From:Date:From;
	b=ABI4+9fj98Mz0A9+qoq7FFln+LYYvEY+c16oBtKAvZ9FsJw439TFgMQClf5URJBoH
	 p2OH+YB/T0J60I5Or7CUMMiauqyWuNc1cG4slj1aBISxvCEpQv628YwZzSA7dRWXom
	 wKmThOELyJAmSXNM6kGVKYpYcnZQsMh+r3uWGh9+Mghzldm9cbcaMVqnX5rvnOzG2z
	 wUfXWXANSNPX06mPaAVUajnE6V11G5U+lLXrxIhjutimZwcGtySNQX9iGR5CvBfwx6
	 oqkW2A5MwHG+Yoh6LBrh+fkh+2n8s4NXD4fxq8+rRFedYbzf8Bg1PA9LC/NA2YoqDo
	 sD7wa80KOgp6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D43C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170573809637.24286.8489310622095600379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6420939d0a25cbe73bafe7985ac8d16fb349c50b180d44206f88566c9140ee85
Date: Sat, 20 Jan 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705738096
