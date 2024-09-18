Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3790E27442
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 03:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726631155; cv=none; b=L4uIoUug/94H4cfqKo/Q0eZjdoJtR1Nd2XbfP7HI49NKs/kpkVqYzTTaqjJtW0D4GucCKGmvXzhKBuzbV1IOSXjW0+hMlrjK15JnKDffVneArPpXPZQaKNhqBMbcyaawTz1IcqcXvs5gLz1AgE0hTA9hrEM9fFZ92CF7HYd5X2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726631155; c=relaxed/simple;
	bh=+rEG5S4zvZP4a/unPEbD0wOhxlI8Wc2jst6eTppTYeo=;
	h=To:Subject:From:Message-Id:Date; b=maq1t+ojGysW1reOrzwKRXy5zVfxnQ4kj1zMLA3crzMQ2yhEs0As5p9Y9IykZquzwiI/uxS8jimgmgCFqzQ8+Csv7hlw7C8HYqMkrjUuZFwXQF2RMn255O5nhnF+3IGMDT5Wj8Qfc1RMKD3kH1a8rn5hKsJR1vQvAF/NgA+ZY/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5K9CT2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5K9CT2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDC0C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726631154;
	bh=+rEG5S4zvZP4a/unPEbD0wOhxlI8Wc2jst6eTppTYeo=;
	h=To:Subject:From:Date:From;
	b=q5K9CT2lQfSXLzE5kM9bVjBsZ/bvY2IQy+zu9Vp2mWUaHZeNkgCPbUFCmtRvDGdMe
	 MQG9N08MDgOGkata2kczju24AIJHA7dem7p9S6mggH9ymmrRCHhZvlWqZgr0i8COck
	 dq8K+QRm6P0xLM+4sG/C3sYcAIi7brUQ2LTWKWuC6lHMT94B1vWDlXFuZvDnVKdwJZ
	 zMgIzjXY+k/3whsWAHeQuxZFRvAJqhkdTsVYdzRgzH/GSbAB/ZSQFrRm6Qbp42EMLZ
	 WKcJMi8aiezni7mi6W9Wb2F1xeqt7rKWWm0z01EQxSZ3Jb8EdByHGchDt4L5HvQefV
	 yYus74NvwxWeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6025CAC5B7
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172663115366.12475.1492179699957638016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f982b243858ee4973ba8e0712e53507f7f159090e9262b530ba429abc3a827c4
Date: Wed, 18 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726631153
