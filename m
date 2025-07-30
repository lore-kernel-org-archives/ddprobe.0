Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3A601F8BA6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753916395; cv=none; b=GDQb1F2QKQ4zL7VN1elGfbBSR7cJgXd71n/IV4enipaY3xRyfRVwaUnQyyJKjaJqsAyyLqOjGedSylnOsdNw9bvvZ9LZikeYMBYOKTEJG0eye5P4rqinnrjKZ68L9G03ewIFDM/ab5/W4Z5SawsClFE/wWxQxF6LFbfgdE8lKK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753916395; c=relaxed/simple;
	bh=p7SANBV0TLo8DGsgxOVn21imIrpZmcib7LJLG3m4KWI=;
	h=To:Subject:From:Message-Id:Date; b=h2knX2srzYW5NdLajyj5Hu+uGac5eIQzpXe5YcwzEtKpTgfmly0JeRm6/C07PTcnXQSy2oZn7XfR3Wu2yTkymFXGXRbNC00aFRtSRrXH1berYgJVAPvnKNGvYqZYmmo2S4XOru+/WSNQTijgQLumCljzATOgp5uTjUjd6GbQKuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pe3lzZkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pe3lzZkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8B5C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753916393;
	bh=p7SANBV0TLo8DGsgxOVn21imIrpZmcib7LJLG3m4KWI=;
	h=To:Subject:From:Date:From;
	b=pe3lzZkpPYwZZGajsvZopontyx4vZKsBZx5pntbtrw/0u0BrjsOaHy94oxT1Wt1mH
	 tv3rBKSh5/e93JmmXov7+S155MQe8WwQNZkrsHL7tJ2l+pvj74DN60c6al6W/WPaGk
	 GwBcJfHbCA+4Lb3SEh+0GUCfFR/Nlmio6a9lCW7OD+VhS2sEQioE5F2Fu1THsjJlHI
	 gKFJ6dVEIZc/DqI7AN5Q8fUIWRBWMvH7uRxWadt8E2E3GJ/1C8KsD/eR3OW9gfrGZ3
	 QFmiWKNBE+YKHF9Bdgwy2dUvrh3cI+Br9b8YWTx5aGF+ygRAbhwH3YYYAzm/QN2iyz
	 g3uFHSiyDbnKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8EAC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391639357.2305.6410836951171302538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e64c6d1b3c1604fd145f4e6356ce2bc7620853871171f47dcd8845b85cf065
Date: Wed, 30 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753916393
