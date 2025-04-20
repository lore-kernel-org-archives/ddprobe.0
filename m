Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586F1139D
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745165394; cv=none; b=dMj4iF8GnBrHNrAcYm3emmEmBlAvf1TdN157J+7SaHwrsqfapk/wYfpdw3dBPGzNN2dfoES/XE+69J0IEybhf4I1qmd9EoUMuszfsLWPiG0ncFR+jMx8Ik//KCBWjhXfBuVOsywEo9dmLDSSeDYyIuXANtxenbTOlAeUpu6xX4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745165394; c=relaxed/simple;
	bh=2B4a/KccNU++K9Dqf3z15v8nIYG6xRFN+Hwa81+cCI8=;
	h=To:Subject:From:Message-Id:Date; b=j8PFdki/cB+FDJAkAtnKXVoCWQqjmGsHlR6kLdjuIH0/R4Zkqgmm1fJAG6+a8vd7j7XZaxToo/5uksbJNR+mF/GZIz8GP/7kWneg+W6ePijhAjZ1fi2SfQhoTObjN7Eag6XXCq/FmO9Z9JrVYkA28AsTlqyJlvd4/eCX2NiqHrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePZbmAGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePZbmAGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81B0C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745165393;
	bh=2B4a/KccNU++K9Dqf3z15v8nIYG6xRFN+Hwa81+cCI8=;
	h=To:Subject:From:Date:From;
	b=ePZbmAGFVCSjF9fAFpx4IDPcFjMnTSChQWW8HAKn+htw+zn3n40ofoqb43P4DaIXO
	 FP71AM6ARLA8DuwkxnLUKFKoZ86Ui/7hw62USysnrEK5HpOzEeOeHzxY5MgpzfcA9U
	 qkOlt7OrE+4xs0XpXr8w3tnVjhAybBA252/ufqoAjJKd6B6TfAcshUm9H5xFrsIQph
	 YU26plgel1NOcrOLesx+U5K/aU/rA3o6nJ+BFbJkMZBpjokv8EZmI/P+XaJHDpc2PH
	 7xE9QZk+5HbRQ/db4fiwV4Sx1eFJxDtcDPM+YXZzoadcLvT1UrCVjebk2CEMEKUIdG
	 kuctP6npQZ7ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACBBC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516539366.21441.11462011363159058773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3c8337eb960210fcac770d7ddda9322da565c6449cbe286c95d1debdd2d906
Date: Sun, 20 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745165393
