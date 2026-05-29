Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1372D949F
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780023754; cv=none; b=jeHqEgjE23+p8ZwEQTORvg+OZkx343WLBI3N8Nvl/5a4R1OhOP0ELIkQh65bStSUgE/7NGSfJ/M5EYUnSBKToELqpssPDf9sQebEx7ulig7BdIKMrpcqL2d8HyJcoDXaSK+cDk/KU7mD3/i57nWtu8bZCT9VFLxb6OFcbS9sqn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780023754; c=relaxed/simple;
	bh=Jcibj2LJ9Nt8cdeuzImMetjlJ9SEg16QTxrxjkRqtmo=;
	h=To:Subject:From:Message-Id:Date; b=XO/QezhnSsKSy4YILGzM1e4adeb3lmJi7+h5acAncVyDEZviRYcr8NlDNCQtZNx4oYX5GvDR5XjkOr9ImqkE3A94aQlhRkCgw39gAUvuFERMWNgNXlw6mvVley5Dut+zNwNCbU9IDNjZCeZynfSxN41roiTnUF9DFQh3KGzbwzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4SauGpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4SauGpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FB6C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780023753;
	bh=Jcibj2LJ9Nt8cdeuzImMetjlJ9SEg16QTxrxjkRqtmo=;
	h=To:Subject:From:Date:From;
	b=h4SauGpMSpzvgYPtz/+LrzUPnmA4IRtOBl1RQoDzi1jSphvj2rQtRtsV1X2yVf6ZX
	 tVbRtThnuHO3Sa7R/zmcWtz9w/1fwfY2bNnlq5smJexdBhTd2R/DsskcTKJW2GD0jR
	 bV0TpkE7cWhga1bNWzgm4ZaesC2IYyHEh82XjStnkDgC7Pw15Ix9l9QyDWZqWbKZJj
	 ixRVFsg/N10s/w5xZ5a2Uia2VcPIuQIdavSHapC5mw6CI3EGTxI4WwIsk3eKHxsBdg
	 9wKvMWC1eNd+rfJ7KH6BHYfEP5X80CECTRzFV/BpH56swITWVcQqc17zSDrhrch5ci
	 tTrIV2Ui5L9BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE6FCD5BD1
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002375369.14293.8808214894250630346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd592a5cb6e0c1be4ab02abf91c60e36318ff599cfa2e78e691fefa1b84bdea5
Date: Fri, 29 May 2026 03:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780023753
