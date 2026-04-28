Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2775D20D4FC
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777356454; cv=none; b=GS7qHLAVvM6UiCRxN3ZshK69BS85onLa/Lny7jED6neXtSsDIPCbphXIoH+rdOooLtfzdS1FmukqjNJJ8wi6Frjwlj2d56N9Go6nwhrNkYvHjAzrrJHlNeaReA0aPI8OhgSQL7ZhPSteQIUbboXCu3lLCRLAYyZChhpaVeaZmME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777356454; c=relaxed/simple;
	bh=qBKTbCipQ8Q7j7Eoe7FSCVeFeNWkIMIEw9Trbps50Bw=;
	h=To:Subject:From:Message-Id:Date; b=hbyK8WYeCE3wnpiPM8wXNBZHgdgj335cFEwKiqB+qFzvveS0LTZUEglQBee+nVerQkIbQSj6iNlfn7DWj7SIFpBnpyKexeU6AUb7jo7OGM8s2PGAZ78IyCY/qgxRRyC0t7yxizoPoZVcou1fgMRTqWMC5oARj7DTJpAxoosN4WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOCkfPDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOCkfPDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB730C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777356453;
	bh=qBKTbCipQ8Q7j7Eoe7FSCVeFeNWkIMIEw9Trbps50Bw=;
	h=To:Subject:From:Date:From;
	b=rOCkfPDgsUiJzORk/qKthQZsgO0XYcBYXh2J+fnzu6OK86Za2KMg+TuRE2v/MjoF0
	 1CCEqZQHv9Z6W0VOyDAZw9tfcka/lSFirCoL/4Q+5b+xSlA05LuAFwIz5D4Twl0Dlf
	 pN1cbBo+wr68IZitaUG5Bh/8xnfcf8YtxcNOzNTQeaIUzKHFzjQdgs3Zl96ToCr/0I
	 ChkcWBnsNYBr8RiolPuLG1HGBmBqrJBnyAgnFBTq2rnRrE7mypqILVIZmq/jOKZYS+
	 CCTxg49AKtKHwLbX5l9urIRRkGO/G1wIZj/VfCQvYF0rVPzu23ZUk6YQKSSxHI8JFH
	 WB9Kp96Ms4Xug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C94FF886F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735645368.4796.15589161434949966925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddc370d26dd8047493c7d37484c096ee1259fdabbc805c4631be583d7923a13
Date: Tue, 28 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777356453
