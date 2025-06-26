Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A2B239E69
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750921794; cv=none; b=XRj5XYqHxSm0q0O1z05u5o/5Ij58EsIZ9N4Gy9HzCA1FkpQ/psfMHpFfrcClvKAMQfHv7fxj6lp7VJmPEwBD8k0u5Jgh6riTEdbZBLszcGUx79SL4SaQYAm8+aPLIHWgrvpiOlHQeGlYavNle0xdEeIkWbLm9YVVblgo8r5rMhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750921794; c=relaxed/simple;
	bh=+LdXtLGpoAL7NrbFPOCHTeikp9KDETTCarqzLdSiIpU=;
	h=To:Subject:From:Message-Id:Date; b=ZWb871HbxWBxCaYm35k3aDROL2Se+NvQyLLjYi6maXq4y0nJ0r5gUIBWCir2Dv/PayhDYohuxwbSWi7KSOlRLA+uNwk1+7Tm6VY1KpT2o9xiF86k9X0Iik0vxwzwBZDodApeL3FBpBylotly6k1V24JBJ2AlhVOGbcORjHvld0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSFX+WgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSFX+WgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BEDC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750921793;
	bh=+LdXtLGpoAL7NrbFPOCHTeikp9KDETTCarqzLdSiIpU=;
	h=To:Subject:From:Date:From;
	b=hSFX+WgOy0GNCiI/0Tb1Prd+ihM8LRojUrC4EGf8eudonm68nchxAAhVznQFGGl1V
	 jbvfpqifAT53kJp8DOXu+AruyUw8/BmjBW0kHp2WxHHrL1dJry15xDCYhG849iIsn/
	 bm87wED0othTmPFM4tiHMm5bioNwko1BpLf6cVcSJX1UEuRJ1/pAVvVZbItf4dYfZe
	 uPrwSMv5yQ4jgJI0/t5MCnhCU1HaH/mEg4iNo/OOKx45BBSzvp9se8KBpHZgEWb21m
	 JfWLvSOs1L0SxWfUIrvQiTudfBMY9mzmwaF6DIMxLTYl9fDUwbEtllthN8fKCzWeYq
	 tky//v71HhyhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BDCC7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092179361.11378.15253577467445043285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91dcfcf156fa152390a34fa1382afdc490caed7996b9a60ccec322ba275df93f
Date: Thu, 26 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750921793
