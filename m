Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6832138B7A5
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782879514; cv=none; b=meZ/wNzEzgpYCpbGjLuGonnUJgtK49kp2Tb1pe2NgODOeoa+LDs/ak4QYxoZiDMmQ+t3hiTblhc0ebWdixixdCbaRtQFRZrmEU4jDt241p6DGmoMkOQM0kbdG8URC3gMFQh4/6Su8Uwtp/63QTYF0aoqWxTATtUrGPIHXLQ+rqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782879514; c=relaxed/simple;
	bh=6mxlWlKj1daNrviQwi0IXdzY86ewKSd3OL3R/1bl8sc=;
	h=To:Subject:From:Message-Id:Date; b=cz0V775GKw3A3yAqhCls0bWfmtvw//Lo6BHMo6XaRYxoZMjMdAErqvc8086zvmXvwN6VNZt2NJHZa4GNO6JdwLCxxJOpinFyeYjfoRFtHyWxgTDMupp6RNReIAfCCi/d0vXa+js/EYg+iQMv2a/AC8kIPvPk8nMZ1qvvQDipef0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkXaj6Vn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkXaj6Vn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B46C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782879513;
	bh=6mxlWlKj1daNrviQwi0IXdzY86ewKSd3OL3R/1bl8sc=;
	h=To:Subject:From:Date:From;
	b=FkXaj6VnH2Fvx5zEhoJG2i2guZd8W8z1BrPTbFusSCPvtx0KKlWtHnJGQirWGQzPI
	 3Q5euZOZ6yFw5wLKdZWWCBIFgrHUV/BaiJMGqKflYh0zR3QZGXW54gXuPSVXAtE3wK
	 uku1Cya4we9C3i/X9J46kQKDlpp/6p4x3dZtUkDHq8yqK8kX9DuXc4tVdoDkWRQYxU
	 KhGFJdu7a4MxJ5M36H+xupblbZ1iJvEbzOOK4vvNp8G3HTwVOpXBK92zTfQq2o3QZ3
	 uD+V/FENFRjrH4/0pEoFpvmjo6uK/Iv3kLZYjpddnjVhi9iih65jobtTMrxsty4yBr
	 3m4kru178JnTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8836C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287951368.14845.12608973063110087980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778c0157736b5a27ad9cdd6563817998e4dfc3095afeac5eceeb875a6833b050
Date: Wed, 01 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782879513
