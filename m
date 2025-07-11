Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268B26BFCE
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752274194; cv=none; b=quIV0DXyRXA7w3KqqrmuIM00WFSno1BtUg+3ETTJ0qX4dGA9BT4kqnalohrC0hZMSBRFZm4Hi52onEMyXGl+MQR8Nx4QpBfKb8jkUEDG8+vzxAxNKcSdTtTI/wXLP7LZps/dJSvDG7yWjv1Z2UN3/yuBgdMNQnlld9YtDzU0ZfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752274194; c=relaxed/simple;
	bh=RVec6lBcrREFglwlafjIJ/jtccVvAv6apNAvw2wt+8A=;
	h=To:Subject:From:Message-Id:Date; b=bAwIA5rdZppiHh+TUIyus+PBa6ko242xFWh5yBEqixRGyTKrA7OOiN2DUj2YOtzR9KhZzsN/9jcuxNk0dUYgXDcOvny7MNDbUOv6/U0vRyucYyfWzzFtvtMWO/2pm81i2Qkbyf5kX1ivJzt3FEOik6tS7wo2fOBPBnXspoSTWUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miUMCUKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miUMCUKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F2BC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752274193;
	bh=RVec6lBcrREFglwlafjIJ/jtccVvAv6apNAvw2wt+8A=;
	h=To:Subject:From:Date:From;
	b=miUMCUKp3rT0/86RpMsjwoTFxJv5PtTDtrwFgT2JQSxM0m2sLQk6iylMUMuhUxJUG
	 8b0C1tk8bFKbhf/moOYqcYBL9G69m6qaG6T+NtDEz3IjMu5NNC7iRONpSCqQnKaiSn
	 tvib+udGvYcU1yUz7KXAQ1ycuTtnpzJ0CT9WcSCYSSYfhak24YBAqotqcllv/x23gH
	 IV109y29LAUo2yF2T+tCqt1F3CoBej5QZ0u06CZBqiH2SNUXph4TxGxKSxPLcv+Vy1
	 Vji9jGmM/2W/oOEbAoEmKNxuXUdY/mv7EXe8/6C3KPVNGCm4sW0RbWH2aa5p47O3hj
	 Kwxp9F/SdjXiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED9C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227419358.22298.4317120032139277177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90865752c20f01c71e1e48ebcf25a7a52d7bd78bc4331d1849f2c130c815b64e
Date: Fri, 11 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752274193
