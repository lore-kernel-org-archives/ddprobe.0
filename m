Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BC11E5714
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752362994; cv=none; b=F7j66DoPlVevh9z6jLZL2bWcV7AFT/0whI6rhwYrWYJtpf2/dX2PbvbfMoVfOs4TKULduQZsakYYK2oH8QTGBvtFwoZT//tdqRCz0AuFS5uPsupPb2oQBLpwQljo5cAOPN5pwKhOuvt7IdXNWgV8v4x4+UEi6n6RwMPTI7sBe3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752362994; c=relaxed/simple;
	bh=jaocbQx7EQRvMfbyf7zxcEha7mN8BmmFG2ydNneT3fU=;
	h=To:Subject:From:Message-Id:Date; b=sMZI4/fTy+TqIWdZ4RzNvn00R8VMeoYWkC2hPGLVG+t20MM0nqA0IAvDrmRpc4LNm0BBIgXc16gEkKwOyUFkq543P4ymrM1AxFrjnfluB5gIbvY6MqHgSmk+46A94CYlq8OzQJ+LF/iCWQ3O4eltbOqk+gZlad1bE/KCcS43/Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=areEv+sA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="areEv+sA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A237EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752362993;
	bh=jaocbQx7EQRvMfbyf7zxcEha7mN8BmmFG2ydNneT3fU=;
	h=To:Subject:From:Date:From;
	b=areEv+sAyN/pfJFIk2lOO1Zfenvvjzw8oEXIuUUK/JJrDPCarTtYtOuZ/zKEws0QS
	 WuFzDQ4QrrFBOAXicmwSQCQPySXAxOYPLuXdWbkYegBkpw4OTp4WjsHkP+62vtGpdD
	 fRw5ObkyI34YTvL+t4g570y7kgnxFxaaGYkBFq9yMwaERaNy5pZDHP23dFZGZuq+8J
	 De2uqN4+3yuzxpMouO6Q3FsfmUhJ9RGFFPZBw34wnnjf3beADxgMTrhUcf0cwqR+b/
	 buzu9lh43hAtKWz0LWi0hbwpfB1CRIyHrE0giMtA76D/VnDK6U/ZOkNlEoBuwGwaod
	 baQyS0c4vAnHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97FC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236299357.30671.13829057638211426677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0c95e21217b4993d3d74273bce31c9735ce388c36fc21284924cc718227012
Date: Sat, 12 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752362993
