Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B7542A96
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745467196; cv=none; b=HxeFtzwOaFf4Bvrrnqin6oMT7qFiYeyTWA3o0K8tBRmP/udx+jogm5s9Gnq5ENd5R01STXqDOnxTrHQFMNO7y1tIxbv+z5rtJ2XZVgmYICcIO3RsVWEx05aviGgI2VS8pgbi2lyOnuXY4YWWj+K34f4p1uL7ygUqOOO+bqagpvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745467196; c=relaxed/simple;
	bh=xcwCMMJ8F63zd6tnwBGfDSpF08/+O8rvwAG+8kv5ydQ=;
	h=To:Subject:From:Message-Id:Date; b=eortTFaRLm6QxVtbOb0sDP5qCSPINwkpdl9I3oPe9UXjeWQoFYLc779ot7x5xAHmu19I17HiHjtP1V1UXio/EDggYpdrz7hCW95TVePMlKMGJ24zHyAWJFCZbjzopU2k3yyurF6xhXE/qeVQd+07eq6TXIVD9aVxrI//e9WAhiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHYcNyv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHYcNyv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F79C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745467193;
	bh=xcwCMMJ8F63zd6tnwBGfDSpF08/+O8rvwAG+8kv5ydQ=;
	h=To:Subject:From:Date:From;
	b=qHYcNyv6wR8KS6EgS3au69DIgAaYrbrauvQ9U0OasoPeTm03pTKki05nvwpkclmqU
	 Ocyh/AYnOv+4P873pisxGrSBXCNM+XAH6a1ffYilwAcvvKdqguChkfFsjnpm9Ep6hB
	 23JQX9AYpJowSCCyAa1jKv2qRFRUSUD1WE2RN+Ece0rbaU+wK5GYyWBedmuK+6ecF1
	 QgMdur7yFwfFhHcb1DDVKTvd0T4JC7j9rhx8p+MoeS4ONKnQk68WIUvWHlYW8fXwRc
	 xSrlfAl3/QcmPminilgH8gpsBjR/5qKFQvA5thSF7I1OncEnJhexN1HMvv93t+BZxf
	 xDrM6S5jaWOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D15C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174546719357.23265.10128091558277625110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2d9d2eb94677caaebf8dcc75dc5f824be9f5c7906cbcb90e7dcc594a47ec71
Date: Thu, 24 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745467193
