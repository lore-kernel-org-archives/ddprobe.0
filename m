Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153A41E8332
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765292574; cv=none; b=HhO2FqgedwX5BJ8uSks+8ypLyQGbSgxYTclkvEEiDqvbYoikZz0jHDmCuQzPCEx3tArXOMKONnjQzoK2Egmrky9MHmUK4LUD55uxVTDay3K+MRaq6C3X3R9u34Jyzt7fEH4r8MhZhq04OdlscHjuT5HF4Yf/927c/5G48BBc/Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765292574; c=relaxed/simple;
	bh=bXRrqXlKR1TsafWIYPmArOmNk9UBvx2GIUyCdM4+Saw=;
	h=To:Subject:From:Message-Id:Date; b=hbww7Siaskjh2+QsOtrBOOC4CnTF0e/c8lwXU7hRohRnhsWbfJc5Z2BhJX00kPoZ2UDCELoo4+UfvcG1POBUUTa4Tw0T/bCiOozk6NuLTuKegObqcJNyrzuPKEf7tI3vxJPqETy3rE8oUvkQ4Fqt/nm6fImokJw+cm8yNdeZRWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFyXlUQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFyXlUQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6052C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765292573;
	bh=bXRrqXlKR1TsafWIYPmArOmNk9UBvx2GIUyCdM4+Saw=;
	h=To:Subject:From:Date:From;
	b=aFyXlUQxJURcrOh11DQ6kfDSOLf7IHpDJQr71QC42zb2uTd1og/XRD3ivZ5cY4sbE
	 KzQHF/FSKs23mm/cF41qnkQfsXcvgJrFg+8Rpgo0NNId+pbm6edvzIhEoajORlv0kr
	 iboFmVjzDgOoFTqN14x81olcZcjM2TtlysoiJ4Ybg+ChnrHdO4QJrq1bRRi02WiOrM
	 scYTgslPVJk2Dkl1InDy2Pl/aeMLHyF/OpIKkXZnzCHltt2b6VgGqBBr84XvNm5UOo
	 gX8PPLV9mKkhpeSfu8EtBpX+Qw2f+1jkivd8J+AuCTEj39rXMzZ3UGCyAZeojO7qoY
	 9P0XeN3LKFbQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9309CD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529257358.8870.16614420699864786029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a50ae53434f123a8775a62fc7992ffcea2e91d5c31f6b74bd2d6dda74cb0bb
Date: Tue, 09 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765292573
