Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E0C1C84C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751048994; cv=none; b=gO1vyoKH8m+7MelB6kiQKfWcDVF65O2/NCg/V8w8vGIuIDUf+buJIHboezp9jloETsFUZoZ4GRz6oinPLJAVLZuz3PGswudXsNcIqb+TfgaqRd6l4gXKt8F4PdAEjwe+69DjwyWDctKx1IUJtQ/gtnAz1lMYZ+jF2E39nKdsJ6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751048994; c=relaxed/simple;
	bh=M1Y4qgd9jLNBuWWLOf/iQpt4W9ys/JF0IrGvxn36Tu8=;
	h=To:Subject:From:Message-Id:Date; b=N5sD8RY3w5AAxDBLTzGOkHxKeXLspufh/6RbO6CnKcz+f93hctDMI4+FsayrkQ4ZU3cIJ3+0xue+cTFt2jqiP5Ub/aUEnGPExV9Jku6z0s67wNOu3YpTPyKym56gUUwsjwlD2ZFysjC3J+BwK/axJZzhOR+ZXmeNeMzPMNBIdZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1X+flw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1X+flw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6CFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751048993;
	bh=M1Y4qgd9jLNBuWWLOf/iQpt4W9ys/JF0IrGvxn36Tu8=;
	h=To:Subject:From:Date:From;
	b=j1X+flw1h/2VAsrlWwiJImK7Zyzr4hprZKTBnT8pEUpyNmeImEmkTkYwnSxlt3ZLO
	 tL5tVLbRFo4xOFBAl8ZZNPIN8Z03EcPl8OSHCen3wI4EdpESGZsxcY01HnMhfyNhZb
	 9KwMRFIIenGF3WB8TQ9n01TfijxG0GQ7+odWOwMUxe2WhBiknC4RAOiWfgf+G/qXMK
	 6qT9CUtLJuS3R28JrmB+IfFZ0kaz+I08mpcxJw19lm9RJkxcg+D/vGEumNFMivj98l
	 g21GfSpWvhWeJ+PWnOgqXjaJlveYMrM+/YAuSUGQC/xIcgsWcTV/y5cQRGMFVPX62G
	 y28VB4edSougQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997A0C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104899362.18361.14344279232703818379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a461fb6a1043db75dd8dc8930565541df865848281b1782aa03d73b8e7b6cab
Date: Fri, 27 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751048993
