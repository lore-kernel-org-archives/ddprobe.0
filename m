Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85654E50D8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789587634; cv=none; b=hCnyJ43dW2B7wwgUSS2Ld3JOzuH+t45vYjm7ccZQ6RJS12phlP4dSDtb0XhMw+ushQEWEV7hjPzIapqmEkRqdUs7/5vn3ehOfoPIWoKgPzO1r8tFJyeiLaEzar4THUSt5tfC9AEAyTBN7/QZzFd6aEwMrTSJ83DMgmA7Rnfh15k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789587634; c=relaxed/simple;
	bh=dVZZGwgwTCWtiPCP49yDp4q2FW8I4NkGRWOLR/644TA=;
	h=To:Subject:From:Message-Id:Date; b=cXIedGgv3s7TizpGJfSkPpb/ews6Bo6du/DdRCwNPSeqW3/icp4sgoDE4O8JHwzp1kZtGPhT9Yv73gvFWUxywjNLxiN9hGWPo7xLcFe4H69Q6WbRD0oV4cw+5vkMFo5JRDgewPjSr+2FvJnywPQIaA4Nr9fiQ7B91RGtCNH5TAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kdvkx2eT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kdvkx2eT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CDCC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789587633;
	bh=dVZZGwgwTCWtiPCP49yDp4q2FW8I4NkGRWOLR/644TA=;
	h=To:Subject:From:Date:From;
	b=Kdvkx2eT+KW/NbDvgxR7N0/02ivCcVQ1ci/aNPa55oTEng2rOUgEFIxFoZw/4PaHD
	 7UGJWp6YCd3jLTGLOJnU/iyTe7IqNlFTM7CKe1K6zvFGvDiHj+AhNjpp0SiEEw7VbM
	 X0KsB1ySR5CR7UGsI0OLJE0RJr7O9Jp4MFHQOIhqu/dW5j3khcI1X3oKxbxsEuteQk
	 2V856GktrggRMhmeZrk9fbE3EsZPGzxGTQ7FpJo+c83wwAtiy0Gh9tJFWKKdTahGIi
	 uOlAvuMd/XJtiFn3D5j/oani+SaRa4rXtnXit05zw/6LU8qm+g9uXnHqenggrwZ1mR
	 JjjOOiRHC6hWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3891C982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958763369.13234.16681361263802444346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64bdfe4ec4a934c943292058da9f3b356775f6ac87bc47e0aaab5011b29bc430
Date: Wed, 16 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789587633
