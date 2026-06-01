Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3655E3DC860
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780338874; cv=none; b=MpV7C2ac7PQSjj/A9HpEtoDILDS57ArwrC9UcxLr+gLvtY4e2SXiWsZXWaHfZHOR6vOCSx62G9a1wefG6mvmGkhufM94FRxAfW9NIZ0DcHvby2FIXIpatAJ4Firj+XD2iJYINKSwajO1BTEun6+o931PYiuEguTr+h7FGs6/fkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780338874; c=relaxed/simple;
	bh=q32/DV+aBuUG1Nr73q9eM86334Z+wezp92FjYj+BjdQ=;
	h=To:Subject:From:Message-Id:Date; b=fEOGgIyeI7hOPTcyx0dI8f0jqF6/NvZJAkkgyHeVrgcmw2mK8J+X2lo2wSWMGkwWyh5Ek/agQpVDrzNAlTd17fvSTplnkcM9yaxMeNEoIhXh2jZSKK8rRscyggw2I81c/2XiFPelxZDVx2bEo8Z7aVZ6O96gsCWvZuUUdUlADc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPWbZuN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPWbZuN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDDCC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780338873;
	bh=q32/DV+aBuUG1Nr73q9eM86334Z+wezp92FjYj+BjdQ=;
	h=To:Subject:From:Date:From;
	b=jPWbZuN0Bj5beV+04qgArVv/kHL+emXOAybJljYYr8VQzOcp31f/96mbuW9d4rEQ/
	 j2YtT3jXOV+idheY8cPYq9GyHaM1RFR+Dcuri19gb25hNq7UwF/riAbtG/8p8sNHei
	 BQZCYEi8b+rJO0kO0lE8JS3d0O/eKaSzMiYlVDUIWnc6zhTrdtUKEC2immpdhx6vbh
	 F9uht3YOZNhEs0BuSkWpsWchvffRHCkjnaiceoL9F9wcwVS0J74Ys4Uoccw5k/d7Mc
	 a8SiwOXyIv2FAKtIKhUiBBUz4rzMZ4ZbVkHdA7tm6WP5UjjHXF+xrJL7HzereQE3CJ
	 4kZ8uMkWhgS8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD379CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033887368.14594.7173581379576306078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14bc45d90cea2199122d11eeaef68854f65b5c2f11af52e474ef5db1dc54eec7
Date: Mon, 01 Jun 2026 18:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780338873
