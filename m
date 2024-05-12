Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E02A3233
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715553143; cv=none; b=ehI9rzxcga7z8cy2WdX61iPcgscDsz5KOo4o7jLwAd4PN4Im+3DzVnxybQQP6x7zU37qobfvagzhlnJlKX59AVZe0P1BZUZWP2mC103z3fF0w2D9b/9b2jDMR/fkoTnJ0l1q05Hyg6+nEwvD0mJdqqiymaZp9ce5/yc5j7kTcag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715553143; c=relaxed/simple;
	bh=EatDgXRNA5ZNDDaGGQYyQGyJetdFgQrJU+7lrnNwOHo=;
	h=To:Subject:From:Message-Id:Date; b=l3voFOSkQSCmMrlXoWEb2P0qxBeG1cl99vdxJPOgH4NpOOAWftUjV2PmBKxvt46DB700oagTgtJ3iu224aeF9FGmITkcI8FnTTFjQfqcdBMa4k6f3Js1D084Zr12tSzCWq4AFpx4IrKgzjWgrbEK62EntDzaIGjUfzondgM0I6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nC7Y6WvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nC7Y6WvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93C6C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715553142;
	bh=EatDgXRNA5ZNDDaGGQYyQGyJetdFgQrJU+7lrnNwOHo=;
	h=To:Subject:From:Date:From;
	b=nC7Y6WvCue0huOHsdyKictMPqRe82ug8ChtYqD8u1jFzaiMn4Ycfzsk6vh3JZ2nYa
	 jHrU0g+XoPexmiodq7owzM2/fezK8fd0s2SEl9cdX4KyrdbwEGXfDu2vYJ0xNJcdb4
	 myatwF0B9qDxtiymddq2b9vGvFVymOgduyjifnNAlBcKs8oUrMdv2ciHRHZ2LlVkZ7
	 y5Ff7ouIzPJASX8y06DI3PioS1XdDHgYmS+wICREDQDVc0Z8+nMi36zFfzWNdBFKJX
	 QMguOEU+5pXz/9hqAjSeqIrEv8oSrbO0RR29MQSwkMZ4nxhZvC9Gf6CDizt7cdol5e
	 FF7u8g88oaeBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67B3C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171555314276.3878.6784451505523247288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7b14f45dc4545007322ed7fa3b217f948267d293735b60d4657a7a3524e517
Date: Sun, 12 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715553142
