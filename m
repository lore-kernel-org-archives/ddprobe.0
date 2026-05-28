Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292D32F547F
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779943954; cv=none; b=aPhMNNZ9oMiPceLG0XmhfhNZ3BRSLiVdq0NhBXO9Chn6kpUwUhazqD9py2NW5g0BLLdq0mk9dDH0/39KDx7850BfbFXtRGXweyE0PY9t7udZXRKtFVh4t+8rVNK8PVx1A92OSXbsHRusoMULWVS5wuywHxiYk8fXHhLjQQttESU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779943954; c=relaxed/simple;
	bh=ZPLCwD7tDpp53jivu4NL0/Sfb/kOioBuWDho+DSZH0s=;
	h=To:Subject:From:Message-Id:Date; b=vEHbWtAt8jr5yzh/qo46L+1qQRW/bQiEHt7eek5ULoQDoGpxlhW8Rm7d+a3JkrYdahGeDB98Ep8URzbjSLZk1iynXiazwFcOt8oZSuElUVJpKmBLgNlgD8XmcTZgPBEMtX3Sfev1hyAcWmux88wVxComTLACfIhfm2/KTBBZvDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoBZ7UeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoBZ7UeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C01C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779943953;
	bh=ZPLCwD7tDpp53jivu4NL0/Sfb/kOioBuWDho+DSZH0s=;
	h=To:Subject:From:Date:From;
	b=VoBZ7UeKZVJ8KbdFkAevv1VeLC4XyRSaf6WmDh08BUvVz5ZKoJt50IfqUyUsFTo4S
	 IDIIlxeMJtszBeeYHshadWYxdfUxt7RgNnwKi50gQmBkaLa3uE2VRXonaKwmbSpyL+
	 RXmY+WwPgzMdOtknJd3oMaLrasdbJpXyEXIPDVcmdf/lca9Qx7JRmbkcpAfVEz19Io
	 8XEARi2DWlaxiDFzSnygA0CWSvfFLGGSRIBWmy9bgxxH20upW5/tIc0rsM+j8tLQ4u
	 HjhVmp/qC/OL8tOEXejyFzN78AiiaEg9pTWYlmOf7fE64QVfYInOW8Ju5ZfBKRTfvd
	 fs9kXMJ6O7aZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79FECD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994395367.10517.10433033805206215790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030bff9abb171880b8f56cb38960943d229c1602425ff5ab339c811eea34cc50
Date: Thu, 28 May 2026 04:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779943953
