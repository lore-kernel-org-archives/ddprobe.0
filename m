Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F1413DDAE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774162494; cv=none; b=m+52DYMvOPhK8y0Bck56MyTOah5YZxBHaL11e6nu63ByIasgqk25AGyLyl/am0jAOs4QUKtg9TvUZrWg349tvctgsHSq/hf7iBDEppviFhluXaXUTWtpTp+Ea3as+35hgDAsPiiTQCvLASlQLFgaUajJgoHLzMVBpVYDSqofV9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774162494; c=relaxed/simple;
	bh=/FEDQhWqEt9mxd84tSMG7e+7GS6cVxO2b15ZkIHGC40=;
	h=To:Subject:From:Message-Id:Date; b=dBfArk43hGQkM8swfHg3rWD2L05WLtVPGZLk2Ft3Wo6BCwTgJjU6rBqHE/N/GuZTuLX/5rDmz3kYgHf8+fVYMU2S5Gyyk2Aw8mdWDsc1FNE8WtfjLQ//rRIX7jaZrvpTJPlzeAntyWHXbu4WsQY7izQDQuJCVtc46Hf8a1h9/js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPWRHRzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPWRHRzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A179AC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774162493;
	bh=/FEDQhWqEt9mxd84tSMG7e+7GS6cVxO2b15ZkIHGC40=;
	h=To:Subject:From:Date:From;
	b=MPWRHRzBvuFGwjEPAZvEwma7soBnn8OtRdTZ3/W2yT2T7BQpAEN1NqC3vgjVgOrDj
	 saQPodB+CvFPm0jJhXj+eNp90le0RavD9nwgq4EkW2OgDors1veJYiNuqzoo13yzWZ
	 t3EnJSk8UUZ9Ohp+m0a1NXBm7jr5QPJg1NzQT7w6KSc1vYjF6MrR8WrTKN+zj2LYv9
	 mk8KqOcYcmJrweb/PNEg9wUjocLo1oj/dra9F98cSUBGIectulekULQtkPdi4KAiyn
	 ESJ4w39o4NwPRdWLtqIywJGMFseZ2C0x7dn+5yS5RGO0ccHkyKSRVNBhgA69Ng7VLv
	 WLgu49PIkfSoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E72CFC72AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416249357.13629.14373568906808806059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f335679f18ccad9e4f83affd34919ea997c6ae087b0b2b3adbfe3c23ddfd9474
Date: Sun, 22 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774162493
