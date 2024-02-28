Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D604D13D2E8
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709164096; cv=none; b=Rxg0iUy0oxJ3xISa48zB6LPFYCT08T+9r3S7sHLEGOIZSbO6F8fEJQzb8MxoVRShPKP8pcWarIONW3X5+ABdJzMQTz45IQPVV5udCwzPtcSk209f0+wvC4fOCqoaJZ5dneul6gPD3S71yU0rbQNJq4QIUS8UYpcqjvFQdUH2z9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709164096; c=relaxed/simple;
	bh=rojKRH5pATLRuufJ3OYmVxoDX/xysEmyTBSbTVUp1dU=;
	h=To:Subject:From:Message-Id:Date; b=A+qloVo69L+3JrEPpu1s2+/rkfbaSWpT2lxaQScr8TLmC2hgHPCayz4KK3muKHZqmY95SIsnO6LtHSeJ4PNAXtz3JYd/IdzRLflURvbOECB3475pUB35KnSh40bZg8niLnYq1suh6wJmLRbrk0djiTmJcuLwOP7nJ45zlQ4Tubs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKyExfDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKyExfDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D73C433C7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709164096;
	bh=rojKRH5pATLRuufJ3OYmVxoDX/xysEmyTBSbTVUp1dU=;
	h=To:Subject:From:Date:From;
	b=fKyExfDr6Letcb3UQBgBkoAn51fJZR+cgoRGvxg/yg8MOzX7CrBLrxzO6lYa3fjSH
	 uQDt2NgQOhrpODxXpYbTsx+7tbjzRl14vXuda+hNhmiBtI/tJg1yzUjqc2KimIMndW
	 sKqq4ScD00Mj6wiuFy6zBWCb9fkCvtsBKrlJDlgK5bBFgCHZfslHSOs5CbFd/xH7LC
	 cM9ZcegcDzVFPxLZguMtyMLi6cvNkTGNJO32J42/y+il16B2VJ/35IiJuY3kKWIpgE
	 hdKLMsXPdFeRk5CokCYnzsrg/m+AzDDePMmE9haIoY9hLEYMbDyZFoGIE9Vt/43fqw
	 uSYGtnYJkp2AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7A7C5475B
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170916409637.14288.9230402637079468008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1943e1c8e8e979e552f35c2839758e57100d06cb897c6cea209954d2ed359e0
Date: Wed, 28 Feb 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709164096
