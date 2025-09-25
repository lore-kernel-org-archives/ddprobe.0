Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23302202976
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758824394; cv=none; b=R0kwtu6yn7h2YKH65T+00oghcef92jHkbca+QKKrBmkEmeEgvAXXvfpqm8Wr0C3b45zRjcHa6f0LsVUF5ZOfKDX2ZTROExpI4gB8d5SUeuAZYj3lnWUcxQmchc3v1XdwdDat6nqVCgeuaUzgEiRThakPOyiylFgNgk/ZhfFyUU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758824394; c=relaxed/simple;
	bh=Ui9X70q0oYZxgqWC/s4L9coLNHl4E9CfMnlLT6ASOVg=;
	h=To:Subject:From:Message-Id:Date; b=mZZwn7D1wfXEwHGkEOv8QQZmfcBE5t1fiVlPWfURVIr5c9PLtptM8h7ydYLm/GRkpyshlmbPDFO3dnGm260CGRW9xWbax4K6ua3M8mdIeR+qYXqlOyPaz2rm5qyGhFzTczFwcNGdxg4hEDbc4jgzv70QeXem3ZVTXOGHCZMDStY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwzzeDng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwzzeDng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E7DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758824393;
	bh=Ui9X70q0oYZxgqWC/s4L9coLNHl4E9CfMnlLT6ASOVg=;
	h=To:Subject:From:Date:From;
	b=RwzzeDngmeGPaMOKCsjT7Cwf+WF/9CAl3mQGfPXAzb9JIf1AbDLJgHCovJI7CZeQP
	 Oszo9JpwKPxDGYzSTj9i2qopWvnGnWnxftzpk8vbglvCOeVDm1d/1SAP2P+V7TXRCE
	 SOx5YmLoacyGfCwwUENvVVb3j31urFRxOGOHn2x9yizBAsOx3DOCIGPh+jnLcnb6Ch
	 hjqvrvstaOy8WcP7dboZCxI750f53IqzHdaJMLrRhGkNmKzAiktOgBoHT3joGopyBC
	 KOgPxX0HxGYJKQIU/hXnwY5mXsCHqcy+D1rmoOioRI8v8oSG5iwB17FvBluV+LEpD4
	 SySnTYH8qcLNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93009CAC5B9
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882439358.4910.7261881211970124355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc62c4e78b47c4d8d953748e4a9013a184f9836cab5e015815947bb9702cc9c
Date: Thu, 25 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758824393
