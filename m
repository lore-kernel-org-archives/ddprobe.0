Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202D318A6A1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736442954; cv=none; b=QnkYGczLHuLKp4as5SI33pMuS9EUTF32V8enzD7/ccRHCu+iQ1zC7aYlIBPNeDbs7CJBVwia+RzIdP+HfF2Hh7fxlWvnscoIDZ9C/cYK1zveuLtFSxojdAM25HzZt9DurA36NeHk0dt8YHBbu7B5LRC3WXcR5avwE+sjYbnCVGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736442954; c=relaxed/simple;
	bh=JT7vq0JGtt6UJblnNZbdQdnN+QWDA6RJNUBGRYaGTCA=;
	h=To:Subject:From:Message-Id:Date; b=ITSyR3i7RT5CErgU32BOxhdNf7eL/KGg+W+8KZike1qFWa1m7yKSV8V2b6oqYv6JTl38VsVeI6xFkjzKaOIzSzl6l+5gjWkHwYNVDMhefHk+mXsNClMy0i3FBnOndUVTig1M8rJb8S0xcVzIXwyIHngW84NOv49dzvSQLyxwX7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuZ7SQ7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuZ7SQ7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76F2C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736442953;
	bh=JT7vq0JGtt6UJblnNZbdQdnN+QWDA6RJNUBGRYaGTCA=;
	h=To:Subject:From:Date:From;
	b=KuZ7SQ7EGTUoxNaIaSV6355+ehJk1zniAEvava2d+uFhCZsfvkbGcfFE1HoenmAMF
	 PSCx/zPSFEcEvXMEqtrqpvFAaVfC2x/Dlc/Y5GvDw9agL4kezJvtnlI94AblvomCx4
	 EzTrEyZI213NB+MHyp8hMZ9MFCB6/BlQ8RthEfZc94+X1mN3uY21M6LUTNQXbOTui2
	 lYCvkVehfx9w2X44qB5nYShxR8HlmYhRoGvsamLf7CUdyKIWkhQd6INXB7aiUudzpm
	 5QY31tpt93B9Kwu/mvkg0ot6HHFXIA5XeKE8f6+MKmDZCP3ozGJ7SwRNKSOsyAVp8g
	 a0gjsdTocr88A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AD1E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644295359.9838.12617507554437165910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28914353590e860cf3bbae9193415642c6f957dbadba60a35ba99c5b7dcf878
Date: Thu, 09 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736442953
