Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0CCDF49
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753084194; cv=none; b=MRfnNj+T/5wjIZOKGIxJ7Z/XFRZNEtVf0az1x15de0KriMU2O5xVjAIm2MA9J2/ju3q1Su7jrbr3SdKly7fhCVoah+tINrmhljk4IoL0jOzUTV1p+uRtriuNXyplHA5DapqzhAwjkmCrWihGTB+aYaWs45gzmvZal1Z2aG5LVHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753084194; c=relaxed/simple;
	bh=9kcfC2ONAwp9gzlCRbX4TlxkkflXOomieiFAHHpdfps=;
	h=To:Subject:From:Message-Id:Date; b=UTu5i6pEaWBu0A2XFxpb8lqIvSOXXt1d+WccWa2IBenn1WCloTLOo2Alk5zATi13pQYpYSdgt4fvmXz9rrZD3zD20J1YQFt/XM2o124w3nVdtXcXu9UuXQ49U/UMgF/7BIPMBt+llOipyw8xw7bLF0In+uWvmktXAEwM8bX4Rxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ag0nihEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ag0nihEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14EDC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753084193;
	bh=9kcfC2ONAwp9gzlCRbX4TlxkkflXOomieiFAHHpdfps=;
	h=To:Subject:From:Date:From;
	b=ag0nihEo9mmtkTRdqanEqbLGAn3datE1mYeKSenaq4H3HWLMtX6K2zubPBYdAQPei
	 aPmQpKl9oLr+JQmBqYadllCYHhousBfri4PV19zAJOUvoTskqvdibDwLVprWNcpr1s
	 Ls/HGn46ljiO7ta1YRAIPWOiEzNJFzmKOwZBWxDIwa7GnldS5+gSIWIyb+05hUjyEd
	 ljKa3iyyzunqJxkHULebER/VjlDZjt85XPAtO1y2qBH2kbpvy+R478JiRRKUS8WgNm
	 8qZQ3lrSh6Mw8LJHEk6ApyzwnQp61gaM7EtelTOUJD6JHyyCfcovQKEy3zC8imgO0C
	 t5Tt3tjj8RLfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF64C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308419357.26232.15983056193027197424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8cb8145ec0c8ea1de4a178de8d8a6d483796a5b3490fe69819c9fe7a6e290bf
Date: Mon, 21 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753084193
