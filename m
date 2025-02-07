Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA7F194C8B
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738958154; cv=none; b=qJcO32ysJy1UedDEMcxPSskX0OVXUz4KBqmLpKYAbxEllOvHDe0fh1WqiJ5PLRNAEcvN9VYl0WZsKwzMOZeG4vaACKLgqvtkfBbDP/Z1E0EY7bcAvWyoBdg7ARGNE389za4f8U4/0LhQrlA8ObpWTxZLqW/vg1GwB+UUOtC+Tqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738958154; c=relaxed/simple;
	bh=/uefN+XTSM0tpji3iBMdW6VtHRjLb6J9SRfQvwR0DBY=;
	h=To:Subject:From:Message-Id:Date; b=flUNHlpzo7YySvOp5+UBHOrGb1wSqG0bOlTOuzf1P+ac1KvFflGUnJFHYCVcdNHOhobiDuuAxjPVfdQ6tTOsx7W86dfdWq+SDJgQahLyyfaJ7euh+LoKnpGvto6oksj2Z5oTnZFr7gGYI86O0bmIUJkEQ2fFfWEUH4Mmzr6RQIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRQyR44h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRQyR44h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EFFC4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738958153;
	bh=/uefN+XTSM0tpji3iBMdW6VtHRjLb6J9SRfQvwR0DBY=;
	h=To:Subject:From:Date:From;
	b=KRQyR44hFOpnzgh7oEQG4Iyj0GZJvp8hbQk8h8y5MUqv3UPpQmOjCD1ah/2zmuDke
	 EjriPmQaKz+P+rQxq3pssYXKf4pPychjqN0Lp4KfazaLz53l/+HG6qwYymRZ2yiHyK
	 giKF8Cku8V0r3s6uLbBvFn4l+fyYUck5TS9BTYjnaRgVG3cSsvp0TX2D7lxmJoMFqc
	 ELjQrbSS1yQqpg8AVZqIBm2VXs1tBt1MNWu+KrqYsfYilb93MLcetiABo4demSfVv4
	 KIoEh5wmdlPu18j0N3amPWAIUbxJ5UfGsqFhcd9MO0UYNlQ4FX/EbnagW7YcwiuF7e
	 Zjs42s0ekqUxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F8CC0219C
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173895815366.27488.14760330905002109147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a185f353e4124e723a494fad3759f816adebf87b2d9eb1ee39a18dcd3bf18bd
Date: Fri, 07 Feb 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738958153
