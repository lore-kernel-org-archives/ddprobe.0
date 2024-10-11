Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279391D1727
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728683754; cv=none; b=OyttBKqpm9LWBzZWtj+vrHzi4Ljqt9TbU9/tivgOXv7h4qWD5Xsf3XyJZvNEHXewxcpd0rrZF/t9qeDFEsESdyiihAtNj2ntewTA5KeY1/TxgEPeSL+Z5oMEw9MFX6Ccqv+fmz+f+ocAFrQN76yci1EhNusY80hkt4iBze9dzGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728683754; c=relaxed/simple;
	bh=f7xOsinTbwy2igdsbtTZOwGpp9f+uAsYDP2v2DxfFYY=;
	h=To:Subject:From:Message-Id:Date; b=fnqnOFQgyqx7I46zm84thpoJry+rCFNQqp1UeYlC/d7OsxdpyYrZZNMpSuzEtbtjpGLwI4DKxq6ftdgE5I6b7f0OWiyqyev5dcTmr5GqL9sou6yyOKNPoDZm/9g/pNvzF+LstqOaY5CZ+5T/FDzs2IwwXEkcyKlI0sfxH72pXq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1QX1uAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1QX1uAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D76C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728683753;
	bh=f7xOsinTbwy2igdsbtTZOwGpp9f+uAsYDP2v2DxfFYY=;
	h=To:Subject:From:Date:From;
	b=X1QX1uAQdQFq9cXWdWDiMl3+4MNYugy5lJLgVMD4le3F2VXdyoHCJSnG/1bJjZNbC
	 ZGOoBlQhUA5Iv0gGl24v8KlM4l4zPhNIMKDS9et7bUb7RB6iZCONMZa3qUq8qajZ/a
	 1Na5LtpHuPRUU/UwKn4r8/EDgpij62dhT1XeRVgh487tKKjGT1QWGgsvLX+gDar8J+
	 AnJx2jYh/+nmgxeRK+er9ANevg6w/JrKG949ctJtfpZMe59kiV2EwLvskrJcX9hRjZ
	 LroobhV4Vw5NDUyA/fnvlLcN2I5HR6dwPURbgIWUvePAW0OwJ6MecfWCojmzPuQXl9
	 LEdV179cIbaOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E35D1A424
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172868375367.17654.2461858666494311566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de4234d6274cbbb862b967c5e6ad2f05f1a801bdbc768f73216386357c9d85a
Date: Fri, 11 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728683753
