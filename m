Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3173148B8
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764817973; cv=none; b=AMuxrtjYvbXWBahzcQqJ8WceLzsifhIrZfFp7yqXE+seWI0VplMOfyPymuTCJnOPR4FPelVZ6QSfdhxc2hmvpidZMlVsnOS672sbCU4Bf99UtPPjidNITAUK8ZTAhI9aUE1HwS71LofjrKzpbqE+urKBRqV8U95VR8QFo8jI9Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764817973; c=relaxed/simple;
	bh=bxAhlKD3n9gxpxS3FuOuwg20dInuW/eC0Wjo1Nu68rA=;
	h=To:Subject:From:Message-Id:Date; b=qOHf/XXhfTC88Xf6mT0jdgmzxNu5kKQC6Do7y2nf7l54kZU4eoUktgzhbWVTvsm42NEG4dIJhPVOa+jgYkkmpDGDlJzyF1UTTovPLKYycUdjvI9BwWXrCohm7G5ah692rgZqW5OB29o6DIT/h/RKCw4YM5/PU0rBU5Q1osTVu5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZx5BTCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZx5BTCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC76CC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764817973;
	bh=bxAhlKD3n9gxpxS3FuOuwg20dInuW/eC0Wjo1Nu68rA=;
	h=To:Subject:From:Date:From;
	b=uZx5BTCD8uqNr9ZecFN68s24g/JOp6Y2AYaRKEofFQjMjBSOT6uzA+5Ar+9MX0sdF
	 +S68x0QxARahKifeVoSq8ncpU4m7IaYAfg6C0iy2CIGDyybtCi+OWQEEFLaOifI5XD
	 B4w7LTIsLIOIPi+1cHOsGL9UBcPsYbV2mtxcHXQQwcMH6jxAQFaDbWwzLEnGQZmSdX
	 L2B9s0D+svLVKlMmffgklaRwiSrqCi7bP7WNft/2awHrh5BrV9ycznhu7GTvy/H5EE
	 ZBY+OLFr1xTXuMGl+yXQTqnpVeie8t6S69fqBl6mmbbdsBeWe/uHFj6FOucIwJKBr1
	 m9chOPtcj7geg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9590AD1CDC3
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481797358.18064.8055720344647019254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0337a1a329195e09b3ed2fd8fd33f6e622b9e1ea98f99217bac0800995f4d70
Date: Thu, 04 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764817973
