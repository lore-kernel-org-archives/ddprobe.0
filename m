Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146213115B0
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770629034; cv=none; b=cV5URZAa9QtBzlGmA4pGhv62hnK6N6f+K8NmQyNfnTrok5Ywg/XEnadKiNDsJizo6lX5uH2dPaQS39z1hnvzFEYw4YGhOr+3P0GJjUlUv/AxZQJs6Lqw2qb4oa/BK0YLyqw3z1ML76MCj8D6ASLaQJiclfWT7Ixvyyz1Ygcj+y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770629034; c=relaxed/simple;
	bh=N86XNV2QXM7zJqIWDHOFwu4Bdlw/WhTBbm7bMDCeZqs=;
	h=To:Subject:From:Message-Id:Date; b=iFA7aAmTTzb9LmmMZpb3w5Z10VrLFSRyO3xtJqL5HnE9YOCHRMKc7PyMToN71Qas0EUuXn7FF6gzqZdjOkwOi2ldCk3yeVDBS0bfVm2ncEadIdHra+Y8OSUptn3WGEyj8LgJAk1kvmYslaXBfcaqMxGQFxm8osA0PKdr06IA4BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJTJadaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJTJadaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A712DC16AAE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770629033;
	bh=N86XNV2QXM7zJqIWDHOFwu4Bdlw/WhTBbm7bMDCeZqs=;
	h=To:Subject:From:Date:From;
	b=TJTJadaMI+6OpTrHqEjipaKFDosUNIBU1UT/0Sb6Se8mbbxNwMYag9L8ORbWJiiI+
	 CkZUPh/03iqXSAprX8IFo/DPywmICHUk407m7w1Y/yI9mA774QHUfc01zQswJ/Kf/h
	 sREHPM/kGPBS3TMfMa7Q3i4IlNUvkWyXAtHY0/4P+SGf4yUuxCY1jQMGBeSMYF0U6/
	 2ycvVhHQUh1UDDpTOSCZqbuJGELDu9wN5RfY6oVzLBnbfaOHDOM2lue2estUQqOVud
	 aa0xhzvJAu/mkIqtuB3tEVLSMfjni/N6FNPO/WkHNxLjFWtzV5EN9VOw1D5ClK37OT
	 l0LNHuZeEy7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F3EE78D73
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062903359.10841.4673068423405480564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2228b0bdad320a6fc2351d20bbbac832ae1e66da58f49a7f23e81debb0e4a036
Date: Mon, 09 Feb 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770629033
