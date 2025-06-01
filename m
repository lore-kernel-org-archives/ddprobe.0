Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4208617A305
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748762994; cv=none; b=NjfuajAlxHLfXd9lcQIHkUiaba/PbxrQrVaXjJhaiXqc0Wv69myR5zRJvjHpMJjfuHb7LaFb0QIfC3Zr+2h7Qad1GsMfOwAwgL6+4pCILb6mzQtBplBRBAMGfqw3JboIt7GVUqDg9E0NJfV+ObzIFTV5arPvfcOAjq9HpqXUmNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748762994; c=relaxed/simple;
	bh=OSs1tLO5ibXH/TNNi9vbI27tPd2k9zKg1QtZ5VeGLSw=;
	h=To:Subject:From:Message-Id:Date; b=gqaSeKU6rPrcxy4l+aaAGNESIgW/A7tLtPLLfsugGW9d2TnHZeFJz0fvh0Dw0EqqaNqUPFQBp1pw/rv88iI0H61CC9R4OzZK75a/ph41pcUfsYi374JRGL2d/vEaQ2lAn/LRYqtJ7LwxbxCuxuUre4n4ZReBzVf2amkYa5SVBMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTYjlBx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTYjlBx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F19C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748762993;
	bh=OSs1tLO5ibXH/TNNi9vbI27tPd2k9zKg1QtZ5VeGLSw=;
	h=To:Subject:From:Date:From;
	b=XTYjlBx2uynoIm88QXPTQFzWkuqkFs+iq041IJuu72jiOfE6qYIR41cHT/RRMGZYz
	 QigDKLURfNfONa0KAxBDiX4URvT8yyxXZyNOb+NDBlkVQ/YsGmOJE8u/+GMT4p3KP5
	 Jx5yN149as1R5jNsiMGyUeDLgoB2yLAL+Ca4SrMiUhIlcXpb3H9xFVERKNYTofFCr6
	 gRHGIX/ek7JGQZPNSTuW0wWl3gFY6abPSIknkUC8jsiAcOBYv/pIZ8TxAQsw8GuSEF
	 cN8e4FrYcjUiWiKXsg5plQktLmlTbbpEGxKGdSDPFQ2df/VacJVJr8yZ+aMv/RJna3
	 9ReL6UqIQUB3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D7C5B543
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876299357.3793.9032620500717983761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1f97b548b1b2128190ad5518d7c0bebd03cf294419e517730e69c8319eb2e4
Date: Sun, 01 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748762993
