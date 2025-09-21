Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2DC4315E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758493194; cv=none; b=ZlRA7EwmS1YugFXCrIzDaItlf5nSWPbpubmcc7Wh9R3DtMu7Q9KJN5xqdc/JfgzENBV+QhU8v2lpN0TeZGoY0xl1tQ4NjMGlxXZt/zml9h5LY478XBmmksKX4GdtJldjRMQhsBPz03rMdT7yB2+NH81zc0G8FXQU8/HMyVwyNDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758493194; c=relaxed/simple;
	bh=lKS4tyrlfLzCOo8cPMmj83n7ML8VfZtVx24jhiqiH6A=;
	h=To:Subject:From:Message-Id:Date; b=aGsk/ziUbmVla0LSX7GzeoMQiwSPdjbh5/BCgBf7Frsjrj8Wqg2kQFxp2fDDsyvA59O4bhBXRTaYiY+UWP7Kvfu7P3BOpsvMqf6RIYgs2Ti7czGCZdPTgrg1Mp170NcAeXt7eEae5KKfnyw2QMEL9A5qS+Rs5PxRVcEAth7aeTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfnuOYOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfnuOYOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F9AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758493193;
	bh=lKS4tyrlfLzCOo8cPMmj83n7ML8VfZtVx24jhiqiH6A=;
	h=To:Subject:From:Date:From;
	b=bfnuOYOK0PmDxlGYcUn54z3Q/YJR/2DGeNGmNxhdRyVHt5rxzaMagTh28tELrXEqF
	 cEL2XSFimsNrOY6xaVu8+hNAUgtVf5MdWO7hK/5fsZ28GvQgT6Ep7xWsBdnfgTJ3dP
	 HDAosx7OYtsQICbNl9j9KknG4sZC0BM7fw38qOXj9KqAAZk174Mnyk4bhP+eRgJTF0
	 vQDHFJ1668YnhjMi0UtNajSUdDEDQv5g0h3xAVm/hyL9IrUrxkDZjZilBrNIejP++u
	 pD2gTCk5XJCjoxkJEat9Je49OoJ0ZUJzkNy+s1DpvRjhNeQ2gITI+S9U2CyzttqVPE
	 3sksv7FIjNLVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB03CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849319358.16661.15524632195317662149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef2be6637a54f720e085d263050b409fa50221dc6239c13ca57037820c52d8d
Date: Sun, 21 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758493193
