Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8C72192F3
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745665794; cv=none; b=cyxi9mN/BafnCBbpZSg+SmwhV8FyJxDAAYLrUdApByvVrl9DRBzOQRZQ8ydlB3bIoJ9oUkzsnUhNPPUxwA2QPQxWI8oJzXlHAOcS5ds4PSA0Q7RlZOqobd9IeQ+6p0BvflxLcDOFq3A4hb8tW5gOpXKJTFCuJX6OWWwdoSd9a74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745665794; c=relaxed/simple;
	bh=687S18g2Mi8TaROxoP6Zb+yBb/CFMB2NruV7LJOwk6o=;
	h=To:Subject:From:Message-Id:Date; b=UvbusqDwadjzTfY2EQhDxQXnhEYc3X7KY4+a/PvmBbxyhmvc/qlBWbtB9sFiSNCuAq2QwO031EJJJ/7/o4uCGzCajs8ANa7Pgk9oD7JO2ft9aJkrsrJTE9Le7q+H49O0KgS50gpFmXBXUzhwDDsnG/9eY9JunLDMRgCWvXrmn5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crJcjK2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crJcjK2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32E9C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745665793;
	bh=687S18g2Mi8TaROxoP6Zb+yBb/CFMB2NruV7LJOwk6o=;
	h=To:Subject:From:Date:From;
	b=crJcjK2xnvD3biUlF+iodMitZNHFzKYQC/2pmFavolIw1z4EYK3WbkDfeZZf6NtXa
	 aKFzlzavzFLHsvd0yoeBjFh5Gbfrmr4toE4wiTLqJWILanE9EJAyFXSP1vt5Z+KxUX
	 u7me3y12xXIgVsHN2MHLDrmHL21+KrsNpE7ZwQy1qbnHLIhaF7c2aDV0NaYcqfdKEr
	 ge+Y2LPyDs3CbYQf842nIRuZUbsjco2j4aFZS0JxEdYTDqrchX1Wf2Y5GSNq1x+LJz
	 htbhnurh31JLiwomZFaowsCQtUdhoqEMfv8sdSNW4/S5u5fhYE4rhdZA6BOKJzVdU6
	 rghf8WGrxUYSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C7BC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566579357.31403.9568054686101717260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76991fa40be66a8b66fca969f94efa0719928f0c0c9df9f4e91f60a1f1198b2
Date: Sat, 26 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745665793
