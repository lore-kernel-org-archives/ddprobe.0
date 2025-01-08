Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C96D1ACEDC
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736369754; cv=none; b=QUEtZiHnt9t2MDFiypuaxUrjy4sD3J0lc26oMp/CgkcJrgQj+9hSK6KUpqnmaY5Y4ZcAXGDtaSIugaT65QQRR2hkp5Jh7TyDn4dC8QSk8EZV5MS5MbJvuRbwBM1YLhUpfgb7F0oFW9g1c34kjfgQEe0yMebG0PLAa+x0dbWO4Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736369754; c=relaxed/simple;
	bh=c+O2qsHhEMhGceSncFLuGD2wTI/DnZWJ1vjWFBqDYME=;
	h=To:Subject:From:Message-Id:Date; b=sX7Zoblx0BEQgA/b3BgrAKJc/DgV6vPbquGaG2O/oa3PRkNmdXze/DhdTzmFrikTbjReVMUg3stFoW9U/axGaMEl2jPx0ZG+RZJoDq99DgyYyXlctxwQj9CXDdGlf3r+J5n4NAxgnkmiCXwEcWtuCDR9gIXdITG6FWdH8o7jIKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfdgRSjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfdgRSjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6356C4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736369753;
	bh=c+O2qsHhEMhGceSncFLuGD2wTI/DnZWJ1vjWFBqDYME=;
	h=To:Subject:From:Date:From;
	b=TfdgRSjpo0Fl5cnryTuXcmKo3Ieua1RSGWBNJzhUVKsrpysqscT09h9U9aKjfk2Js
	 BzUYlaZTrHGYvCx9huJsB1YLqYoGhI5Xc/U+zT59f4RvDsRtDBGvrWBbnnd2q3G/D6
	 xKks960tiu7ZNfcxOym3ZCCXnNN9pDaUTJqMBzY5oZ/4w+o+YYrO7imwCW3NFnCO2D
	 a8jgCGy3EwfBoSlYu+H7gZGt9wzsNeKM60b4Db4MRcrg64ExAHyl+fIhQEioHdktp5
	 3gE8O8QGG+jiOzuAQ0fCUNn1R+xABJyl7l9XAOcOnUdS3gnGiwtynZy448ctk2slkS
	 xk6Tt+/ZUvB3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C4E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636975360.21998.15077378903468389477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc6cb67d5e1a08390b64cd4b8b49722bfb671e55efd6e60cba947e140ee68ea
Date: Wed, 08 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736369753
