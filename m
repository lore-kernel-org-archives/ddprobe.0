Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EFD2114
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718431103; cv=none; b=LSxGDA6fSXQS7SVIVICCZmH8tkTB9by2BvtLumPY8wXSz1jcx5LLtkARw+lY2uF/yG0bGA969b5sFuu689wq7/LQSZDIoh1Nm9I9JiH5D19KtMFh3tLk0EC+psq0MV+9W9ozBMO54xSJV88fSLxva5f82Xh0JDFiO21p9EHdVBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718431103; c=relaxed/simple;
	bh=v7AUAXAToUsJRTu3qfkBitY5zNC1o+A1UA+1UJXOHbs=;
	h=To:Subject:From:Message-Id:Date; b=IpBqQ8IOVkF+UIPSLjOLbk+ap7CSLH51lNUpRSbjcmt3/u/TV708kq2La7WWvvr7qNZpCBjfVwRXemI3aaVZ4r5e45ZCK5BvB8ES2Eitgx1z7cywkggTIPa7kZOUEQOaoVgdo4h9cL6ZfyEVPopjRhx4a4eK0Erc8+jEmSlJKS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVK87r63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVK87r63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2CB9C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718431102;
	bh=v7AUAXAToUsJRTu3qfkBitY5zNC1o+A1UA+1UJXOHbs=;
	h=To:Subject:From:Date:From;
	b=qVK87r63OzPJgbHXLiEN7M559f95pjn5KNOebF2kaOEHADmVxKEf0aP2pDiB3V+EZ
	 xBZuJoxchPbmpnUqDKaDr+fIXoQiiadhfnwWgQCSxmwb1nB4Mmr7dPE8ScenoBGrky
	 6zpROf8Iou7hJsW3TfZjp+GLx31sO9Z2V/bpwDoOGBjKfhh8OYYDobaCFAfHYDZPbR
	 3qv29zWgNVsjf7tm8myjlGyFw3PFVBFWhSj0kS8XegHuVtpJ+Toebh8/Wzgw9EGLC5
	 TBjV7eW/950l4hXXlDenkC1k6tmSYTXZacJ/jUeg6/DXKea6OVjkwPoZaoQUsAMVZh
	 E1eie/O0COhvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCDE5C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843110280.19691.4947373721420218108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81002abfe5af60c3fce2593c33af2e52d1bbccb4a6c63fd5c59e2f54de1dc9e4
Date: Sat, 15 Jun 2024 05:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718431102
