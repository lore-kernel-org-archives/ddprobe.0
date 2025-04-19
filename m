Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A9217E
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745021394; cv=none; b=F3GdWJ35C9h5giLM5ptjbB48Q924zMCCDqHd1ALATlyjBbon/2J4pOxmpP4JfIs9nRQISV6phRPXki/PsxWHULbipTGkkWvfHhJLUJqkzbO5six2gQqbuVCr5sqPEdJA3EhfFNLdLYGxhJfHeopkoe6sm/63usE6wI8hF41mJqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745021394; c=relaxed/simple;
	bh=15IPDGzqvFxEKPo4U81srUgoK0kIHz2HYT5PcbleKAQ=;
	h=To:Subject:From:Message-Id:Date; b=Vm947XoU5YbNMSsDMLzoTSla6EePELDWKi4KDAiD1evE7o3s6Jf/YZ+Kbtg+3cuXkBjiF/sea6VL/wy3+3Ra+Wb5ULwR/wvuCnGjkI30QmD1TRxKkzdwS5hkYKW1EWHbImedPFS/kFK8pK6lqmcdebSq6lppoKIOgA44bSKd8Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjjHZB+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjjHZB+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD6FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745021393;
	bh=15IPDGzqvFxEKPo4U81srUgoK0kIHz2HYT5PcbleKAQ=;
	h=To:Subject:From:Date:From;
	b=DjjHZB+Hlog6RjrHNk3CvHZlUMRUl70uf6k9WvQ2cEF4fzoc85COGvbl3c6/WOwAB
	 Hp7HZjAM2ipagZYkZXYC8JPA+p8e/Ch2WSN9VXH3ZAfh3/HlVjoKKPjSm2VVn5kYqx
	 ngTdCZNzHfC1/XNZCee7THaHu+s7SiomXow0KWbP+CMyP+2kzsyx6TzxAN+YtxIr4H
	 cQpy/rHpE5SH6K7M6HYw9NZjeJys5TELbcQw5fDWSj8seGJDIFfe1KDEGMUtVgFClE
	 ZFh/Akf+auqR73zUUiv9baFQktw8Ohqfr+/e1AIEUvjkR36Xu1fBFvHUMNInuS49hv
	 Eab1jVlzff+Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9489FC369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502139360.28301.5843832612599873383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b97d4685698cbd9d33c6c8088f1386f749c60ff016dee335c891e90c062abac
Date: Sat, 19 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745021393
