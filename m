Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE034C6D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774831494; cv=none; b=c3AUvOcP3LM7GfbyTgzPeXs79nEnEQpKsE2zkN8TP+CuD0nkfZv7/RZHesSpZ/gKP7ef8kjr/I9UjKPl1kUVB1X2188wAx1JtHvt95QSg83YvZlE1fYaM+9SkywGlK18uORsL017HMtITTVUhbibTELQoK3GC+coRFyPnrzAezE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774831494; c=relaxed/simple;
	bh=AvQs4I9ayOOyKMcHBsyvo9MVgD9dCPKqkoIoLk6BY48=;
	h=To:Subject:From:Message-Id:Date; b=mMQmIN7aR206w8Pp2LyxWL0mUqoTFEDZr15/8XzdqOY0AsYRGaYme/uJn433sEfM396XdnLzZc7qsOnLa0ovwhdHokkOwdLf1XVIwfXM46xrhffBMqu4i9p627cclXN2fE1W8CkJ+VEu2qOI9/2AV5LT6c7EAh9q1O3JKjM2TPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkSgoq7J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkSgoq7J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C75C116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774831493;
	bh=AvQs4I9ayOOyKMcHBsyvo9MVgD9dCPKqkoIoLk6BY48=;
	h=To:Subject:From:Date:From;
	b=jkSgoq7JU6y2QgOswoDdWsMd3O9Jn7GUdLjEKy7lsaKktF1eYIB2J0UcnL6NMQYdA
	 Po+rGgX/iykDPgtO9ZXjv+crPJE8W1+n2DJGWD8n6bPo889xL51NT72E+th6doW0SO
	 iugNPqewfj/yVhImCR/fLM3/2V7NivQy6JA/JyRZNI4fuse6OM9k1UHXT7ZcgV87/q
	 e/9KroYNz1EEUtfqcyHNe7O94YlH+D0RpdIdA0eyz29Nr4qTwPyiu7E008pb8q10Lu
	 BjNpb50cnAavnWOB0vWV7R6+X75X6rS0YASIl09Ryf8YmLmkWM97OS0wURRyHdVuqa
	 Li/SJx7ZYCGiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9747CFF4923
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483149358.18989.13798113945691675639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b1f1a90e9a9855c3c80c04c3002ca7f4f1f826f4c272c9457169c8087c4c36
Date: Mon, 30 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774831493
