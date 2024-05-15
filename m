Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DE738385
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715742143; cv=none; b=n5o+BVh9gksr7E0w9r+NbeEm0WfZ69zpGiuUZF2toT+9qAkqEA40wR03qOazKNdz15w/A6b5KJ/p5tWEO7E5XB2+N5iIQtxlD3IsGEX1oaLrUfRTMlZij4+LschnwpRMB6hx2ScFDR5N9TMDzsdaez2Q2Yqzxzlg9gogextS8PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715742143; c=relaxed/simple;
	bh=316rnZNAhx+KIAJKbMOG0tHUnqSCTjEMx9dwSKdfyRs=;
	h=To:Subject:From:Message-Id:Date; b=KW6egOwKBD8MhfRutML4BuiB7OdGFX04/YzgGa/+R+Z501exOapzeemKNSEjtFCuJPwCYbIniZo6CrBB2KAEfdd1R3D0zAhjX2XgLs6JAMplf3zms8RiJIfeB0ekSWnDxcrvGGLEDfk0vIKnBCPl3ZrKoOBeRlbDXQ4dP60a2KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3iheKhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3iheKhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE38AC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715742142;
	bh=316rnZNAhx+KIAJKbMOG0tHUnqSCTjEMx9dwSKdfyRs=;
	h=To:Subject:From:Date:From;
	b=C3iheKhNGusAyxcdB2K3aHis4ObwdqvCBnyIL0IhS5YgDlzhxj9j4YrI8bnMtNs6I
	 coIyrlI1OSkt41fuc4v2XjOaQuCR9lFvlSd3pQIcc1UwG1Yu9YsH41uMBAJw4dhOwW
	 A3J/wfRQXKtWJIPzXGxcaVd59FCK/pYZlbc9Epe+WXVsmNaO3h00yadLghWRDj/UEh
	 ZYvOar9jW0bKXHFefOjXdkFuui4KR9RSnTcKuYI/UJazq0fg+uDGDvZdzsI34l04o4
	 /BFOE0DbAUttRbfIXJqMF6Dtbdd5y12VTSjISrHHPn9hmB753R4fmVgGJNj71sfF84
	 zzvjewZ1q2GEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD087C25B78
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171574214282.10988.10428695318694399371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde71101cb410d8088b64ba3c42860f3b25514dcfdaf31ae72f21125688716c6
Date: Wed, 15 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715742142
