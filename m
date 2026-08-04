Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C52122FDE6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785876634; cv=none; b=Em9jB0zcHVHiBOu98vDXE0ANL6aah2mnRZrWYAY9KvnqavV9i6d3BIEAWvNk4K97jr1shhEpq+v/2ERovE2syJMNL3C/te+d9jniX6b4bC9+ckQh6u+6iJfQq8O2Tzk0+0ltWwVgezaqQzisqTVUNz6hLAR9fo1NZZtnlJsAsYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785876634; c=relaxed/simple;
	bh=BjsCd+DgMJ87SGYwIbRKLNbdotU2SA7kceKcgpKkbPI=;
	h=To:Subject:From:Message-Id:Date; b=WRKgP/rpcacT0duyms+VXpOwi5T+nf9gQzqJCGOyGzpPD7Iu3s4Fsnapcpcsvv3rej2R6TSETHCNVL6dic9fqndkSnR43g8j5PRBXiDHy0g6QfJDiKaw4UABXQ7xquDG/NbGPdNBn9zdqpRmVbZ/2LS7PnTJx/yRyNfTv1CC9Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrnPZh1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrnPZh1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E06A8C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785876633;
	bh=BjsCd+DgMJ87SGYwIbRKLNbdotU2SA7kceKcgpKkbPI=;
	h=To:Subject:From:Date:From;
	b=NrnPZh1krPen6ZF2KxGy8uOq5Ie8NzUKCdVLBNlrggQqBJHvhzOhKzOCdGzO8lFV4
	 1qMi0tLlFw8YU1QTJHELl3qryvbrylRU+DT8l470RxnW3a1qzZlDn2ZsfbQgOM3BqF
	 3vaaM/zsA0o4OsqmWQo3fDT2DBtqBYZSKdNSZDcnouyM75UekmSiMvea58TCx6Pq+F
	 QY7jpGVHU+C/eyUnG3VzgTMtH08XVvGnbazqqXvNAmJEAUuU0v8kD1kYoS0ItADK3g
	 roSznnDI8H93Xn8/B7z2zvM01IJ6Xr75PYh+yMZft12AfuNd3E1yByYLF6hHHpZYu7
	 xqLT7I2U14Npg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB820C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587663373.24113.6466165961153730156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f86774df64da68905191c3ca7dec64548f4731c4a896f62533bce16f64d8964
Date: Tue, 04 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785876633
