Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003E32BEC57
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755065394; cv=none; b=hDaHqdlpAiYgW9cgmq8T4BPHycZDoNsu4B0RMftC2zZ5VNUJ8pvP/OizZ7us1X384YCqGAbh2UWsNi/1eeU/e3SWcehcZsnjqJ+naJpqPp5CSz00v4txdctzs7qu+umfcOu57rmHo051RKGalac3bzUdeXK04XNyFP7IJ4Cvecw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755065394; c=relaxed/simple;
	bh=gsXjVI2gkfV8wRqafmTF/S2+QA1EihQag24HG1OPSOI=;
	h=To:Subject:From:Message-Id:Date; b=XS75JwN5GsmiECBMQEc/BHepucPRsgmxNlPTMrL7Et59R8KdhiW4xdGBOM+wXG0BoAlCmhxcj7BhZjO3m2a+ye56Pp53r2Qru12P+KcHJFGivm00N2IFIjw9eCTiwsjsuA/BU0Cjs8iQuENii7ovacjMGEdx9JiM0HMneBdFpnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFNWBoPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFNWBoPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0B0C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755065393;
	bh=gsXjVI2gkfV8wRqafmTF/S2+QA1EihQag24HG1OPSOI=;
	h=To:Subject:From:Date:From;
	b=aFNWBoPZDrRuZuLmVcuy6tAgzxic1ynnqqgVJ/+oWHXuRAkJSYitXdi5Npp9wcGmy
	 SB4tZQz4Takz/kRxfQBxNHyuM2DYGaWSPLGLKR1uh4LHBeRDEz1ojOTqJZrGZcZ4qv
	 bqybmb/q7r5/APSZtG34cpzn3V6Jw6VFk0hINVVkDguI2t6Cfs0eG2MPjXb7EuhGBD
	 dHb5BP3j/QydXwx3fX8hdP32gSlJPQ5uGHS7MKLkKvufqa+iq3sMRDBqPm4Wy+C0ku
	 +f9SDNOAz59mHMLoNQ4G9YmQAj4VzW/FlqNfbjYbH9sACIgNgWAyD0NLb3ZcwThZPz
	 gzU0PvhyRHBcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2C8C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506539357.22792.16619428960299991458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82decc62a975a54ad21dd06ca3f08dab26e47c288cc5a1374894ebfa9b6b689
Date: Wed, 13 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755065393
