Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E006244685
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780934674; cv=none; b=Yg2lOTyZmIDEqQX2O8oHJqJ4nVxxgHjaPORR0UtoE9GSv5fB//1X9v2750anXiWSWkG2RUkXghy9m7G2HhpmJTjGmBk/SaLweFOh9utVWx/L8Y8oXlRDwxOjhZmYl9msG5Hwj+XHb9BT0/WxMcqlX05omKwjr43VjNPch5gssFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780934674; c=relaxed/simple;
	bh=P02+XZ9d7u1rr6im2n9Sp/UrDvs9zp4zc5pAtNVqQTs=;
	h=To:Subject:From:Message-Id:Date; b=pXwmU5Jt1PT91V6xxnWrkBKOJlz+c1X6NFtylq3zinoEzv3hsgBCcRwYVbFRYEGHEKj4WS8l3wl1Hy4xJoJRU8/HY1rV+7VEwSFIQppqlGGV7hlAUwSpL4vkjAmDhS94VgssQ9k4stojOshsX5e8aQ47kWHWTXR4u9voWRGq3rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uN0Q2q6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uN0Q2q6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF121C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780934673;
	bh=P02+XZ9d7u1rr6im2n9Sp/UrDvs9zp4zc5pAtNVqQTs=;
	h=To:Subject:From:Date:From;
	b=uN0Q2q6bGX7rxHuqMK7/EbDbX5A2KaTVhGj3IKxcOA8wMk/FdTu33wf+v9QUUWUr+
	 RHI9acX87rYAieg6H5pRKziEE6JLrMPtj5Zk5a2hvbIeDmnyhvRrakwKv7JXAxfwtP
	 aMjKfYyi+cn/oiZsx3HltpOEoYZ8SnmDrXGN0CafSAad27HAbwbEQK2R+cN0Y5clp6
	 6Z5hM1IheYnDz2dWIT8dldsvbpUuU+pSSCx83h8L5pJ+1KEWipW9x9LRSquYMR9O/v
	 5N/b7Rl+nZAnd4M+BriDhw95WbJzVVeckIQOLZZw9ysSfY1naxwqh8nkWKDGeASr97
	 tFebW+Tn686rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A10CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093467376.5038.5115022464356788484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e61d533a03144d7a5b1ea082b0f97816a347f47921d990eb9a6ad1471bb47f
Date: Mon, 08 Jun 2026 16:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780934673
