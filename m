Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D28A39FFD
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 06:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713423563; cv=none; b=qXbPuRsL4M+8PiUwt4TgZBELp5Jc17/K9hOALek7+kU/e+HhhXrmndS6w/xU4+D1Xsf9TQ5qbHXCuJIYtbAdI+T1cqf+LJruNA87OWVqwsNEMN0mtYqDi2MVTZMqBz/M7ZChm2Wez0/7nFPQfV03x3FE8AySmWc31ZroKLe5DMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713423563; c=relaxed/simple;
	bh=V7CDwD7H51w2tYLwpox1Po2gxpKtRqkDn2aYjx5RbSU=;
	h=To:Subject:From:Message-Id:Date; b=TxrPPAL8uxBCuVQ2nn1WM61YQfMRKjhbr/1ygd7XdzqkFhL8b78JMiDnOtgP7vuMJmIeg7ZO1TT/OhwjAw3D3RmC++Ct7rjvI9T6B3U3GlRrfdY2hMKLtaBKQK2RR01VfYASgB2XsX80jO5bcJZPJ2Ut7sv9gq3bUp+FKiQ0qjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jnb9wW25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jnb9wW25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29B1C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 06:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713423562;
	bh=V7CDwD7H51w2tYLwpox1Po2gxpKtRqkDn2aYjx5RbSU=;
	h=To:Subject:From:Date:From;
	b=Jnb9wW25LJVuGwtO8nHSpB0dTp3YoGishPxNBhgDpsnGaiUL/Drz3u47eNuH8SAFk
	 cFs6m/y9RDy4BXEErOc8ekFNncYlblYMggbiRkJ1jbXFNXGuYQIC2UVDx6cdh/Q0C+
	 mViN9fg9NqPZ3Q4rCe0PC2opEp9TTQI5NjDurknXE65KVOCFONH9st23Yp7GE3aNRR
	 IyW9FWyKEw+1IpfmPMjujFemR1++LrYe/RvYXy1cG7OPXlEwiJnA9KaN2SKLBsOqvS
	 mrY8icKa3SwTSS/AzqlR7fHECwnJ2gPTcDZm5HZgVZ8ObRQCQmKFZcBqE8Z/EkbVyR
	 6onRYJsrO3wjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF95AC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 06:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171342356277.9344.8658190373650172718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba10525c7e9df73f7af2f308a0b3b7a1acf3658719fa876251746c5621c1029
Date: Thu, 18 Apr 2024 06:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713423562
