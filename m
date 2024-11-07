Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0635321A4A5
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731021954; cv=none; b=ei7ZbBHb6ez22Mi+fR+Wi5xwY46wRm7ZDQc6FdI61IdvNWFHEFkO6ww2CfPf/+Ldja9A8k0lQhnflKt6xB+btYPDgSiJeglMtiiVbZ8yYK+TQ6/S9Hd+8EIlNYpQxHKhhzMrqxvW3utRrxkL3k0BAXbtS8HlqtZ9UR80LrjQ0cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731021954; c=relaxed/simple;
	bh=fqKQIvdAsnbPlR0F2fwn0tVXRcSm+uH4xnYz1qnBmjY=;
	h=To:Subject:From:Message-Id:Date; b=rWc5otbCIIBHE0HZcaHTI/ko1ehuJqviSOQQBHd9qdRQZU7cKHnq5k7I1f4i82BWXmUjkD5WOXPYKvWWv/jfwosrkDXUJfPjOx4QgSkWzDfUlTdzZU/V8EtgVgiuR+OQ9DEmadW9X/InGdstWESXcsiIZ3DGo6kMJXxRz24hRm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atTX52YO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atTX52YO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B092CC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731021953;
	bh=fqKQIvdAsnbPlR0F2fwn0tVXRcSm+uH4xnYz1qnBmjY=;
	h=To:Subject:From:Date:From;
	b=atTX52YO0uxKMHg5fNhm8Vmo1jmhvMPR87wJG2qngRl411IC2chbDPvG3azaG/PU6
	 SU8WNEvoxgs9bm2oVRzBmMb2c1ij4NosHrDmLw0hgluQ3Lb3q9+PszKY/MnU/bTbV/
	 LWzlDdH5Lp5Q6Uob8H7Rq/oU2tYpM5LK33Gjc0rlfUlWOe/fbDVD5RX6pb4flNkox9
	 2kxL/ZyEyAzvaJw8M+cysywVzIBDqd8FIJ+D7+ycjWtwJdU8633VrmO6Mu3szrpCIw
	 Wb/qFJu0IPvD/aXHZGfeLQB8UG6Z+qJGk/utFr+W+lODjl1THHsniQSo440PPEvkSV
	 3XCRZ0dBAvEZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3022D5D695
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173102195363.22494.2771901610954270175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d378a3a72a37bd3dc9daafb70b35c25e8809353232e050eebed30d806006aa25
Date: Thu, 07 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731021953
