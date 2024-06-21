Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F411741EC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718964743; cv=none; b=iGFHfsg11iVTEM3XaNTxr9s1RBlea+0S1+hDT8KKMP7oC/jfh9sGQu0sA62Gm2YkSnSKXXpJnB78lE/f9D18YQ9Cy2mpbbHTGWAAjCL/qYuSUd3qzwluoaSptFldM7nuhFuarn0wXKJ4cgM6Mz3ipwodz+MwKHbOVax3z4NXGk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718964743; c=relaxed/simple;
	bh=AOrP4FzRPYuvkr3t7UP8UB4iR0sC/8KzoPuHknr5NHA=;
	h=To:Subject:From:Message-Id:Date; b=kajGyacrS2ONZxDntuuhv/DEp5Hwxv9Yb5Hq8BNp8ETe9Bk40kNiTtTVxAP471HM3Awcwlp1njYk9eGz4XOWvbX+Sc0zhgV4zV+F8Ud72Pd8sOrIeMgBjqM9aaBZtOJ/kznVhyvf/ADRUky/j//Hub+OipSshsb7++tkLKEYpts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhjHoulv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhjHoulv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD3CC4AF08
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718964742;
	bh=AOrP4FzRPYuvkr3t7UP8UB4iR0sC/8KzoPuHknr5NHA=;
	h=To:Subject:From:Date:From;
	b=rhjHoulvWo6ZMvN2vvROhrpTYWp3giXgs1jMpk1PZ/CbDgjm/WfvpYdfAN1u3Gju0
	 wvRExgZTn8rRTwG1g5DDgCPlbgjaABgMsQycdi3Il20MG3MSAdruaSwmvNQH6OiP0Q
	 eXx8oDhd5J25YQTcWUTwnGxInWZavhwEaWcKkXVtyWZmri6xG99QrndAjmhFleChPj
	 TKGy22gQJbmRp/AraAUqLLygyqLf2LZf4lw4U+bpjNQYwg4eesXBpzQosoCnxoSc7n
	 MD/QYBEfYw/PPxYwZU7g91pR0xVXbYNLQ2tWlf+e/WLUGivkc8KKpY/Pn9sV0hMD9H
	 2uyFM6bTuvvjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2075C2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896474278.25804.16651224337934563721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c585848a63f9260a17e9f6f73e679f1f834d4350491615ac77b4e8efea63419
Date: Fri, 21 Jun 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718964742
