Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8618313E07
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778998234; cv=none; b=T3pTWcaV1HT2UdVBz8ivncZ1EOiAv7yNWlNSVkldEUeb96qguVEc8oZFmRZOXGqnio/zdgGd0ZjNDgjlRp0ApGgoCay7G1oCmscfWAQ7OG4HKIUpHcpx5eIdkhvd1k8HOydjMPekyASMZpqhJXY35JE670KpmCdP98ebAiJMN/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778998234; c=relaxed/simple;
	bh=DeINrM+RO1J7quTo8gxx5Wyl2XGmqzVxl0n/6Bh9uvs=;
	h=To:Subject:From:Message-Id:Date; b=VT17pNOfaEwFin/6VitYjGvlR+RJ2vNXR7ZI35I2T2VTTga9aQ8EaHrbdcU9rJjv+pFq73TJLaEDhlwMkQiUpyCU8+dGT8fsNDk53ZdPlwbfsXRwJkNLTNp1DIWd7fQag6t/TSGIP1A4d3JvWedDFNBHCydIIB7nBgX05Ep7jYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHHW9KbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHHW9KbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17ADC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778998233;
	bh=DeINrM+RO1J7quTo8gxx5Wyl2XGmqzVxl0n/6Bh9uvs=;
	h=To:Subject:From:Date:From;
	b=oHHW9KbGnK5JHR7BQZeoiuvd481JhHA4ZlRyMBsmA92JLyne9vQWzmHrGIt69r0xd
	 etB2RMwJY2hGhn+E5vEh+Ervsj/6k5Gymk0qlaWhgOTtaNop7DBwA67T0U0Br28dNg
	 yLOWULnTL1lsV26pZ9MlRHuBh/kRRUDNPOVr4kpq8bhtd/k2CL4rij952KIBdO9G7O
	 rCgEL31o3bFuPpeZq6eLCwzpG4mG4veeSBDcf/QsjuiHnGk4UZi65kgnPc4bFkrKvh
	 B1ps4zZrLGmj9LT63++roRzXy00s9hXxdbp4onBuriMgA5d5AN50IAubgY+s80PzRh
	 CEnw6led7p0Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B145BCD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899823369.23498.12699650923089154634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b560e340b41013f27e92dfe4d628630766c608c13941c38ea99a786235554691
Date: Sun, 17 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778998233
