Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076131C2E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724718954; cv=none; b=A5eDTN8+auTSda5pdbVxO0GxmqnEJH5IY1/wMud1Aru67p4p8TiY32TozUEFPE/fhnYuM1/Qkpg4CzK4RH+xK4ON6/n0QQWq28V8bUZtMtj7e57fHhwCWlzYDh2lRwlnPYzuxoJkgaoQLXiC3hufbAZ+AdoIpZQLYdmqbz67UVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724718954; c=relaxed/simple;
	bh=4RtEKs21oAH4/NY0yGt45uZsk2PjNO/gM+xQtIZ999k=;
	h=To:Subject:From:Message-Id:Date; b=F06ODVsSdOMzvvjw4tHdB1o9OyBmOqF8n7VFiE6X/6ek03H8GWGICuiIgttzXdfdMuqXjhxrhvpqSyW0DDTI3Mh4GO6Pf6xT1lz+/9RbH/jNSh+a3VeSIjSCXxXxB4kk/hefRegLulrdZt8e35VZN4IFz9WuOjS0Amgrt1R1514=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiR8pcxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiR8pcxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC9C8B7A4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724718953;
	bh=4RtEKs21oAH4/NY0yGt45uZsk2PjNO/gM+xQtIZ999k=;
	h=To:Subject:From:Date:From;
	b=qiR8pcxE0riXpOKTlAZXh1U/8a9lYgraxmViiJd9d8dPPn2HCUXzdsGFpOLlNfvQT
	 Lpz/PnQ3e8OtEQ7YvKIHsS9nKIsVxnTu3poChn402AANSL+wMaFqwuew5EokbzTpvf
	 RbPWeinaxR859Yd7yyZgpeXSO6tLa8zIKYMTkFtLPxBCe3NU/pIvCKhyX39KyU6pgX
	 We4Rzk+KbCZGcbXJwB3dznp9uxAVH2IZ3Stv2+bfLde/mvq1/6jCB9AE9gTp5zGEDz
	 Dr0VpweqPeu/QN3EmNRnuYJyGLCL2nQrbFWRFplYdCqcnZfmX+lgOWNiVXcqU9zsBM
	 Rg8BpQamvBKqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DE2C5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471895359.28050.8161322792198645253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1986b8a77870d083d76566fe0f8eef67f8b00926eab9d3f6c46d50bd37e438a0
Date: Tue, 27 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724718953
