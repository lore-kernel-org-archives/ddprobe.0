Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA741AF4E6
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724255154; cv=none; b=PZuFbYYk9UzjJGx8CgIXgs4abP6IlDvrKdBbBSM/ovlhIcSONZsAGVSel0bt7nZXFDR+8LoFkbaMmwgbHK/GYNqj6SvmuJ65U0k79pORxQrDseVB+9aUFFVIqXvr6ESRm9+HxFQktIiqd1HWE693DF6q7k22UD7RcDqDH4ZkGWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724255154; c=relaxed/simple;
	bh=+mdm52LkYpm+V2o1/p0uQDkjdExs4iysrpo6DoQTLLI=;
	h=To:Subject:From:Message-Id:Date; b=tTFcIl7EdPzz//kb4uuvyCI7C4gGc9H0HNGR/quQ6aQw9TsDP/dAaLdRICATYJf0dtOAPzsv5JaMAo01128Dj/WQxW2swaZe5RWs8Na+sK+MbouwYRjqcNC8mRqEelrCWAoDjSu2JsxhvNBobeEbRTcxj7vutRsabmCMQE6R2MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byJOWEC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byJOWEC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B093FC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724255153;
	bh=+mdm52LkYpm+V2o1/p0uQDkjdExs4iysrpo6DoQTLLI=;
	h=To:Subject:From:Date:From;
	b=byJOWEC8NV6qG16PV5yX/JHoGmUMqsNNJRs/9WXhZkWY89rJ8l68uO1+IzXG6PQBI
	 8GER1I6gXAthbOBpk6mS182bqk7qWAAk5tUzxrgsNToTsZ9kmhtKmOs4Sh3iY2X1YH
	 qFxaCkMbUxSZOtNS0NnAMUiuXFB1tgqKCPXGlMdFVgXkgApNnbDqIalAqlHRfmu1dm
	 51Eue90q1lTWJorGYbmnVKlhnyidpGHG4rHtmK58ClD8ZOR+H+kiF4R31hwFGoylTS
	 VL5R19seWoArygWc88PXpz/RmEakG9BF8eBVSCXBUjIwA4uU2CvM6tlafj4z/hHj5R
	 l5iMfhS1V1DEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9499FC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172425515359.18792.7087026541912996194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f434d9c4475da6e38150f3ffe2fdcdc6472af0cb4d0ac89056bc0186a9a9bd6a
Date: Wed, 21 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724255153
