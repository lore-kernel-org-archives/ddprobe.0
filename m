Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB19197A7B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718678903; cv=none; b=p5bQqZoY5ZMhmJAZC/rf9dGZ8vgUjlDDjN4XkYyfRS0oZzWRun+QEfGsUzWuBpwl/9YcCrK1evVaGvLWv1Ih56Pwm+ovVg2fU4y0PHxrb0G4ZRMSNClcmApJSVym3esZzOix/lVbtBi7FoHrQtzNsjS9dIZKstTH0BI+0TWxVu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718678903; c=relaxed/simple;
	bh=lRl5U2ka6D5EWi7A0KESlX8cwYxfuMN9DIOAlqyGoVU=;
	h=To:Subject:From:Message-Id:Date; b=OAS+KP32HS5aNJ2cirymj7SnSJK0bpK5R7PnAkmMwSfO5rXk6GkM2BqmK7ztldF1SHM4G/zkzGsbKko1id6o/ps9bFOmfJ661zlSqP24ySdnSaKTe/RnUoJcIrDrC6l1J7FPkacghxkUaj0q1yxWO547Y5uxCRc4lRo0RUM8fk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0Sxagxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0Sxagxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEA4C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718678902;
	bh=lRl5U2ka6D5EWi7A0KESlX8cwYxfuMN9DIOAlqyGoVU=;
	h=To:Subject:From:Date:From;
	b=r0SxagxyuUbL73uePLvanZ5U/a7VUAoLQ1zM4U9EyvBLs4c8BPPOEYt1n5Z+Czg1R
	 xYbfc+ZBlZ57AlbeTyx5cHIUMd0oP+eSxb/Ee/H/Y67bdwov71eWBRsprn7c6H675a
	 g1k1PQqezUwyMzhledpDVFDUe8APII+Poa/R9Csf+45TTkkKTSB4LR1+4jjy1o9dFZ
	 bh2VtBOaWU9PaOER+G19CwNzQ5PdEwJ88MYtAr07LX3mke+24keL6klLlWSiYu7dac
	 G51Gu9FvNjUg3hz0lFxJykOKkM55o+hFIbVodYiMfJQt3vNbttYw21jx30ZlSxDdKK
	 9aLJTmcFIs08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DAEC27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171867890278.29340.3582279132978337666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d79b5ef000c26019f9b2b31e3d00f2ec32339ac5a651f537fe1044c45a7fd54
Date: Tue, 18 Jun 2024 02:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718678902
