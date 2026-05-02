Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B54C386541
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777742854; cv=none; b=Xo2fieI4BoDzGa3MVdh/TJDixbuXR0ZfJVR0/VCTsajZyz+SJynQBrrbdU18FjqUgeXg2UCZXlj0UVTVaTC59IfhIIlP72LuUu9DY5HMK8DsSjO1idnm3Se2wk+SswmUHBcum/xLrO7xBZIl9TPuRmurn+Il6Z9x3R1NnC+aYqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777742854; c=relaxed/simple;
	bh=wysJIqvvf9ASEjC5Tqcrv7Vg0fbba/WSrfCVp5/C7M4=;
	h=To:Subject:From:Message-Id:Date; b=H2WG4lNn4Cxs+jfQS/PpLBuyHZ2aO92+fWyHbSAndY4KeRP6vEwXOQqca/+rQddDrSFIERW+tuFJ69H04sLmnAEAPdBgwyO6hHvaGRn1mzgjMmTIcqLlMAVRgu2fRdp9LJNnZSbZ6ZFvBI2ubhMKNzXRFQYbUws/p++U4eRfZvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smAACJLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smAACJLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8839C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777742853;
	bh=wysJIqvvf9ASEjC5Tqcrv7Vg0fbba/WSrfCVp5/C7M4=;
	h=To:Subject:From:Date:From;
	b=smAACJLGswnyHT7lNi+5s03uJ1eyf91SaS6T6lSxaxBhbWt72Ip64XgoYThpJUi3e
	 oqiCfpNwpDr2RLSxBMHnfXYHZy+FInkVGzdFVed2PVNQKvGq8IF7CdvhbrtwkIVMvO
	 G0/vt2DPmj/sTkblIm6CA8QndRJpZEYihHebYdC+GX6W7MvrWaHkDmnMb+hg76fZ4C
	 r+tMyMtWS/81QEn3X9n3cLenAh4psctro2AkJDfvhJtP3BCm+WICU55uURMn8heOC/
	 e8nT84sAxYhmquLJM/DvNfHoDIQ3tUCuuffScdD9ZaFzcsfGnQNEH0VS2UBxQIX7Mh
	 ul2U6QPAn5nsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA039CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774285368.16334.1704112199040496106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c030477ad790ae3e72c3d9a084ba61b6e0e680f09a0a86eec0a4a3efeda67fcd
Date: Sat, 02 May 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777742853
