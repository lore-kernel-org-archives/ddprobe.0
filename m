Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40933126BF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742852394; cv=none; b=cE8vC1+waEAA/rxZS+zWXRkWZmNj/+p+Q5xC73YBsr2+Hxpoqh5lwfnceP6FhLC8rI1yqP5F4jzgh30M/tz/4eM1+RLyL97MtWNDj6LAog+rebnkboaUTC2niFKssgj/mouXYind2SxrCL28JKVdCGKCEWhLnjMeee7NyIV9BZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742852394; c=relaxed/simple;
	bh=N6v6a6a/6mlU/WpQm8MZsn1kzSpA7MBrNk6dtB6+ukg=;
	h=To:Subject:From:Message-Id:Date; b=Tmq0L9HWeN9JLlBKtSfRkwzSldPFA8eHAmmdpXx1k9kQAMXUayH0MB1uGdv04SCw/wuVgUQ17zeL6kwyhjS3Flc8vAZEx8WUF40T0bMb8g7K3Xin/so/FpzJzlfXk3VhxN5qgbEViLvJsc7LFfOQRUVjR9BUyRaHDfw5wHQhTZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Am+IAMY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Am+IAMY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF12CC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742852393;
	bh=N6v6a6a/6mlU/WpQm8MZsn1kzSpA7MBrNk6dtB6+ukg=;
	h=To:Subject:From:Date:From;
	b=Am+IAMY8aynm0J2i5j38x7m22xW4PIBrAorTy1WxW5fse4DsxeeJcdKSeXFCuoTJE
	 YNAdyNWCvVfxMe2ay0g8tsN/etOJTqqcjSCFHHZX6krdezbUNSGXHWpcrrs4zYKW54
	 udKYnO57xRoU6tdIUeYTeFVU5CAHdKT+m+bK1qtNsj3Vrwf9MGnpCqbwQfmdiHCRh5
	 gsMUifpUfAcmz5LHnEHeAWsLXzneUpLKLFv1E9gGobcvFBolnKi85rv4t9gEYzOnaV
	 kV48fn67rhMTcSaAi+gQl3tPcOEBruDL599dwhnAAoaOnm7EOZCs6v+ADkA1DaI5jW
	 7wV/uLfXnPSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1C1C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285239363.2516.11711217344939965224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf38968bafc42b7daf77861f0f1aaa91159298f1c5923213e094d2554517dcb2
Date: Mon, 24 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742852393
