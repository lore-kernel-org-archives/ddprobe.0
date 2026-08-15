Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E9D6768EA
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786804234; cv=none; b=qf1PgSyDI9lVTULT3o+woyknPemOU385NIAJNNGwugjK8u1/Vz2Yb4GTn9G5Ek2rJJSgVdOfyusnhoQDVQEuavepGQRtnYwWi582/WNwLU5Bwgk2UQ0WpX6IjO1GYMxkBJ/NxcveKD2ELbs8HK+81+MzZdFuLmKDxF1/QxqsJ0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786804234; c=relaxed/simple;
	bh=jmk7fkAwRbMhFjaG6qffNhDWTjcR7riFE6XKFOwkcjw=;
	h=To:Subject:From:Message-Id:Date; b=lDi54gKZe30/WXJI9ZSNaT463JkrApqNvZgcztsHgyf8w0OIHqmCRuVRTDaQ2lhszJzlUfmypFa/xv+SDBWRjvzqfRYKpUth1MrtT/gz0NOdV8eLR6ZRxRksRxg4PkBRnlTji7G7qfBbVBNWbVwrDQGC68bI1W7dAfiOMrfYx6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5Oa0bcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5Oa0bcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D960BC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786804233;
	bh=jmk7fkAwRbMhFjaG6qffNhDWTjcR7riFE6XKFOwkcjw=;
	h=To:Subject:From:Date:From;
	b=U5Oa0bcZ9no3leqyoLCPSQI5pWlfjuYdH9rAqgFJGqmLrVb5Bx4Qd1fjJtFt4AswC
	 c1CTLi221huxPL3ZaDck3Jp59cy2CfhU2vSG/Ro1hZdEyOfNQQdb/OMbvd94ioQj2t
	 EP5cKh9W/9KNPg9fjXzU6SLg/ciHIoU46WoaD0HdD8tf25EcxIJzBCn7BYb7+AuxPg
	 OtOJx/6LGSfnNOaQlEFKY/R2bibJj6ys2Y3TVV4oW5tf2t24u6HfmfCJS8loRR5jg4
	 a5sfmRArb0ZJMInQ5gNwjUTrqe2hjATmYDoWqwEgaOUS+X8WQTS0e5fUbh2kyQsbDi
	 i6dlEXOpgcL8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32F4C5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680423370.4917.5391618150951467876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fede550dc9c341a063ccfd0cbe6e0b11ef220c637b0b9ad9c9451bdc12df4d4
Date: Sat, 15 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786804233
