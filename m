Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16836166F26
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732262154; cv=none; b=Mx/QcqojFBmWkamPQAJhOx00M27emPWoP4Qyli1QUNig1NQ5izNu87yi5zu0oV/Ulep0XTeGLeuD8TEJznZoztyPH2IH5w6+0N3ibDge8qjeBbR/imVJC9NHOkclvYFF3GnNlpsecnUKA+9Aj/+hGWdokEP4GrIe0+MG1hq9ZTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732262154; c=relaxed/simple;
	bh=PyIHPeq/i9Kc8mY4qrfBXgvmgAHbqfFNYGXk1TpVHII=;
	h=To:Subject:From:Message-Id:Date; b=c0nYY3dxME8xkHA/PCPAc6KI+geVO2aIPEm3ZsrDy4Tw1c3jN3FBMQh082WygCIEjwSsMGVbNnXCN5Te3SHf5kWujI2rOFSJu3GFY6LqOmJUU56TF6ra5D2PM3W2tlHQUwS8CqzhITGjRtJsrRDsc8HvpgT4sZwt51Qlrp+y80E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+o0r+Tp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+o0r+Tp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8861C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732262153;
	bh=PyIHPeq/i9Kc8mY4qrfBXgvmgAHbqfFNYGXk1TpVHII=;
	h=To:Subject:From:Date:From;
	b=B+o0r+Tp2jW1f82Qxy10luFZ2dO3Y8faSXYDsVdZNCZmlCIedIUOs3kYQ8nBe9qBb
	 W2Bo7qeY/+5m2oAIMZZYud8e7+2Sh88rZoVZUFzLFqNk5jxxfDEl0EDdUnDGANsdRe
	 CwcHjcymk5EiYdFoW7fh4XIVUSWdVk2yeSjzAstSbL4Rzg51TtCzWXimiwaCehL236
	 bgtCZ835S/OzEOrebEDEZYgzY4ue7FpWPgC5nMUelLYq8hKErQfuRPtrXRuADTso0N
	 Jytuys4RvXx45y4fcMhocGgvgROcRPdAVp/YoUfFMvnEz3URuTWULgbQSDMMraS8vW
	 icfvlhmcttYHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B75E65D29
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173226215360.29169.463106640777290601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8570f6b44f1960834f43f1697a2c5c5b0e74590f810ca2046edfa001b872ca1
Date: Fri, 22 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732262153
