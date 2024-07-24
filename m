Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483D32D792
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721862954; cv=none; b=kcQnZYLVP/tLnKtaoqc79fnXeSB8Hz7UfcfVyinlY65bdxDd4EzUQrXlfyN4Ye7x5N6wP7bM50B41Z2k9z/RWyHdSICXlFOLp80u830IYBCZnmI5JrGWLR6Zc0p3LQ2Faxdb+S6rq7JRxnhU5Q0BeW/R44I/P58IPc+1LiKnsDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721862954; c=relaxed/simple;
	bh=Toc8zwJtYA0DZxrfug+VIXklf8ZYq0TeNxJu/dR8yf0=;
	h=To:Subject:From:Message-Id:Date; b=U1pzRkqfTOqmxftmj7dc9hKvc+Ae0wR+Mije/oH88LHdcJTSsoTN3QdfqhuDuq37WuselJmWRRa4Z1IiH/RWCWGdEpSSxEHV0+44tYsYkTqSbETmYzuLQ1ApwYSUQjHCg0xmzQKV6IyHba2IETbuawX/mzuDVetfDiz5MXheH0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfZp2WU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfZp2WU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E22C32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721862953;
	bh=Toc8zwJtYA0DZxrfug+VIXklf8ZYq0TeNxJu/dR8yf0=;
	h=To:Subject:From:Date:From;
	b=XfZp2WU9LESieYvveQswfXs+6mHTdWmT4k5RPK6d9TSjohp9demxzV+VTW9igtQhi
	 ySl2j4twQbcDrtR3FqVIQSS7VQHxW1O8UcyenqpKZnlJoSCA5OUmUoqsbg2ymX1LXe
	 zDKLrz0uLSuQP16sa7m9u3htsQdPI0trqeAeg59IKL25VLCzBrmFRrK12ha7QRdQrb
	 gxQZVwSenbs0DRtAn94CWw5eQQh4jSOhr5+ckxxQA3fUlBKDflRSpoVzvFQBpKPSWm
	 C/KL4D+ALxYoPM2kqRL+MT9yOSqi/6Syi1PXQWgyR0pPfSS3LZC/Z5+3YPK4VEI08o
	 ujtlXJyKnLN8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999B2C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172186295361.29348.9081741846981098031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d587d5a1e1309b259057ac63c11bca1064045541f5243cfcd4c823f2dca79b4a
Date: Wed, 24 Jul 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721862953
