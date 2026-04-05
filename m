Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A773326D65
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775387134; cv=none; b=j4CHh/I9PwLw/oEZ4najZ0p9HAPIdC51NSyLO5RhDK0qSNNk406j88oO1z2VWa0Ipj9eJOM//2DjEElmQJlBeJSzpDBi+l4Moa8fSUm9Sa7Q2zHpzz5bJAFTsfYR/G1uzXUcEIffum5+EdBm1nudHhcQJGeEtGkpXQw62cHTSiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775387134; c=relaxed/simple;
	bh=1Pry+cfTwxwLwjoDSYub+M4FALnB9bbeF7KVeZWpbtQ=;
	h=To:Subject:From:Message-Id:Date; b=k6MhCNWqnAo9cLKhyoy+67F18pVCoVSv3hO2JQOyAdRHmN8B+pYAy6iIA3uZC+q1W8/p7Y0/rRnfO3Cr8ZfTHSVZGSUCMtFdEHYF+LepY9lvSlj/MFMyh6KteH30d3J1rf/y5N1dgtv2KCm6GfxGP7iKpSu5QXX9T3hCk3FWQeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t57rg1np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t57rg1np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F57C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775387133;
	bh=1Pry+cfTwxwLwjoDSYub+M4FALnB9bbeF7KVeZWpbtQ=;
	h=To:Subject:From:Date:From;
	b=t57rg1npbCjkEHfLSWRbDcv5Qa4Gz+NdPNNXwmmtv8UsJ0Xk8qFBHs/j+7BQl0Sri
	 VkKDGnBv8f8FZLq//6QArDZNLojrltKiNaLA+czKRs8cyNZ8fh0HNjHl88/vrvR4kA
	 Y9Kzl35Eaoyj2qryEYl5byT3hT/phFvPpB39DEOpoI94RKNNCoNWe2HwmNMeh17I0g
	 EEW6N1T+jBaVEK4NQWX6eJ56WK1Q0oNmVcWugziF5cLfMDR5UL2A/ooMI5dyNQJ0Vi
	 Gukzet79jf+oTOWZ6vT/7cmflMlW/dRmLWPjt5sz3pKvMWizWBeVUi26qE0zwOED85
	 VW7dyaCRvLMIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04B6E63FE8
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538713369.5221.42069723727498141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609d0925c4abdfd376cc80cd823b88e436b0d6da0781e12c3e9c3eb2ffc8aa19
Date: Sun, 05 Apr 2026 11:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775387133
