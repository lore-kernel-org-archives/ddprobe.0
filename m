Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EC4309DB1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783997314; cv=none; b=RgM3x9ES3nAfpv8VT78ghuZ/drrDq0YtMRNaZsmuGETJ8nGuQiCU+PCGcCzy4jAnABSNe6ZGqinbmBDuzqfoC1kDc1YOikLqJ6QcQ996URvw9k41RxzZPiznuF2FhEyju/RTvHCXHj+b8ujUI6vKzoqe+LpnQLZrS1YkAYsf3bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783997314; c=relaxed/simple;
	bh=e5mLOHZ+NhwDIn8spUsONhg1gft72MI9SlccJZI3Y/0=;
	h=To:Subject:From:Message-Id:Date; b=li7fzS0b2gfOSZWUxPHSbjr7zoCunPaCaJtjNcOR0btqsRa1mlBudLlDVkXvtbd5XU6htfxRP5N5dD+gQrAwT7Yl9HKqh6/SbkbApKS6+oYN4B2Q+iGO3kIHGxlw5Y4pYPg1IKbbDtrrzZDw3DAMwyE8j+JncYjty5RFKUjprhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffpbnpdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffpbnpdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C51C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783997313;
	bh=e5mLOHZ+NhwDIn8spUsONhg1gft72MI9SlccJZI3Y/0=;
	h=To:Subject:From:Date:From;
	b=ffpbnpdohDVBcFgHasPKoAWwGg6YB8FcIi7QO0q01/Ox2CiW4SM3ieVbQWiGjCPE0
	 rTMgZyYJi2RhTG8J0aei5IYoXR2EQPAA4cDp/rimm/N/R1i9P8V9X1d3vy5LqWxKlH
	 bq36EdoUuB3onPSRY7ormh1nakLsrKT21bez+INSF9BeJMz+iJ7WVrvEPVzMI8tdsO
	 ZnTQzq51u0Gw+LD78rkbWK/s9duLQgrrdVI2n8phHFXu9HzqfIPhs5qrOAOFnLD1AF
	 5Vca0bbr1wO0FB7PX5c2AhFDil+Gd0LEWXGNaEjPj3IZtjFpq+pwj9iJm0d0/ne0b+
	 +gNpmjdwnZPgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8537C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399731368.27600.15456185026256046280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1a2794bec582bffff30fc9e3a9e4dbb7a989e71262ee4dcf9fdb26e3302e56
Date: Tue, 14 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783997313
