Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310801DA0E0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738164354; cv=none; b=nKVGs0j+oJ34137g3viYuaHp6xw52Sg2w8GJGRyxs+7Y2Kpk+qDk2mOuH8xn4Xi4oREzQ2x6NKbmYD1vFiQ+IZ4bRi38c6zNXf9noS2zzPVh/u76rT2dUZwvGKe0d/PvmF/ElsPcIbrotBKRHCOEcLLy+5OeZ7ms//IDL3x1Z7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738164354; c=relaxed/simple;
	bh=AZ9j/ThzLET0lnUIk/yzFOq1kSr7wX1u9+E7t5Lx4l8=;
	h=To:Subject:From:Message-Id:Date; b=I0cc96OezzIwiWdJf6NevSQUoqVeGjdydX+LYGtLIVEqVdpdZCuCp7e1mbETGfDGUqmgOxCBoYjvg+LVtCAjQjKbwCjiDpzrMpDtl/oS87PW6K17k+FZ7sikbutWOhq+tP1OkfeyhxwlgtRQ29ON4AOFh8Eox++C2I1XkA1AhCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hP6aK6zK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hP6aK6zK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72D1C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738164353;
	bh=AZ9j/ThzLET0lnUIk/yzFOq1kSr7wX1u9+E7t5Lx4l8=;
	h=To:Subject:From:Date:From;
	b=hP6aK6zKL0GINDdbHvwnG977C32Y2fkxaImj6GKUznK14pcI68I214J1q1Uns/jkY
	 +XL751za7UQcGgWfMSPMe3BNo60CLVN0w10PW5LE2soaqhp9TgNqjasjvociPzRbFz
	 uH8BofxRseBbDYSj4f7NUMIKHnqvwUiunKva80wOpnCyBN3heksf7T+16TdHpiRvwb
	 xHOSoIyZ70WZDPcnLKoX0PW7pLL+KjlIGzleaOk5EUhl43+Kl8amRzpk77/2nztleL
	 uBuFzaTOOJIFjpcWXxWocBZSqt4AyuQM+yWhWNar/mzLlty4m++mR0eoXF9zYVpGfx
	 2JvDx7FjkAG4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92444C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173816435359.20486.3887364725972344251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87d9f655863c103b4f261b88760148e1915405cdeb7d6aa1154418472af86ef
Date: Wed, 29 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738164353
