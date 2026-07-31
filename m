Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEC52AD2C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785458434; cv=none; b=u53nvY64rUDBHpEbbEQGJu6hFzZsSS+ICh4m92cfKkMtzs6bgIXyB4iH9Me9C6LjioTJO3IhkXraUkJtAR30F8qFrKDEB4+HGMZFq9xrW+lBH5AIl/qROXrSvTxAm/+bl1Evm35vCLmr4VMG5n6Vc1V2Dr7enwBbBa0h2tjC1pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785458434; c=relaxed/simple;
	bh=JRwsZ7YKPsArKqubDvmwHClOAGkCASMWGGzEHK3QGHE=;
	h=To:Subject:From:Message-Id:Date; b=UTvRmDQbJY0ORbePh6AZAz+ATEqOuTSKtDJ4cPij5FSjoUdSylHlzy5OZaFc2cClyjCy63yFU6JzMEpO1+GxRztgc5w4akl7DievQVnhX9wKUEpFCYMGVmWT7rYtLTfBZS8+QSx2k7w6P7p8Fuvu3KwB84maWhpKAXk7xb57GQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPjX0hGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPjX0hGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE27EC19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785458433;
	bh=JRwsZ7YKPsArKqubDvmwHClOAGkCASMWGGzEHK3QGHE=;
	h=To:Subject:From:Date:From;
	b=fPjX0hGwvSlHy9rqHqvopBAasxtGLKiGtLET2QotPxf893vY5HGZvtdn96kTuNvRI
	 71AzWm+ivtp4TRs6cjnnbLUkegNEBUCdE0x6MvKzBuDeBwMEOHmLDhWq4Jr1CURQz8
	 a+TQbMRZPEU8e5I+TfqYIN94zpVR+CupTK1v2zcNs52Hm1AB/c9/yJmrbTdDKZI2OK
	 eFjc5SglmGA/XYwiAo0Cbh7Esyj3N7fi0ZDLAYJZFi4rdTRDhpE+3O1MlskvYpU20+
	 t073NpU8twJcDg3j9fxPqxbNGwFHZgX4QPSd97rjyDLn5MNv2yinBQcCKlS26YLdX0
	 6Ie0vyHFgZ5iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7A1C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545843368.10512.1294736747347638108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745520257db375fb0d5625be139cb4e85d1ba01d9f65dd3659321ead91a38b1d
Date: Fri, 31 Jul 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785458433
