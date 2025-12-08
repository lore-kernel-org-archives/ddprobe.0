Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108143101DA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765190574; cv=none; b=UFOQb1YoQuowjsN8giYaOXQRVE6IRK/2H1FVckBtuH1FcemZMrg9mErifYV1dIQQPhlpbDIFy8+aus+Mq5p8eAOVnengx+Qk4NEYZFyHJJKZlbJhxu5dkz28/gZpe8ONgRgTk+nQbAYLyBGjam4t0cYhuXGo4h0jZ8lS/JvOhNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765190574; c=relaxed/simple;
	bh=K4TWUZDPZwODyzZtqS33jJBzagaRHQmJLCQwNktlLXg=;
	h=To:Subject:From:Message-Id:Date; b=fWk+OhU0vUF+155Dr7izQuC4JMfZm6Z7b7RPGJR7cy8Z3PS4beA/iUH9fbneaS7KgZ3E5Zi8ycYCOtCWBDCnZLyDX+us+PqnrKchL599+eXX9wVduOFzbiPFP1kelzgB/OZPY+BZdNjHJfXuu2iT8HFY9pjWy591UH18ZAd6OGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzEPJbJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzEPJbJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A273BC16AAE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765190573;
	bh=K4TWUZDPZwODyzZtqS33jJBzagaRHQmJLCQwNktlLXg=;
	h=To:Subject:From:Date:From;
	b=lzEPJbJspM01UwEeQVGoqMovzU0766jcRnJ965UYMYUI5uhkLAuBIxpe5h9S75Ai6
	 ATLoy83iEH2obnBsMmlJuSbZh1ofTn/YEjbqPL6AvafRIczrlkcQQv/Kk0/HtjNqVW
	 Lp8knWNEU/dMfUCj3lxryQVK2rYyyN41pyGHIi/vNQ8a/c0Z2sLzQZuChIF21dBBJ1
	 TfZ4gAujGPy7K/urcKr5B2O0llhBAtKpcXI4pET4+hTbpTI6r33L+FHt8/kHzVadzl
	 eGHXqmBeN5t4PirR3S2rvXsGUGkKIyPAy6jfk2Zjz2JANiu8AkQfnTSunZ8Y6lohLk
	 DdFJBjUyqmhNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E49D3B7DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519057358.8033.13946081125956202501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5766ef5ae6284419bf6ce45fa8db517adac22577b4cc8b2e53417d33aee91d6f
Date: Mon, 08 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765190573
