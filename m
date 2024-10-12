Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E8084A4D
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728754554; cv=none; b=vAiwlu3ck2mqbWuZKZkX3q+FT1mbGA1wJGlAt0zOKOZtmhHlI6hJBkygo8c4aVXilsBvldStK52YUwZbzf3YRv446DZM+cBw3hqK8+omdLa9xrvYxTF1GUFz0lSOochbMmTxIianCsTyAdWRhY9jeVA+6acPxDdtXkMr8kw0u18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728754554; c=relaxed/simple;
	bh=+8lUjXKcTaL+hpuwKLAr8IJnaRtBOvXMD6t0vhVQWu8=;
	h=To:Subject:From:Message-Id:Date; b=BvOVJQAeO+kIuveGNsu/cW4810SfZMIzfkZ+XHzP6PibHpgzhPZA3VTttS1x+Xai4rxpyfJ/Q2X8eIoYGuFJzRRIqRXsbd7z8iy+4ZbftkN/sAzvZ79TFCWXeJdQfP8o/nkF7BQdL4PQX777fbYBICr8HsbMxgKspNzwCnR0/i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEf8PTmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEf8PTmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A698CC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728754553;
	bh=+8lUjXKcTaL+hpuwKLAr8IJnaRtBOvXMD6t0vhVQWu8=;
	h=To:Subject:From:Date:From;
	b=bEf8PTmWKLC9HibWr1YMmQ28GpMECnCxcM6sjqTPkap5Esgc/3swAl9Kx8oSrjrmq
	 ePbak0TRa6cloGMo/Pv+vxYvhOtahTNW0LEgzitDlf+1qfGQskN/kRUsTY5roObYil
	 Piuz/tpi0dvmaalVN/PkuufQ/7DdYRasI3LuDWI5qHyL+jSBaRJeUJiIPFwieplwH1
	 SK9dH5T1LwycVLS5xmTGBuTuDiSkLahUB1M6xOIVxT6ba65hgqcu1+s0u0oj8fHg7V
	 APCWczace1DzdL1mYBJdvWVjl6oKSuWsgSuBomXj4nLNneS219JiCjcH/JGK99etvz
	 BMaiQhG110qkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D71CF2572
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875455360.28395.2897931052598601437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e80e0b5164d1221238188702be35a5b2412845ed231c5f160ab859e57d57a05
Date: Sat, 12 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728754553
