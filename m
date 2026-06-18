Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BD11E8342
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781744194; cv=none; b=K2cnujal0DB7ffhwFSqnUUNPQS33uMIwAkHlf+c6m7wFgOyNSvOxM2/4szF/IGUIxk6YfZ0GAHtPUSvLDzmfrGbkT8n5eY/78yQSfQMNRYoitFy7ZuRdg5MTvodEFWLS23nwP9szoySKv2so+l8bLK1LaZuk3lUjJJxC7G2SNqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781744194; c=relaxed/simple;
	bh=Pe4FMVIK4/S49obfUoSKDSQOSMDdRJeCrin/mmVr580=;
	h=To:Subject:From:Message-Id:Date; b=P/aWGgbW3hcofJUc/3p5Fpia9cn+hOs2IPQITr5crfq51QneNvqzkGVmKOtg2KJ8R3JUODUnIPVaVVVey9m18fG+7NfrUxuRVeEJ2SmHFgWWVvJEKzdzZ6uM5tHgBjC9ZAvoPHVsoz1xKTrIY9wkTjm94dIZ7k1ajP6S+kDQA60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp72CKBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp72CKBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BABC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781744193;
	bh=Pe4FMVIK4/S49obfUoSKDSQOSMDdRJeCrin/mmVr580=;
	h=To:Subject:From:Date:From;
	b=Cp72CKBnqIzn+PUa7YyyvteWp+o5gBcvRbw2XSDxnuO5QV6O3Dpl2Ff7qdlUo68QT
	 DkyKdOtHaqoBnmBB/UxaXS+MMsfceveJ/qIyKGn9YNnDig5pQVM78bibTHuwXi06U5
	 EgD+xaOuqt2SoosPY4Aj3kRAoY0AXM31eA9cjpYPtDo6qfKb6hBFgXGfqXpcQmaM6a
	 SqKKWDb1Zr2MJGPgTwTcmvWsdQqb+hiclp8ILki2vUqN2n6spC68ABymWLS6vaFZrk
	 f9TqQ2YeYRDYI0T4Rk8SSq2aFC2VjRAH8h78HQE1EX2fW9hgwtfdgeTPGjkOJ0nv8e
	 AwCJyeRcqJusw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC302CD98E4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174419369.2219.12902741571404256159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87149285348bd01a10e09f37db74f921b23481e1e4352b7b584845c3f66c2cd3
Date: Thu, 18 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781744193
