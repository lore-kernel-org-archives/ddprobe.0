Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B870BE5E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750469994; cv=none; b=Mwk/Q4Sv208fWCJf7mbBOr4iGUZH7LelPQJ7W6/FEAjQ8ZfcUuITuXlozKp44ThVxzkPNe8mZ5kyrDtlhPKBd8wxLW5EmKGh2E4mb0QPAkd/bDkClOx5cGtQKhaK+x5/E7VdZpT/DX214OtFlsgOzIfR/7qn8kHIdj0FbKUEM40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750469994; c=relaxed/simple;
	bh=x/CBxaANgROFrgjwqifW1qY065IdDtjh1ZMPWSkwa2A=;
	h=To:Subject:From:Message-Id:Date; b=iEKaLdb/7l48f4kQ7YVlv1L1FO6aYii0x/ZhY9VHdQDWMldWVj6Dja1eJS5j6L9iMdoocyCrEwsEWxWwQ1eRrix/tCzvKIkCGpysfFol25tRA6t4/hbFF4BgBftZoz02sxqESxJVvYA1abzKZmEMrwlTF5A7NcI1WItpIo+9DGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbIJZXdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbIJZXdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A611BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750469993;
	bh=x/CBxaANgROFrgjwqifW1qY065IdDtjh1ZMPWSkwa2A=;
	h=To:Subject:From:Date:From;
	b=fbIJZXdG8oRFwBPa16rgtydE4m136t0R10+hokQHmU2dfuB2+AzvOzDkgM0phFQdJ
	 jcrjVQih9usIchQNX0c8iJbQFYc1V0QYBmz8UlIBlSzfo37ORqMIFGpU8MVin5jytb
	 Se0D7eMSNUAGt4DnyuIuxBR5a3ua5IRXXcKwHr+p69DFZ3ipLe00NfnshIveyZUnze
	 8R4vw7pHKHD54xNk2hLHB+nbLPDRAwVa2DJgD/YyofN3ren9drW1G4a7cmCnK4DQoS
	 Y8PbQb0+E6ZrfQcIJvXO6X2LIL6GxyZ4DermoB9t/BDxTpVBvjxgE9fCuSI3hwH7v3
	 Tt5kfM1FW/46w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93838C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046999357.25875.3755359186464957361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3577ca8ea2aeac7cd70c2815993bfb030734089637e40dda6a6bcb901c4f347
Date: Sat, 21 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750469993
