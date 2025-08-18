Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B9931B139
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755516594; cv=none; b=SjqEqyhB+yArDBUwEaAjrowAeF188MS95fbJ7ohUEJ3DRFFkCiv+iyZhKFA5kRAccUWJiJCJP0VND4p7nvKe3LmzNj2MfiSl/bS9nPvMJ7m5sj6VWj3TJhUGEZ0VpGIK3mr3QuuzflzQBhG0JgHOrOj5mm2lhVtV/Bf0zIgYW28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755516594; c=relaxed/simple;
	bh=ZAc8ouybZ0oZ/ooLN0/G+aDlD2XJpTLeLXr6b5OX6Zg=;
	h=To:Subject:From:Message-Id:Date; b=Npyamygj/GzhnUy/dsT9Oia8vy1VKfBaF0IbKyMfdTip7EVTiJ/sq8Y1YO+WH5XQfP7M7Nfadh7+h8z/saZspvRHPRExUSYSRYCpZidK9O/OML+qZxdC9qI3vbjRX8R/J8awcBRO0huB577TS7/nscNVhBH1xzqC/fAeQQHlaRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ms5qGCoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ms5qGCoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A160FC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755516593;
	bh=ZAc8ouybZ0oZ/ooLN0/G+aDlD2XJpTLeLXr6b5OX6Zg=;
	h=To:Subject:From:Date:From;
	b=ms5qGCoVFXG1KIN8rDkk2fhvDSqXMVkLR4P/jQKnHThOM9ppiQoIoA5rN94kyWNR6
	 F4fHqqMo2XEEptYTD2wfiwFNmny6mUjfOvZfcuq2SW1FfY/1Dq3WnTTJ1VVJZfz/nB
	 m6zJqfG57LxKPs0pf5cqBxRAw50nkF9BQ1WfMD3eazOjhr8eg0PQL7we3hPle/MpAB
	 2cJRIetla7ZORwUl5yZm0RbAzghZf+sqpo4l0Rh3YFmnnGIn5Cn8ZPfjbyI2ddqyw+
	 nMdo79WO6Dzj0TNOwjUdn98+C4uHxFkjUpOyaV48U0Up2UMZ9b20ERGHyph+3NFpnL
	 6xWVlcdrEQq2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D3DCA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551659358.28474.3885152853969432722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58de095491f373c77b84be46f0e9a1c4ebe40791e9e885f9c72d31366bbcf3f2
Date: Mon, 18 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755516593
