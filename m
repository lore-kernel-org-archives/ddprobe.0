Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E30B635
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763944314; cv=none; b=ppaMeumkkoR4hAfCaA4ORgZ0Mkjrzke6xJsDZHExVZ8vL0Ot2org9adei/9ZoknsYrM1LAJXa4pDFUR0jpq/i+b/7pFUva784P4JDnVExoQPBzKE/OWxz2sktpMhNg+lm4E1N3bgHDj3vhJJyx0bK2vxgBHfcGefazMnFysik18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763944314; c=relaxed/simple;
	bh=lAVHqioj5sjvZ/sN8SMuSnz5hdijEV2cZA4rKwIxhFs=;
	h=To:Subject:From:Message-Id:Date; b=j4pfA2jFRuRjikMLGO/bg5NPHntFU+MdJDqmwrHMsyUE+98N3xJrRNzdqLf+rWUkMvnir8pRCfAbZdUlN4z4PM8+MCt+h2ttY4XOPHUYncTruCWVZ7j8Y9Itg7ftdlaeZhZPQOmR/6gotgqww2Uxk1NtLFjfEsx81/RkrObOK9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3NdVcxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3NdVcxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4037C113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763944313;
	bh=lAVHqioj5sjvZ/sN8SMuSnz5hdijEV2cZA4rKwIxhFs=;
	h=To:Subject:From:Date:From;
	b=S3NdVcxVKJs6eRhGhLWGxM117PqOzfKlSvuvXgb3UXW8QH/oQMfTVRKZJ0jytlDA0
	 D9Ky9utJvqFD9sQ+x3wget2XQu7lVly3YirWY5QUyhSnM/TB1xbSGiZV5PCVpvHQLM
	 LrPk1y3hCCWgQFmH4eFaYVaa9HvLbIWNjFCq8EAQ6QSBH249smGBxYaw+8nRXyeT1a
	 1BtC7dGgNPD5JvakLjwosDiZsnmbVo7Jc577Eee+Zpw3XxEeD5s6OFmIB0ERVOLDvW
	 Jho4ZQrSUx2aa1w0pQQjKyUOPRo0zWxJmiXVvS41hHhW6gURHoGCMESxZ6r+AQVaVe
	 MMbIJbMTBZU+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB0CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394431358.21762.4846154841197323227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33bf7ef1b6b84ca43da46a1de9eb552498aa1d160aa7d1be2dc0a237ebf57d53
Date: Mon, 24 Nov 2025 00:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763944313
