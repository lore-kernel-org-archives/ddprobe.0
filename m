Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462361A23B6
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762654794; cv=none; b=GUizt8mXoz90T8nHJOlrSk6OiMD+IJV9W3sHVu6XrFmhNQ2promrAf+d/5Yeu2q9biPYmTDbw0KXwEenH4gPIz7IXZmQ7L520rEG1iu8hG33j6uskBnh/JjAZNympL6Y/aWRV2zus1oa/PDPQdIdD3LJ4nkNSMyaR+Kc/h8vDCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762654794; c=relaxed/simple;
	bh=mvQdwhkiBmfjWkJU5EpjEFzitn7sH0M2V+Pb96niFlc=;
	h=To:Subject:From:Message-Id:Date; b=DPaDKMBpIqmpsHFlBxmlKkb6rKqHl7XYmpSdQ1Rsj1c3WCJpzXpHn4XlbOdc2b6TFE0hBlFW2o677t9GwF+tf2Q+dFUV3CPFfapmGMjtCompCg17zAgeLlT2lWSLJUrzJk8osiZLhSq/9rnGaNvGpeNYRgFTB+yHNmEe+q+/dJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4q/VLsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4q/VLsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1396C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762654793;
	bh=mvQdwhkiBmfjWkJU5EpjEFzitn7sH0M2V+Pb96niFlc=;
	h=To:Subject:From:Date:From;
	b=S4q/VLsqKkrZv/6/ErokF/jhKCx77W74kD98c6VEe7V+INhETd0zlkBb1su6Ep7a/
	 gjqdp8Im8RZQRit4Gv5YyWxxsgg85p4/QtZihRlsYlcj7OZ6jONR7gxnvXhKEoKICk
	 kWohdhgL15QGIbSdc0fJuME9DlpjALshtYv0f86ucIcZMeagDJRRaoJKJZcKkp6Vrc
	 YwT3rXag3Qg6SeAcC66a9UKHpSTpfvoxh+0BSELxgtWCIALe7hGAW9YL477HurFHkT
	 dARVLEZl+m8+6ktd6/VaszI9mNbiIWv0kqoibQu7nrS8qjvNEwKcoAQA6mKJdZ2hBu
	 q5FesQEBM42WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AE1CCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265479359.10324.2374363034185815451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee90e24e75f90a86a997f9ff685ca0750d4dcf39a95981e12205342d526e7cd
Date: Sun, 09 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762654793
