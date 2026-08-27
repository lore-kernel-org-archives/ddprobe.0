Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C58D3C3C07
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787818834; cv=none; b=gCfgNSjHE7NVxaWxVartbbdjK4XmLGcZ6UASgymEZtEyOgAsuqdvM2DDia+dImnhd32lmE8dxbXgqMKOFzLZIBQrjfWlYcbNbMyL295k8WAHGOKGyKXmNev0QH/A/JPB3F1nfKIXqrjpSHnHXoDVb1CSYokjZ7I6rjfDdBO0Mi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787818834; c=relaxed/simple;
	bh=c82iFUauN9ZSoRHkCS4S3Xm3/Hdzvn6x6xjwTh3b9JI=;
	h=To:Subject:From:Message-Id:Date; b=WZnrqrKvB0SyeNCESle8f6thln4m2U9ty3DQzuwMr/bGOOMlO8w7sou6zmh0q660IvS8V8yMa4yTc2hTUDOSATwopR9CZoDTam8mpbkwEGKCMphO70m9pg9BIY4QE7qNyZBBQevp6RpIxaQ2Ge9+wSe5s0zxgN6D0RrS+aJTUaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpouinSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpouinSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FEFC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787818833;
	bh=c82iFUauN9ZSoRHkCS4S3Xm3/Hdzvn6x6xjwTh3b9JI=;
	h=To:Subject:From:Date:From;
	b=GpouinSC2urE/7wQcFRnaWnY7d8PqYAFI4JDlny5l+9fFEqO29SMiq90MJQfL1i2H
	 MZvP9ZAL6iCYfsNjqQ9PK6aA0Gs9qntbOYxGxe/hctsK528KNBtlCzWbxa2Nsi6nyl
	 xz/krDMkEKmI7g19zcdtB0SkPFdbOCjLbLtvsVmyggcDhS1OBDEZXc+agZFzo0bEQu
	 I3rT25A8f117+YZ7PqEzVb5RuxEXN7VE1rmX2DQhUfbarbaDyLvcj6cQkRX1CBHKGx
	 A5xjxM0KirB6KXBj5Mqku3YaM0oFe5Xq9hFC3I/cmp0a7J7DXpJHPy6SjBB+Z/cZwE
	 Lf7hgnwtPlF7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB501C61DC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781883369.30760.10793779482751504825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b0cbd2458b5b38baed8c5980a33f81855cb9fed05c264f319b93d187627695
Date: Thu, 27 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787818833
