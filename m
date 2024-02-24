Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083E71C13
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708786097; cv=none; b=A9TgOTk99fa6MuxZ18SIwb14kmlRHYx42pPo6evR4PJVHh7xCeAGgRbEaGL+gLYfQOLfQd7QuJ68CbDakeQj7QHK3TCNJ0HpM924FRNxReeTDIL/BJrIoYZYVNb8RfkoBOjv3gTqT5D+Vnu6qzJK3z53rE1OccQ2WtLl/umOUk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708786097; c=relaxed/simple;
	bh=Sa902VUVYLM1a8N9+fFZVyJKKluVGKEstiEKvet8pco=;
	h=To:Subject:From:Message-Id:Date; b=bDfINxJGNWfguQIy6FifY5zdH/+oBKhC0ZPuoLZtFJbXYjHFJUQRPXRz+MZxE8uzIrbUFWQNPEW6Pr+XwUN2dIoqJLdXbrQNzpcUgVfoLWE45WjJURSdY5nj7/Xnol8cJFx4wTNb3G7pcMjPgQgTf/h3pqJRUi9+tPd7EdS/9L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApT0WUey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApT0WUey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851F3C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708786096;
	bh=Sa902VUVYLM1a8N9+fFZVyJKKluVGKEstiEKvet8pco=;
	h=To:Subject:From:Date:From;
	b=ApT0WUeyDoqDAeLRBBdOpJapzP0Uvbm3nIIg73JxutJUjlp/jwdblOAQU0lW/6swm
	 rkZ948bDhiyy2rZ23paAH4DgDYg0V8qqRBolpGRDbZEvd56k1Ysf6elgdyzAvedW2I
	 Lr06i0SMTeI/pqU2j90WgbJghE1Jpvj5GPrXQa2XyNnhDsCnCcfqt9etP3YXnBTQZn
	 qpcaWAUxD9GgPQXJBAo3w3qBKzlVwdfaqe5LxEjrzhEUFc+OxBkGCvMVPYyml+eTBU
	 fmMZUPAXVk+x6WxrzyHg4T7aWwzmIr1vyflasOJJt8hMd0CdAVWcQwE8T0buAP9thO
	 3ajkun9f2mo0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B008C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170878609641.15587.3752484886493904515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc4bc33b3c72a06a44e12ec1db8ab5f4ab884c2a8a871427482afe53220b166
Date: Sat, 24 Feb 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708786096
