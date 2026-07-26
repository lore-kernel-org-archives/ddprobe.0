Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2227741C6A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785035434; cv=none; b=VAKRWsawZWm64WmfZvrOvOXKE36YCx/PSompmLQPY4kJDb1PK0z0uNqOgTc8kqh+BH7dGkt6+8cXXITu+vGXpXVsqGkZZhB0TxkkEgh8ImTkO+kEgd7u4AohE88QTbY1ytMbWB2D2Ps/5qT7V2HMHCiJKR5wHuBJH8IaZAAzd+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785035434; c=relaxed/simple;
	bh=OXyfj3I0JHXnXvqPlNRNf0ucFVEl9pD92MbyuA5Gx5s=;
	h=To:Subject:From:Message-Id:Date; b=DPHIEfKNN9oqzMFZJFG8j1O/ijV0UtwHqCDP9Pl4uLP6HO1xd5m7XojQehE5Zqid+zKyy7276AN8ViR93QyFoZ367eVuchm7hiozYw7VfT1+NNk8tDRpQbL9PJ2GwxuBjVcH8MsQjdv4b/A/sedwUiycRTQdpxG9IGs7Hzlj1oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2mHSB1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2mHSB1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF88BC2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785035433;
	bh=OXyfj3I0JHXnXvqPlNRNf0ucFVEl9pD92MbyuA5Gx5s=;
	h=To:Subject:From:Date:From;
	b=g2mHSB1HKFh3VZS4+TFuJpSfC/e0y9RimEFqORVWU9mWt7lOl16p7g3x2YXCJcXHh
	 eo/t6X4Q06QEetL+E4yAt6No0AgEAzMVTP+0qEOPMh5dWfoWRhxvhvI9P+oNJej809
	 ebUcv1DAvxTGJvKdA/m9asjeacvmWDBSosWeqe2KquYoKtwh9xdKVLk8ufXaEGDo2u
	 AEx1NWn9h8giFZRzy+c5ArA9i3ZCIF1hPbLNDfzNxMLixs3kl9etdOMIrVa//CLxrE
	 1DAU++WPsqZ2jXCvjWe/QXDvuOpYR4QIRi1HjKiB1vOPU60e5jTrEHF3Ai2q0KZ07G
	 eKteR56IeQCPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE034C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503543368.21507.15680934616224065735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41fb1ec3395a703d0b3701e170d8a1c3c40ad33b54d17a0b78718aff7914e15d
Date: Sun, 26 Jul 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785035433
