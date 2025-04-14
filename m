Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B46725B680
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744619995; cv=none; b=Zf6QCk+rVvEsXsT57awWoCk8x36DKp0oncVIS0QowqcSMjrm3BNXZK87F/zKzqgXxJKrfzwApWqZiABWcsVMDeSgOpWdJvzkY3/w7RCLQTePK/X2tnwgOTMU0MXjZww7lplziYbs91T9Nq2WPTNaJ2M/uG/TscnlC8TJEeGjW1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744619995; c=relaxed/simple;
	bh=vt/a+/OkhnaBy2VG8HAU8T6huWoY0kTaN4S3sanbaT8=;
	h=To:Subject:From:Message-Id:Date; b=EvI2Z/zkZAZga7NGz/0rf2AIpwCberj6TW7n+mzVXYdxZzE/PMR+wH8RAiz/V6agnmE0jgeIP+iS84rzabMbJjBkWyPSaXwgpisUa2CNdHnLezGDX8OxeNcYhJHibRlkygKsRpqHbEeOkrtv4PZ11WyRfcefg0pE7chG9jqN9YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMH2Xovk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMH2Xovk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA720C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744619993;
	bh=vt/a+/OkhnaBy2VG8HAU8T6huWoY0kTaN4S3sanbaT8=;
	h=To:Subject:From:Date:From;
	b=rMH2Xovk0+HgAg78blm8WApNXG6EX71xpSJ2C2wqcHDuIi+LsBOlmlJjneU0NLfrr
	 iw+ytWBiJHgLrNXPCqAgW/EUOQaKOg8/1staAbFJL5jS2OvzRPlXERjSnIBlv+mheU
	 8C+4MH0pIvhFcrz/+ZOUfhyGGDdRJLIo6oAuiswwMcIbKnKk6GTHTHJ0QiHVUY9Wd6
	 jNAhFc52wxJ18IijvEKhMs7GvAt2DJK8gmQjPGtf68WStPCKKYbpA5r6Sy7dKVi76S
	 QEwCJH32iLEuGa70NU4MJoRxQwrib2otE9qWKbsgAPUI9rbObIvyai5dP6r2ycBhX8
	 RHDNb8urN0T2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CDDC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461999362.26431.3978518464345438693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d13b01761be2b79b6439638a69ebbcdb5fee4a2dbf2b26ca9ae514ae8e2f498
Date: Mon, 14 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744619993
