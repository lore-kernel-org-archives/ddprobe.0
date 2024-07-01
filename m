Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432B384A27
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719834923; cv=none; b=f9fSgomPTQFpwVdmRZ1DM6Lb96wwE5cHpvf7ax7OMTYvJEnF5CCL/2s3r4CzaVDwPeSLsLbjim2Txy4+O+HzWvuG51V9NHl6aPldMf5J/uPUEbg7TWeYTyYiIHSGRONyfqqPMShpjV+AKTS7L/gbCn/qrZCsbUdgIWrPzF2nF3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719834923; c=relaxed/simple;
	bh=ho7/TEGaqkQoPsZbxT48LEDQZg6Z7fMOWX+a+fOTfHw=;
	h=To:Subject:From:Message-Id:Date; b=Maks2eu+BjylzSkXRWJ42P5CgU5mcpJZDay45p2B+0RToNstWEl1j3LlVHcwFdah/jbcmAmRNvm/ekdVNXIaZBEv1dPmDqcLju6yHvvveiJdIMX8xERfTm6zTp3XKJCBaVxGXbpB8PjqA4r3Uj/XGocoyMIrKmUWYwO5S/jt6wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RY2SC0D2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RY2SC0D2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D776CC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719834922;
	bh=ho7/TEGaqkQoPsZbxT48LEDQZg6Z7fMOWX+a+fOTfHw=;
	h=To:Subject:From:Date:From;
	b=RY2SC0D2ZqP77FB4mthxVGLp4TMtnP90K1tf6v/fVcroCgS2JpddUN+U4Z2w3Ud/z
	 0pWF+LududU8MVekN3yTb6630O49eclPgCwUbe3Wv5NDOZAt8aO1KtzSIZZFExQ89Z
	 eoUHJ6iVW/Nz2EqPQimkXpB1PGS4UxW4dnJksu6YQCN/37uzHgYYRXsBnx29jMdNkZ
	 nEabf5/qAay9G8J9UUDrx0hsUPYnn/XSMiOymKsMO1JjjdjJK5M86Ed76vTERKEz5t
	 5J/Ro4dklsAfKlDquad7JNammxrvTD5/HUqardLDOnBAnjXcw6HqFlsKVvPqO2ox1+
	 CCo+0nMpt5v5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C9FC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983492280.26815.2418894946364703789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff1d943d175de475d9d3f518b9edd40c5594e93bf0913045da6acd89821c0b5
Date: Mon, 01 Jul 2024 11:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719834922
