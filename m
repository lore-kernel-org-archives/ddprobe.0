Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244B33839AE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746486594; cv=none; b=L+3j/abwPx2KJLLSJ+s2IsNMRQ9k8w0FNQcdByAnL1soCf3L8jcVhcZCoV8YTmkNLcqzcpg01v2SUt01s0sfMS5I2dt6AjT7zc610AoaNQgpdfKIJv19EHOpAbAFZjsWS88eieKpVRUA0jZE/ZlTfHhJ3ysXTuX8lKjNB0x4VcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746486594; c=relaxed/simple;
	bh=lg+tz1hliBhMn693YMD8SqllnGn5/x6C+PCQGvSpT5U=;
	h=To:Subject:From:Message-Id:Date; b=bFPbVRCfCuFbYlQBY6ENP7iqmVq7aG9UBtz8FCqNsjwf0b/+MxtX8Uf2cJqNe5T5QToRLxKAF3v+oBu6XwyFQNwYbJJxODW4DfAh4w20YZJ9oJzlWoWZE+ELwJSXybMhuF5+6tc6WfnKVORNmF2T0RXf7t5MnkFN+B37imIzzQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir5T2Hcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir5T2Hcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E3CC4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746486593;
	bh=lg+tz1hliBhMn693YMD8SqllnGn5/x6C+PCQGvSpT5U=;
	h=To:Subject:From:Date:From;
	b=ir5T2HcqLgcrZwaIiqmVC0irDJM/Lv3/fRF6KAFA45kFN0q5X4GZJADvDKKcQnEc8
	 nZ5qGXRwUvMonq3MIaqtaikdVBAmIG+/k3GCIHg70GPGyuhrgOHUlblgcQIJXpk5LZ
	 QNNN7phmtKwi6r4yS+yKOtJyMOqt6WbaJ3hl3cD9k3pci+FP3lc8Y3UxlINHu331dE
	 q/6zr6ez48WC13Arp3fJ4VS4z+tCPZqgGolFf2XZOnRNEV1rcEaH3bPEJVbwTYMWps
	 O+u+n3v8ztvjDV484cggHhD+3deALPEQYwETgKgPHI0fPT5qmIrMlSRTSvlZywfol8
	 W626VW1K38Ijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE1C3ABB9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648659357.18654.8411022699001356212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd11b1af970401764bba6a585c7d4b8aa73a5874a775df5fecfaa726f5111ec
Date: Mon, 05 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746486593
