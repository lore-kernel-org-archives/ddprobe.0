Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7EF1DF261
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788999034; cv=none; b=D9AqOWO3mimBn9hzmd/7VF1qr+AZLcJgQPleKr0ngP5vhaoUVoKS7w3Xf8+iYsgSzGjA6EKprPVEA6qfIQyU8sWlBhFyjXmlQ/9LFNvICu/yixgzXQ3RFunitD6YNB8Gw0KADu6myr+nTKSfcGvRzZszyeQvN5kC0+KIXmUqyKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788999034; c=relaxed/simple;
	bh=7jf2MKIJvfBBJQq7xcGC9pAK+92dvPeJTGlq5F/rRdg=;
	h=To:Subject:From:Message-Id:Date; b=eW6TrA2J+ynxtoYviq2eiSVNPj18Ax3SJeVWa4+5FsAzLrf84qhH5lTXW4LcoTlq1DxNKMcTXCpmqvo+8plcbZLyFXmrNdg08bxvDzFk3TOIjFdsVl/5CPvkR0ooZtAKJ5lMK1PZuWPuNnL+LHw2B/AhJ7c4Ik5VcxePnRhotwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cj3We+hV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cj3We+hV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1839C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788999033;
	bh=7jf2MKIJvfBBJQq7xcGC9pAK+92dvPeJTGlq5F/rRdg=;
	h=To:Subject:From:Date:From;
	b=cj3We+hVZCm6WQCyKVbuyiO6zw1P8qwxRBp3I85jZkPO6M60Rq87UJ6uLqA5axrBx
	 bWVISeadjFrydpFbp0ptHyYT5w9O9gCNQSG/WyOdclEOp1kn8SEg9100MbA7KlvYBp
	 ihbqsYXA9knzCi0BxWKwROY0lnkcB3fNbONqCdhGOuzbSQHeYzPAHcZV60lRgsRr4x
	 O0Ir84PzLpf1td4UQQ+jr7qwv6FbRAPALf604TNGcxDidiSnX8ocs6JntT62IEex6d
	 iHqdN3Y9wnLqAlTl5BAoGI7Aibp7QRnf1+hYK9VuVr3g5q1FFNfJdbU0Ierxtt4Hj3
	 TdlxUvXkgoUhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE10C79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899903372.18172.15319723284557324219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e915bd0250898680461a9b0fca03bfe754e6c11b0cfc9fdb8f0934ea1ecc6082
Date: Thu, 10 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788999033
