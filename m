Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA811397
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787966434; cv=none; b=N5ojvdND5hqZT+dOK8odOjd5piRCRcEJ9ZTNOuM5R+T/NdoEQF1IvuERlXZ40V9sVFAs1bIXD9VM2/NEhI3BcJOTcjjpyZwg4CEZuTxjgIjk8WtoASJwTxTDndyUHBpejVe+JNaBZfUWNQ0Fgb3gKjth1VCWvR0ylNLG03c3iDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787966434; c=relaxed/simple;
	bh=bsWKv+jy2TxW4Hh1uXve/KAx2JNYya6xYMF0JBdsJOs=;
	h=To:Subject:From:Message-Id:Date; b=tOYpTQvXgGsj03Yj6ufHXogUj87sWSQ+GlGAEo7W5bbuYvJzpFDlnTMS+onPsGsgldeUOI4e2cUWWh7K7W/Xl2EJIaNpstyY4yLeCItEzYY//UdJK/fpARsDcyZPaNeiupAq192zoWJ3CShiCLnoC8NcyCT+bnyckZCAYeZrJMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKsV1kl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKsV1kl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF913C19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787966433;
	bh=bsWKv+jy2TxW4Hh1uXve/KAx2JNYya6xYMF0JBdsJOs=;
	h=To:Subject:From:Date:From;
	b=sKsV1kl8s36VpYYemgGUWpK2YDgUDPCUCWigrm7JLjj+e0KxRDuTiro26NzrdOQzj
	 zTdhPzVGlhtyzpQCKVZCnGYeeE+5XYuGybpfTw9fOS3cCHBU4dFa3+Y3DgQfcs3DYm
	 zMbSmkxZ7LOgWskc0U/zkfE3GR1Yb0u2TRVTNEl+o3r8d2300DaEhvrgZ/8B3yOG/2
	 I5ugIguHQM7Ixvpz2vXdVYrWFvU1aM9NUGH/qaeQKgXK/wIEXvGPi1eFuhzXgiDhSu
	 6ZHX9wlO/EAJKGYIbZheq/kqgKxQuyNl9KfeU9W1uN8w5nIKyz4bAl28VgRFa1ydLD
	 V97Un3IB04UWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA387C61DB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796643368.21869.6309449246822858664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8a6dab4052a9cfafad5251ad1814605795d9cfeac8ef138ea4a50c9f3e209c
Date: Sat, 29 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787966433
