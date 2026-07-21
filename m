Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523E8415F0E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784662114; cv=none; b=IPxwDo5TBAeLCHBJWCBJBOU9iWGQXKg2AZpB0RSQWxJuKoCrSGEWuIA7RPp5cpm93xb3OgP11lyzfKhQg1ZgpVBXg5rGqz73LDfKQ4CvPrx//39kaVF/RQSBY7Q6316lx7oo/gDInoIHHFi/HM9X7v0GqWOgdqH/jrXXypphdMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784662114; c=relaxed/simple;
	bh=crYkVSdbHKdGCUI73NBZoLI/XsbmQsUL4Pibq46Vb/k=;
	h=To:Subject:From:Message-Id:Date; b=VZ6Xp+dcqyn/qPnqzu5IlY8KweCVPIDq5srFVq7RNI9bvqB5vJaSBsPBMVeIZTO6QCQBeRo6Miahv+7gQcF8Ez8bf2TmKi5OUZcrLSpU1YM1eczo4BlCudGS12KE/khFg7tZohPuS3sNSnkd2vHsmzcrS0AcTjSOCUwpxMuLytY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3TgADvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3TgADvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16B4C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784662113;
	bh=crYkVSdbHKdGCUI73NBZoLI/XsbmQsUL4Pibq46Vb/k=;
	h=To:Subject:From:Date:From;
	b=o3TgADvZt5jk+sMEgC+zXk5GLcmg9Y1UrpG6tR6yrmU+Yy+5zMjPsGVQ1N4L/ZQ4X
	 0YqeNhyfdzQgbk5s7JX2T9QNYppyKa0hHwesZvFKGc7dqAm/FQHbv/Cmts7tj1735V
	 qdbsfeUGTVXN9j0WppHyD9i/vGJW8fvv5ZHADQG6nQUpALIiSDbiqXjayfCkruFPbu
	 hPLXCTcRJ1nliqLc4beCaMhj/a4bniWXCwMxaUfbMmAySM/aU14CIKzKRXQ1DN1fAE
	 /SxNME5s9h2gbTnyE1LoO2a56Oz0AehGMc+C9YOxyLRTEoMTuLcVuSl8frLGSGPSLS
	 t+AxVJ7lLZ7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2D1C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466211370.7371.17811200934395356789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5c7a28e83c97ff603bfab4da7c378d58dda10fa4422e1ea2b8fee39c861d05
Date: Tue, 21 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784662113
