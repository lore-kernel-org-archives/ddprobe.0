Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D11134CB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751420395; cv=none; b=KkaBYLofLoHlDSzjQD7Ctwc+CWHvFoAJlP1MZSpM0Qwc+f5Szg1qU+BW24nT6sMj6OqvY5h3XWeQhiHM4uMQ/AnhDjhQ256wRm6uQGLqXDkw1/O7ZVkbPVAHD4wlGbb4OxVKTk8Ui5e04w6B4iGBbEZX4mumsKOBOIYbXDHtDYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751420395; c=relaxed/simple;
	bh=BdvbVHoznDB2n2+7ymIS61C8x7cKKOvBJdjTDBIObEE=;
	h=To:Subject:From:Message-Id:Date; b=g0HbXGqoF4JF5iYKPLDzYF4pB0Y/Fryyste6+yUZdG8H8SfM2fn6FoZOmX339estvc1eqpxobL/CRQNX3gl9l21H9D9vAvJyFbrsgBJLrWLYtCVDXCYdIiZeblnnd1G+UduCMe5U7ved4P+nWCQ8eIebzONiTRpiH92Otmkv7Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tI4rJzXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tI4rJzXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F50AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751420393;
	bh=BdvbVHoznDB2n2+7ymIS61C8x7cKKOvBJdjTDBIObEE=;
	h=To:Subject:From:Date:From;
	b=tI4rJzXZjAbUrMdR2w7yZhFhXP+eDe8KGJX8ffW+m3rRTKisv55PC8wgG+CFwq5YD
	 cAjZ6cLXSQPI2x6TkTGWvmmLtj0jt4oI3cqBUWTUipgoOAzlmgiTxDoazSYEu8sCqV
	 dxM53EUQtWlhTMqhj1aNZmUidmD1ofnPR0EZr91vOjdkCL6cUhxgBnuHzuunFbUs7x
	 xcDZqB2CQaG3q8GtsmJq4qKAY5F/uga/gJCrjM5PUQJ8hrpnuVeDyrfoj5oTW4pJEx
	 F+3sQcefaT2QUqRj5XZ0OOKmYW97W16JjtUfHssZGQXENGTH7ZisnGGqcbe0OgQg8H
	 Uc7wx/rn1PlQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2A5C7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142039357.14072.639043455740730462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f81ba44142d85cedbf507e097955a69814b5fb2d5ead09a7f53ae7a1c4159c5
Date: Wed, 02 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751420393
