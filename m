Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69A8194A67
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738865153; cv=none; b=KrsclYigpsnUFCZkrRXtfw7TDII90ZAOIdz4zLTq7O7gGQlSQxTq0lTkrfPRjPDGML6P60RGtIIEsjzOhSaUM/m7s9RZDB0Aais1Ye5PbIbJqu6lNKPSguybEPit2NXbDL10JlH9LE4ITlEedAKRA+R8fUkgUYfwJ2puHy3x6xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738865153; c=relaxed/simple;
	bh=XvRqDiIN4UAwgWYFd4cX0VrY/zBRTUWrVIlfi6uZn/I=;
	h=To:Subject:From:Message-Id:Date; b=X+Eb2V2ZNkvZQgRqS5VHSg/P30dk9q1peUq/5LBK5bhSqiFJW5YRQy0FG5+lQO1Ts8nWtHdUCtRXr/hpZqPsXMl2g4WrzSZbxrsC+GSxaROH6Z3RueXpY8JNOq3UJBQdBYZb3M+eM4ll11icLP+5strb6RR6MEtr2KolGN6p3hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eA3uF8hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eA3uF8hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4316C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738865153;
	bh=XvRqDiIN4UAwgWYFd4cX0VrY/zBRTUWrVIlfi6uZn/I=;
	h=To:Subject:From:Date:From;
	b=eA3uF8hcXOmHtvHhApNq4boWd0VFgECYLpj2mY5hbB8qilZrPjKNen9jmz/1qpg8C
	 KS9+AymFfo3VNm1W9t1PY5CEEF16YTw4WtnTcXaOmZ5Bkrq9DzUKLKRAJqw3JPIhRv
	 vz9Rn7PnBK3N7YdSS0JscIqjX5biRAdfjXVPlUoOOv0chJlnV1gXmraLpBJgRnonEw
	 OF3wg0zUCZ0Ymn/DhVqWifm1QDtNGZ+ZkUJcGXl7dp1hl800h/qLJt+I9J0VodRNE1
	 fs+zKiqly972uISudovbyfp2VzJERXg7ZrsuPsYyBxfXAm8JR/QH0CVxosveHZGtBH
	 2JEPYt8l1vt7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94899C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886515359.16485.7245176422824116856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1387999b38f925f4e7841d4646457214d0d51b122f6259a2d9a85feee284ccfd
Date: Thu, 06 Feb 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738865153
