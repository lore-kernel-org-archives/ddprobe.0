Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF171B86EF
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720547783; cv=none; b=hz3Kvzup05pQDn8ApBa7zCwXzo7peFfrrS1D13YHmEv3qFNrY3XiGLHfkWUPMSvms8k1/y5OGZ/ew3hKsfpbHJlsgGqJTfRv3UKW8N4ebl4AaJRmUNzNbyAx76ltIKUgjcFH8p2aTOTJEYefS7q3WJpEk7CqILz8F4ErxS5I3mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720547783; c=relaxed/simple;
	bh=30QjA/iaiHZc2Komi4jp0Ke25BitHfIQHT8vt6okCpY=;
	h=To:Subject:From:Message-Id:Date; b=EL8NHY/VvIRXC/fzRhkVJSNbeOdc3Ab4A3naZCzDCLKPJlYmT2FSoi2wy9OrMUIDt2eekqfLw8Xz59khE30AR99fz9+vi9kGcO2ngBUy1FeOvdVpolxm/Q276juAhTdqpYDI/+RqG/0LKYZTSL3JwNHTTP4Z6eDjNOLGBhFwAVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGWAH4++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGWAH4++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE307C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720547782;
	bh=30QjA/iaiHZc2Komi4jp0Ke25BitHfIQHT8vt6okCpY=;
	h=To:Subject:From:Date:From;
	b=VGWAH4++UNNQUnLGsIPVNwLWXTb8Cex+VBWsN7y/9zKiohEeTxGWRDKtH/GTreqlQ
	 T0ZtuqJhHrH4HeJx1V4Z3KXxHv2etFpieLNN5K0gK/tLH7cfbsxiiA8ndNUCgbna3D
	 6rrwv5whMh2taYQ2OjSvoDiLaBIFS2sUpeST9rbPdN8T8JdM4VTj7h+4AWan7v854A
	 TGzr11/0IcLUhpfr3pjNsHOjO13n6+tyYboWlGhcMFQi4O9ahTl8f9Xg5sl7dGpRZu
	 eDLtrpocYYouh16xL8eNxVzmHFWn8U4AIXrRLO0v1AfR8JR0PsI6YRIEvIIUduihjs
	 wI9BpscnXQ/eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C239DC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054778278.14995.517446454324417399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d943957e98b0145ab34559b0d7178ce9ac6e674eadebfc07ab5b9851a277e7a6
Date: Tue, 09 Jul 2024 17:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720547782
