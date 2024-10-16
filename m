Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2E21386C6
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729042554; cv=none; b=mX48A4Eoo1hT50JUIyEqRKkT45JTfRgvvIV+uK5s5+ObfnaOTlVGdOuhBvSBCremmjRiICcZ0wNC2QpgCFgYtBxhCCvg31YLNLXJJ+LDlzFlnWBquuiCKkhdqLIHewdogtizMd/cpfKExMoUT/kTC/aYz8uxG5yCMZJo96CEgr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729042554; c=relaxed/simple;
	bh=J0LWHJQPHGarbwqOyR6hHq/XSLi/zHP9PSmc+50RI+s=;
	h=To:Subject:From:Message-Id:Date; b=dOJYNGuv0wF6ExXUEfBoSC7rQVijRlo2R1Quubt433F7h1mZWXcQB7VvIkF2y9Y+ZWH/D+8QzuzoWbKqDj/lvHYWlZHTEasAjGGZxWCrNWN+lcYc0vkBBBZAwI7M+/FU6/4SZDCrgiT3att8pLcD48+ngD2Q4i3t5CBCceqr2+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqeLWuDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqeLWuDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C054BC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729042553;
	bh=J0LWHJQPHGarbwqOyR6hHq/XSLi/zHP9PSmc+50RI+s=;
	h=To:Subject:From:Date:From;
	b=tqeLWuDy4KxnkKZKfEdUVjpEhgklTazvUfjRtvrMZUWeN4jidoiOjB8/k83mpHA/f
	 YBhKJ5sPUGo6D/aYTvgB1N/KVWSSMl95riAdIRwXNqvrshFYv+d4vhyamhFbYVV67q
	 WaaKFwpvqKNlT43O7cGCv5Ty94k2Y/DzYJhOHN21iMJFgaTlwKAVL3/5r4o+NgxmFt
	 m6XcA7D0Msp98Q8HgtDsaoVGBQkmoKAyRN4FCuZwtkK+/jzSJ/gi7CdGdHOqm/W7Ep
	 YIcN8bmwaGWcegZDB0uxNxEGkNm5RLzOkvx9kAG2LaBeU+xPjGyeDccTS09cf/TE9M
	 ztT0yjUsEp2+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ED0D2068A
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172904255367.6200.9372726268803994132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71abd42f6d2226a2ad27ab482f7968bcdefe5128a68d379cac0661dbaed467f
Date: Wed, 16 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729042553
