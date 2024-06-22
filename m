Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E7E82492
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719063143; cv=none; b=JLo5kGuBnw1Mq2FCV/AV3M5tkS5f1KZlj31Ameqn703A4b0k91WYBDnbzjX8LcmM0MmvU/hPJj5FJoRivTpy+zYVVCYNpco9XuvLuhJRKZbLJ4BFbYBg1Y8AfO/DPacn4yUK6rN51ri3+uJaX97AqKoeRYtifoEyWLInJYzfl+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719063143; c=relaxed/simple;
	bh=+zT426rYEq4qXZTiF0a9/n0fjXveaMuCQ4OUkXO/Bq8=;
	h=To:Subject:From:Message-Id:Date; b=IwkjPhHl4hUxBGtG6je6XfDWvvkdlxma/OgjBJsFNmmIJH+ouX8aNV/FtOjjWHUddbdu0W7bLrVjLBrCWQAmhQaZAjB75s3zQ7OQjmiDDTv1Ysoo8CWgQ0HDEv087KLw2T55FY9KldVbl471R7NG/+DBc+O+m856rsuLrubViws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bah/V+nT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bah/V+nT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75FDC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719063142;
	bh=+zT426rYEq4qXZTiF0a9/n0fjXveaMuCQ4OUkXO/Bq8=;
	h=To:Subject:From:Date:From;
	b=bah/V+nTqSfbOtH6GeyQvf2HTTZcxAQKFRC5tcFwHu+1dR7IHCFveAZDd+Ig6PpkS
	 dBllWd9STTplckZtpGKjOPkB2zLP6Xueq6+3hgLFug/hfAwIUWTvVQoS4rIOIVncaf
	 rZU9iLhfdEZrCIppt7wVSXpUpc9YxRh8600QpjeSVpHmPpNdICwAsaXFYjZ2l0Znrg
	 5uCFjBXY7Lyga7auUgvLhTM8I21CGGdb6KwvrR4ZAGJG2jyigReBoyUyHPmiQxTQbg
	 ieKStvwIHxn8rvxMt5Ji8JeHImXQCKO8U+FSOODyvJjh6fi5vgYrV48QttnO3EXSV1
	 5E56hl35WdT3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1094C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906314275.22754.15057848014403417268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6c2f49a80ef1b3d686104660e3ada113b9cd2be745eca7e7dd79ce78a20019
Date: Sat, 22 Jun 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719063142
