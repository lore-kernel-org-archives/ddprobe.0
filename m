Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7CE625
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766963034; cv=none; b=is1OUf+2uTfMhpyulDDUq8Yff4+GzdQbm8VGojeKo4VyX1scuICTo3+boiPQzydg5lhUtFXJsk5btluM+u3F+lGmMpGJCr/8Id72MwelFNZBiVByYQ1tILFrzZtUi92btBLEkJTVhfgEdjADpcW8HpEyHnbwi8S3+AZWIXENQ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766963034; c=relaxed/simple;
	bh=e6DVkzfXGyHUwQehjgUeicdaxJdv+AmP5V2KBcRj7lA=;
	h=To:Subject:From:Message-Id:Date; b=QgjnBeeaPcQttEsGO1IBGXCEoZiia8WStZg0BcSxGd+8K5woMe8P3HxdGnmlygdZrrmC2Bln89A9f3uxizp6fQFgzLDVWUTBhts73cV0x0a21gq5iTnqBSOE7FeTvVXyiI6531yRNhQqKdMJofJeh3Btv1K0n9yf8Jduvb5N73o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pO6PwSRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pO6PwSRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6AEC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766963033;
	bh=e6DVkzfXGyHUwQehjgUeicdaxJdv+AmP5V2KBcRj7lA=;
	h=To:Subject:From:Date:From;
	b=pO6PwSRaDLo+qw9cKF58GBAqUWEw+F3Gt2k+9nzkLzJjNe4hbTxZ1x+JuaSQgzJAZ
	 hXinz9vUVzYbzSRISPuQUtsXil//unhRMKhNSbiwzd/rEPRi088UtDJvF00+r+u8Xw
	 FqH3xLmuXQrlZ0RDj+ovDbAusrxZqYmdYaiQ6sMJzTZ/8HkH1SQSPoiq2M/+2hdMke
	 iVM4BaOHqAUXEELNmbf2YI/ftOBMO439gO0y5VzEDH7C6okWkGHnnvFVquyEwZJwnX
	 rNeNZx33kg+hOvca88xfdiVTnVR9qmG6K11veEThi2U67pMcv08IxQBcrREmw9hyFJ
	 88lPWggDVuNKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0E7E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696303360.10722.10437852856286356443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c659a6c006424a1647bf54c3c270c1cdcab32b86635cfff7c790c6aa805e99
Date: Sun, 28 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766963033
