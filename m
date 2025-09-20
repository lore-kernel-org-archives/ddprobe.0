Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9631CFBA
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758327594; cv=none; b=XkqmMefLF0ClRdhU4KrQZ0oOjqh6R0WsNy6f2g1CnYNT+cKz9/T7TdLzg1ulI8zLgsGQix1udJFLNbNueHe4r7/4ioAdh7rAUgqtzYRCovxYIwDKh/CbHzkH+TrsP2pkzU4Pd0pI52ERyvbGy56KaAprhm8aKuywdiKjwHDu1rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758327594; c=relaxed/simple;
	bh=dbFHESWXmDkC47xcdCH1+V6lJ2OCIZLUqkvaLDOJDB0=;
	h=To:Subject:From:Message-Id:Date; b=dmFf3teJM0VqVTkKbjpIJtlN+Z6Mm7e8lvILI9LCYVkE7neMwJRiWWajM98UTFzSlvGGwNFWHtBIpjiK8QtXDkEMVyt+yA7jf3uRpxz+tWBi62bGmzMCNg+/jqpg2ff7B7Wvb4wtE1W/UOSS4OjQhQTncVPuEyYl3tgl1NhS8Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKJ8X73r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKJ8X73r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB7C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758327593;
	bh=dbFHESWXmDkC47xcdCH1+V6lJ2OCIZLUqkvaLDOJDB0=;
	h=To:Subject:From:Date:From;
	b=HKJ8X73rAaz49bdskITcM76HKeMTk1GcWeb5Z6uaojHCSRqQqar9Qq1JaSRNomB2X
	 ryutWISv7rA4fCalQwLE60jbZdn/cF3jwB6inmYjKeuOzkqGi80O3CASBY9QnrrYR4
	 WwOp2Sa+Sr7ZzgOAgB9AMI+fiup2ALbLZY3m98w5CskVan/JfTlkMNt8YupbpTRKGM
	 0x7QNowMzk/PZyj0G2oBZ9lliUnXLguz+HalIgQxq3AOpra3kmzNFBVjC6n3kz8VZ7
	 WWbh+/hjvtFO37weP6hrls7WraGg/3FO4x4xgIWL59a6xKoO0Yrk8Qg1Ytzmk+9U45
	 bfe0PFv2r7ucQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF9CAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832759358.28972.15225434645886462890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cbf0f0b1afe7131308d1f9027a8905aea3fc69c50566b82a7da7ba7e9283817
Date: Sat, 20 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758327593
