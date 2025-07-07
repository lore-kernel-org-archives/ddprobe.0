Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2762970813
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751874594; cv=none; b=snhxlqjh4YOK/spXfVdxlHgB9sK5nPKX5QcZSX0ebCDqgaoOdBPwFpVy41iKgN3XlqfVPg4nw3Zo0ojILT54pvpVA1HzQApOJ/cUYm7qO/4PZ4ap+MyaBAWG7J1ngCGOB6U14Y+GKLgIiIZ60tQr+Nvx8GymgyeQys5dy6ojTU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751874594; c=relaxed/simple;
	bh=spHOjZlfA9ch/z1B2YJjAay8o1HPoCn4nCUWTKUNoZc=;
	h=To:Subject:From:Message-Id:Date; b=t1kADqMSO68Z/KlFtyUY4Hdee5Fe5WlRb+U2fUYXsl3AwlrfVNLQte4r+s9RrMKbUS5YKo7ATEylpHcl3WpdiqkqgkmTjwG84nGwd/aZYl+b7TORETtEDAXoDaldgZQ6zLzxqheS6nlJiJRBWKpe1W8+ARLuXPu9+X+bu/NMl9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbhXEG8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbhXEG8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E77BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751874593;
	bh=spHOjZlfA9ch/z1B2YJjAay8o1HPoCn4nCUWTKUNoZc=;
	h=To:Subject:From:Date:From;
	b=TbhXEG8Pf9+g4yNCqxmpbGnLYkAvutACDpayGbjGY6p8lmad8Gy3lUUbtGjXRmiJw
	 tFagSEtkA3kUqYV7xMIkRf7/1ggKHIOKE07rqxZLChPBeb3gS15dnXg74QlZvcvaSF
	 9lu3XYX4GKKvpzB8TQ3H69SqDffMTSVo2aNmnJhb/GxG0oQlJIH/SBNKK23Wh1f+to
	 Y4cTGNtrnGup5u94FZYcMvnpyofLKEfTruhlUL6EznNMa44gvu4WjIEptF4BUbZErf
	 WV3LsrO5EEhBzGdvXdgSl7T0UKUpVcVj2mJfGhuOtjfjMje4+DG7JhRn7w43nIpWgn
	 kboqr7dsLiNQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3EC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187459357.8891.7381303348484727169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5f409a8ede2d3ab6dcea2e136c925ea38fcd613a28a991c864291f84d00c5e
Date: Mon, 07 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751874593
