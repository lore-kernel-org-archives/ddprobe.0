Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415AD3DCD8F
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786663834; cv=none; b=OSEH2zVdIeOoBhT4yYKWHlOUvIiFmUMTfEIt8Jz0WvS9SMz4t/zz5jsMKg7ZkzZKkmrXTcNyuuUwGjKUIE4nL+MD2p5pXvUIijX2eVWe7/n2JpjYp3+rquJdnroF2LSylRxsrKHW07M3FMeOhLfqfhwG2Et+Sc+gEWT21/vmUkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786663834; c=relaxed/simple;
	bh=RWfFJBp8rxLsBBlVEcZnAKA8zmE7JQS6wdgbulbtSVc=;
	h=To:Subject:From:Message-Id:Date; b=pppwAajUmbyHJOs2CD+ZV+Z76B1vc+YwHux2oxsh21Osij/0DdFvWgr+X/7K6gkNznu4Ap+Bxw88Cb8PHIGgRdLigcJtTKX0gpBuoQNChKZg91cc9DPK+gnCwrih3zXwD61roZ8OnuyH/th/a0syy8uYad+237IvGhKITeIXgss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kroVrP8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kroVrP8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD114C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786663833;
	bh=RWfFJBp8rxLsBBlVEcZnAKA8zmE7JQS6wdgbulbtSVc=;
	h=To:Subject:From:Date:From;
	b=kroVrP8mLULV0l5kjWRFP2LIuMrl17esPUPQk0YzJgQygWFTWLGIAS5D2St8xI2TE
	 rZlG5eEULvSY19gt2HmZ/cLBBvjMYdaN4NGWduNncdetm0H/4vqdIPZ6WnjZtzT2qY
	 croAt/lnr/cNamnKxQxzJZ0fuOYJWX9qr9hz+W3HzQb1UfRVuCSBRp3RWjbwuHfdMW
	 iDcbXWfY9XgkyP8OU+3eH6Ts8lCO2aZboTPSOeEDQLb9BJMfk0/fjK0X4uBskMwB0F
	 SGVp9lThUalBkm4ETXbMfwUuM5VFXckdQLZnZeurc+jr8EBEV25HlMFT8btF38VyDy
	 uyfySy1MMJyYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB1C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666383368.5720.12709702486005491974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455647e05d140f4ec9b6da3715b9b10e4ecfd3a1535037372f3be30df6a0c4e2
Date: Thu, 13 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786663833
