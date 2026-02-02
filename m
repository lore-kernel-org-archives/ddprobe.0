Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52125315D58
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770069234; cv=none; b=dkc5RZ5iT+02+jVlBwO32Jrdi0vVDZqnoV6w8YAMTX1/DPjfZpNPzLBtA6Ue4JTb3LGMI2zNXk4nn/pyJUAfWDQsYAHz6LnNqJCFteDYmof3Ym7bTs/LOLTXnhvAhCvHNBdzfGm9UHTFnKD+iY8cEx29/01qssFdwx7Bu6O+vAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770069234; c=relaxed/simple;
	bh=JNXjJ/heS4Ti6CG50X9eBedwxfu6yPajmiTuwR0JOww=;
	h=To:Subject:From:Message-Id:Date; b=tgBLkR8q1eDbj5cAzjLzWtJZHQaH8VOpTfVk/t3AgAtUGBKVDTxlU/P8F3Tv18IqRXawl5lMbyQI/F+9/miaXSXNxnvuYoJQmWQRPcwuv2KUnCMz6VJEavFxvQSdfkVziC0Q9CaLvQmgMtadjSQAvyvbuGkpnecj/9gZr3m5omc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2bSx4ag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2bSx4ag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E95B0C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770069233;
	bh=JNXjJ/heS4Ti6CG50X9eBedwxfu6yPajmiTuwR0JOww=;
	h=To:Subject:From:Date:From;
	b=U2bSx4ag+FGNVqCAFmfxr0iwQhLU9xBYYAOz3lsVAfb6e+hUiIwF7mZ6abYR8ouk+
	 ChDcF5AytPtFcUo1tVe5IPiBVOzR8Gc6JEholYM1Pg5dBkBDoePuFB+sTv9h2asBmT
	 1EPJxXwmR7vJLWhJQ2KDxB84na1ChdOrrShmpG+scpWkrJkrM02mxqi1z/C6TV6sgc
	 sTsq0zqrMzXZKIaf1FIhUM90gEY6LPaQIPfbXEbqUnmCuY5VVKxACbKUJpRtQRcPIU
	 uxGpjfYxKL89ZWtDJwp32sD52/1VwvFc1jtNFZp4PecNPW8rzqqKhBShWo2EKpYenz
	 eCmYtPuUxCqcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A696CE7FDF0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006923365.2343.2847198334924699959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26943711daefded743424debf17312fed38a080e5e6a2578b8772c45f0ace350
Date: Mon, 02 Feb 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770069233
