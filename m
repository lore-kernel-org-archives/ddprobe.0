Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1E01FBEBC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737971754; cv=none; b=m2zdaiuoovKhMej5GsnluVvgysbXnWoUYuCX62yVDICEo6XwkKPlIB5oymF3oxLEILCF91kjLWBwmGVrIcXMThklwHZD3goutgRCKfHZozJsb5iAkA7yuH1SjvDqsFusGzNoxF5x7ujGvUlEsLHYn+dtaSllwLOQqDN3aSJ2Nv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737971754; c=relaxed/simple;
	bh=L32kruuMRYwnfxZCXHSRB5ZBfZFZ+iy6+e6d4oFkBQ4=;
	h=To:Subject:From:Message-Id:Date; b=C4eVUShlB7alUgHqFHZ/DpANWMiAXPdmr/2skPG5mQft3S3SPCzVP8IaXkTyygmOWdsj5u0uFAFaeMOLn5kV4sBgt4yMEeyOBJUsV9c3Ni6rezdMVpUZulE1WWXf404Mj9ArpPghjagHlFIIrZP043O8vi0mMNcbIr7Yj/V4PVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6vo6ahC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6vo6ahC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7E7C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737971753;
	bh=L32kruuMRYwnfxZCXHSRB5ZBfZFZ+iy6+e6d4oFkBQ4=;
	h=To:Subject:From:Date:From;
	b=N6vo6ahChacjHTqghYoSzXc6Kh1S6eCczABqDd/SncAIHsrVfTQPgAXZuvVxfxik/
	 WxrnHzR4Ehp+VRpe5PGkAB9R665XR+1L+VzE/6IMXySIp24315YripVOjBmpBVUA3F
	 pMGb5+pkUbJn7k4HcdZugKmxWJGVPJsumbHuI9zW3QM4ek6kUkDYuUvKBk01VRdlz/
	 q1pSi07kqBY2KaDnj4fB+HbDAE+PhbnzUBieuo3Pn3uWUgcTGXih1BWoAhzMYKveJ3
	 S8BdBLuhqXVFcpuNwPgsBxQRCZJX8FwUoUKdqa0si0Hq2i2klluGM/6C8/Ll67Kt+v
	 gT6MojDc4uIYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90374C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797175358.25944.10401208845239597112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c5e0f7fd7078d96fa7331bc3ef9fd87357df592718630d33d1adc0eef15bd8
Date: Mon, 27 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737971753
