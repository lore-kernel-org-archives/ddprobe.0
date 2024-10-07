Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F83E4C6D
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728279954; cv=none; b=GupoR2DL48onTxeFZDlalseXZU3eMq5E/ZAANCF71ngUzaKklnVWSbybBknUydpVfkrONXQLYTli2+FWuuIiBdbnrfQfBlM6bo+lMwKxkAgHHTt4h1C9/zY9QtkCiuaYlmjPNE4V8nL1hkQUqiX0wfhhzEw7hq/M9dAaihufpLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728279954; c=relaxed/simple;
	bh=ezkxwXF791dG+veWQOIKe/1kZ/qB3g1XGwrg2D2xMdg=;
	h=To:Subject:From:Message-Id:Date; b=EUs7y/h42PDCG09dff1lM6ZpREc+WvIqVsR4AKJyh0uLTiUxmTHZU7vr82fhYypvoydKsu4TijRDtU1ea4ImStIGWSCeIvQVt6TCcm/DunFJdaMBmaFK2Ge+GnKDcQEBKYsL1/Llhu5H1tGFmnZCVUxImERWZbCLEi4Dy38PKWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rea7MiPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rea7MiPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3355C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728279953;
	bh=ezkxwXF791dG+veWQOIKe/1kZ/qB3g1XGwrg2D2xMdg=;
	h=To:Subject:From:Date:From;
	b=rea7MiPc8ZoqkaUkpweDe2l0pRcVYUwFQRLswoPG3DoNIVrtQGGCGltPeGslue1EO
	 gO6nvRQgfjaUo73fDrGzd/jFPIz5d1IcEQJ1dB31BDietZUeiaXh9bg4+x1HYxwjSU
	 f1V875+Rhy/0hhXFjtyS9DZoz7LcQLewh9R1EjLdpFhgWAqM33PqzHdP+oH4oRJoMD
	 H0AeJnAjdl+RBwn7DrsdQbsry9BnYKSDefxMvoVnP4WM9BynlSm84enIzuMwpMAZJF
	 m9ECQq7XFwSFC0Dq7gUrqYE7LQ24xWMuWrdm/WwNjf3JGbRMJolfT5VRKMymNyFVir
	 hZI3CKEYjb0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242ACFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172827995358.31685.9152914094159917471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74d1451307b0ff0b8af2d1c04b7e29973920dded230c76b43178bca47889d71
Date: Mon, 07 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728279953
