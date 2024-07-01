Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AFD2C1BA
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719870323; cv=none; b=TIpa/ND6hAoromw1vtHynV/n5rckzpbfnRMI39qdAQ8p5UHacfMMx4T5vSjmnJeRqnYnKKvLy/stC9iNDz585/ruZ0QdIDiENwloj+aLl8E9dmajuPaTsdqKjjSo//ibkuewe0YD4uJxXg5FrqGUDMGcqzBHnT9Nf6ENbbZPdY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719870323; c=relaxed/simple;
	bh=7fPKqCRXtB77BwcewDktuUXwme5Rdn10yeKGh+Dia/4=;
	h=To:Subject:From:Message-Id:Date; b=MWJRY+Tw2yCSr7EZfzLy8+v7iWlzASK4FWBikJhisSbCRqQSPtQcDLP9RBcOMOQzdlpgOOWL42C5zDq2DiF750TMF/+uOUSuQxgLC2Hp2mnzpJ07B2y54CVITj4C1OoiRHGKAPAW8hqIRHsf+DVYjQoA8vuxHWqJa7PBEFFQ4Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWWGoguk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWWGoguk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF470C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719870322;
	bh=7fPKqCRXtB77BwcewDktuUXwme5Rdn10yeKGh+Dia/4=;
	h=To:Subject:From:Date:From;
	b=tWWGogukPU9wz/9I6a3NOPhgDzDt/jFQ0AZkuj6lgA5iSD4cmMCrWc/+NQ9Rr67jR
	 D86LCWlQK5WsqGJuYeqhwD+zJ3FXw8LGKGHst6lEonI8BdgPa2RiZGw8uzO4wIEsCy
	 PVKIO+cg8F7Y89AQV1Wm6NkyjQOSO89L7F+ABTzJRA9Jd/mrjhS0LeOG2T9w4cQRyr
	 1aVUQ/Mk3qE05o1BPmDO+TVKDfBc7hvWiWcIDlv5nut1eupZ48jHasRcCczwEKhKY3
	 KMSBNGZJiFYKz5hKaL4EGu1O4El8nlD6i6eII4W2zPnRLSOEv0uOzNKjSkRInzG8rS
	 Mt2mBg/phcVYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BBAC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987032279.21564.11808008839452242998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107b8b480e444708ceb72326065061d5e7d3e3f78655fc26f7ace592f0478924
Date: Mon, 01 Jul 2024 21:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719870322
