Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4772E3C062C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780387474; cv=none; b=atf4Nbdmf2THFleaGhm7sdUUNayt9GEe3XTNP7w3K+WYoWCyFHTSgeUKdsxFb93tZn8+hnKe93ZMNCR2loDhsNoTNm+zklDzEHLit8H1rcL8UT8+gtQBJARIT4AEQUVCG+86RTGk9lT/oudIBTWVBw3mViNLyPhp/1EKniFgnE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780387474; c=relaxed/simple;
	bh=1x6hQxU5e9ZUN8gSSyR7DOJgoWOp94pzLs+NbN/l7oM=;
	h=To:Subject:From:Message-Id:Date; b=IJIR3/NWCE+SR3BJfFNI6tKV5gHUFyBJAWrFVJOCKKsK17Fbl4QuUGDA3KUaOefp9faKfzG9P5wNRUWidcdPapQRBBm92a5Sy2y3P+MhraTZmZn785FLGz/hpJOfWVhaVmT4dOl1RiuSbFIYBU9k9foIJU8NvQx3IfxpiZCR55I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmgvFYx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmgvFYx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06B4C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780387473;
	bh=1x6hQxU5e9ZUN8gSSyR7DOJgoWOp94pzLs+NbN/l7oM=;
	h=To:Subject:From:Date:From;
	b=lmgvFYx8NrKh948h+LzQ0NHs46J7y+CUZUfNNr7uyXCxBFqEsZWQnDg55FAYRvnqA
	 iC9TipTNcRU0iOEwqCzquSkRpXYEwZGR5Okufer6a5dmA44+P7eXzj9Ht0axlKqk5s
	 H7ZnCTs7xVWWNZDGNi5UzO+IHCLtUKHCypq5gRDzAvy+QaXVbyjKVZM1SSA/Tz5kCB
	 jhEQ/mOcAWoQ+GoxITdIPd+DYuaQG/O9sJsI/9pWkB6UQFE5hWaNTGZAHt+eiy07rR
	 raAHFekBtJVAWflNi11CfNwu271A9AxxxxhwF9+fEUYjbUeu0GbdJ2bRsAQyLUIM0H
	 QnCVXlzwbE1bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC9C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038747368.28687.7976398376364121054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc6308f36c49f7a9fba8a110321d353ee48d3bda991660fa81f6fb83677238e
Date: Tue, 02 Jun 2026 08:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780387473
