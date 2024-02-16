Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3FC12F39F
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708101497; cv=none; b=RhttupRCs0La8crgnH3njrzT9GQhhbR9K6WZkdIzoxxqjd9BfPqYpNBIDSLJ1MvNkgM8rhScCSbblUL2J8k/iYC8zMF9TlTs15hEz/Yu0w38L1eUvaP7OO6+y3L/A+8YYyulB+iIJ9Fr5KgOUJfeFb2dylf/8ek7Y8aasnlqcNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708101497; c=relaxed/simple;
	bh=/kdDM0O/lVDpD8Zg+L8htgfvyFg5MVOgmn8c2bvUdpE=;
	h=To:Subject:From:Message-Id:Date; b=Uf0W7abh79UvgzJFAC2dlRNz27uYpfvvpu9QGeGr/bZ4VWjvD36urSBX/bO7gMMAvhgb23FCODjra4EyIFmYGRhOm4zr6gX6Ha0OYtVEIw5pZy45gm6WVo/H9YE3pfNyoeUta4aeXdZSqeIqIKc7k0HQozLnKekFS3SKqnK+UxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVdi0vB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVdi0vB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7960BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708101496;
	bh=/kdDM0O/lVDpD8Zg+L8htgfvyFg5MVOgmn8c2bvUdpE=;
	h=To:Subject:From:Date:From;
	b=ZVdi0vB8vDK4WAhmf9WGFMOD/chRx2rAOs5TJWFsaDEIAEk5zTCQpVujfO5cVxDl9
	 VzETsT5AW286F/g0mnVgq1GsnAorHhf1TSziwCxJq3m6mYLL/QX1hGHY1EpJCyZsog
	 kc9E86vvrfmhUYV9t+l0EDee26sSw/tPl2WKagm4IK8kFlM6PV2ezqv2u2XL1a+4Vj
	 YM2tMyY43UbG4d/9dGGBZG27udkYj+iQIYNgiaUFNDvWkyhcOqa49ogAxyl5Ak5dUk
	 vj50YIwW/2ghZ4NKZO1HaozTHPvo9Q3VU2smmfgzkwGsnNtXwzZBrcTZjiP+RV/GFi
	 apuqhd2dynKHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3BDC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170810149638.23526.10385310889629016002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f7720dd699ad1f2938e2078077bda0ce99320247850d99b757c30f05c5893c
Date: Fri, 16 Feb 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708101496
