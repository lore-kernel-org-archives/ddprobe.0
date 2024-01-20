Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EAF3D60
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705747697; cv=none; b=C4Aug9vYz7+RrXEvQlAREaiPedEV046lEcAuyfVFGdh7FbeypWI+KJwy99TvZ1ypjNU6sZRDYpi4/TXdpAv3xl0ZCptNo0H/ayfZN8i/ieTNigkruKfecw8kGD5EtDaQHwRZT6xY+uM7Dc9OB328Oy/4zfoYl8sQpd0sR7Cm684=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705747697; c=relaxed/simple;
	bh=FIczeqzjahyS8SBj9dgkO8orsdfmh0SkYFsCktoa/ZQ=;
	h=To:Subject:From:Message-Id:Date; b=LfiQC2YPbng4eveDSJ2svkbe0jmpDzl83cO1lzW+e8erQTYb3n8wz6DgyFbrRzwwNt17x5wBHfaZbRbGaA+11oO/ErNQEdebb4pjDc+hleQqDBDra5UIocW0IHo+o2IYggNNA21s6257HnaBW5qvTrYhSBNI/pcFEAFLB+pedAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRfl/vOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRfl/vOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73D24C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705747696;
	bh=FIczeqzjahyS8SBj9dgkO8orsdfmh0SkYFsCktoa/ZQ=;
	h=To:Subject:From:Date:From;
	b=gRfl/vOpCAuFTArzSRdk/mAuo7fMEn3AvFoft1/1KVceZ9WB71rD+ct3IzSD+YQTi
	 ELnAYNIy3OfYPqey4F0RoI6OlvP0ZprbMqddrXRIn7JdPEwrRsPFA5Bg9B/rYL0wur
	 5HeYfZ7w3D5pUHclsXvkjaqY/0q1E5pPFptnWgvEV4ezhQZ9Gfk3ZUfImRzz5qpWzX
	 kqVhnZfQnUPwaBV53A1TklARXH/1sZ0Tf8AMbTdRN2BC+qh41a6aOK8LYCTZ7xzlqo
	 tJXc5+4FOj2x67Lxtvj7keyrskTdIHso2Kfcq1LiL+v2CUu+Jh3kUjw/1W2nUWVnnA
	 20C+vObi3t9NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A89AC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170574769636.9628.3851893656446397284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f999dde3053d19616a0b4193170ef8747dc5ae3caef8f8fac059e6d371e9f0
Date: Sat, 20 Jan 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705747696
