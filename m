Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBD61B7F4
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762034994; cv=none; b=uzsOMr8x3zcp1PGIcxjXroFBovwyPOEhj8CW1ZbngcWTDElyhUjMyrz1mMF3rREugNrm5ccMQVy8DmgDKnVBA90T0Qgt1LWN7cEvLbAD64zJXQTOzEQHehP4RelH4J8Xv30XbQ9rIDiRTiNDozqRhUuxOsyI+0SxjMIW2CqN+qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762034994; c=relaxed/simple;
	bh=4veBEknDm6hG+YKtRwOtyVkoUzHKLpGoHUoSKCJCxuA=;
	h=To:Subject:From:Message-Id:Date; b=mECChSzI32jykeaKUe1Fs4n2xBBBxgQ4TNhvGJ03WfauWB4wR41mc9jfYTurcb33Uvzm6OxCClAJZPetykZCanedBVVvKS18ewcgX+WgwQPL4gvWakE5VJGyafe0ecPVDh7mqjUqx+mohf8jBqUttNgpKS/1H6/vOJCUJYRJTWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvK87hLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvK87hLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA29C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762034993;
	bh=4veBEknDm6hG+YKtRwOtyVkoUzHKLpGoHUoSKCJCxuA=;
	h=To:Subject:From:Date:From;
	b=OvK87hLKOUaNsCTvrv+fGXpX0hRuzFow/carQ2ACAg5KZ7Of+fv4oSc/Jp1nJBi7s
	 u4JSYTRYv2151fV/cPK1qn/F9BqXCA1mpPwalhXsEHcZQ8jwzt/g0D1+Vi2JCSP/lZ
	 o6pPzc4882B7dwH8jgzJzzBl8K9eNNIjk/Xmurk9VEKQsgJW9IPo4MNxNL8XNczsap
	 JzOoIMl2lrCHTw9y5fsKpQWK0LrLGRWuEyikmzJ6kxKLwpZaCB8cbtnQOm2EeDR6xG
	 1jY4w85Zu2Jy5FXGSVtiKeuO3BjmIqnTIUZ0DdIeY2iimZGEop5OpTNl5JWHYZfTnJ
	 GCOxuL5hrR3Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9772ECCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203499359.29936.16029782165133833253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6878295c0ec40933fd59a13211f1b00e19bd2ba0540e20b23f46fecdb8d51939
Date: Sat, 01 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762034993
