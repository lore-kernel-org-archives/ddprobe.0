Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C3024634B
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733936754; cv=none; b=C3RSIXAJCNyFq1mmu9OVLfos+jxU0Ode3n6of8bIRBEmw/4e/MQSDzPD0s9g0NxCEov4Ru/mPoOgHVZz31FDBDCGESfIlWj25R0idzBvWSTjIupjpF48dDEu5/4ARhPpbx6G00f1rQkn8ETmkVc389Wu3qXIDr9nIjaVjDlqk3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733936754; c=relaxed/simple;
	bh=jdpxztLWzgrszmUzrYDzMAYw6lYOrXUTImzww6YgyRk=;
	h=To:Subject:From:Message-Id:Date; b=JN7HsE0w4VuPAM2akxT27ZWTJRqRALEsi+AtTLfCpqQ8eJnTZcml7MSiXmHAN8vGELk+Wk3hGZt+bo5bhgLPCAzY1lFU8T4QBGaA5VoUjNjKUiCybYeE0XBkp7waGfuBC+RmsQu4YhcKENhYm9C8wQ2oOkE2VZ4tgDVESslbFq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJGiKsMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJGiKsMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE0FC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733936753;
	bh=jdpxztLWzgrszmUzrYDzMAYw6lYOrXUTImzww6YgyRk=;
	h=To:Subject:From:Date:From;
	b=EJGiKsMOTEIsrgAyn24DhtR0Fd0eEkae0h8aVKteYzSW9ta5sMrAn8Usd7CJao1Im
	 gOdST5XequZdosCLw5hk9uk4RzcNaM6HJNOp6LB8Rb9x4QmNEBiCoGCaZQHcyd8zLk
	 JyNBzBCa8lE+9iI6IMZPS0zBJtM0eTkbCQ3xXD/vx1TX2kn1hyB1SO7uJ/ilgpxNmh
	 Vx3PEwMm+vl4jJa4K0+21yEzr/BF/5trAzY93FSVU8ZmEdGV+ph3lfND60kEjZAae+
	 CBaJ6pUOT7o5gxzUkQ7Kok0k1dDqH8g8kzc1KNijytICbXvFsAbrCVBHwSwpyd8aze
	 MEgVeUkvtH4eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FB2E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173393675367.12175.16221634507688245430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5b0e3f311cb6bbb6543c0bec85be7a76c062bae34cbf9ba44dd5eb70eceb64
Date: Wed, 11 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733936753
