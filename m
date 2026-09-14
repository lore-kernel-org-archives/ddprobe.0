Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5809B5733E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789361434; cv=none; b=R2LGPemMApSL/acIIGQ6w3DzpfS7wTtu0OnjJP5g3qA9krYPYgmfsTXdXqZIM0YGgkjXFcpAJ/5Sl/9IbQu5V6H4MbPAcXIv4D0fEGfBozMzLDawo1hqDZzpFkGeNytmbtYqyn3/7VACyMyF65tGaYPBCVXR+zL9QwVrH9aQy1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789361434; c=relaxed/simple;
	bh=ZUbBXN9b+ojOoyEYLr0GqbrnTvWclEhSxMwoNUIuam0=;
	h=To:Subject:From:Message-Id:Date; b=iW/kuEHdTUCdfsp9GQWL+RIW+9K/Wyczexg5IODYNeEedpk1jGhorkU3D3BXnYuJ79ddpZJqXE89kEwpkj1kMvfnaqZ9CH9YEnV47hMGztQL4Nn88hxTavExN1jpw0LaDY6jw9f2+aMplkau6BPjk07oNFMFKu2TIeEx4cAEMwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xfpk8nJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xfpk8nJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA280C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789361433;
	bh=ZUbBXN9b+ojOoyEYLr0GqbrnTvWclEhSxMwoNUIuam0=;
	h=To:Subject:From:Date:From;
	b=Xfpk8nJtGz8ZvPe7PH/LbCfXeqPk+IWDHgKvkXaY3lXjrEdY+WmL80ojCjubCNrn5
	 qtJ3g7hqMzjlxmOIUBIk3OXj9Dco0Y7wYIoMUOy6cXWRc/s4n+Q884tdqbCUAvzWnc
	 386PRMm4na9zq7cswGvfQGTesjDfFAMIczZ6jlWea9Nb56mqRqPURERpPjKqjJt3dG
	 jJ9DQPUCwc/DwEx/4UIIR+WXl9V1tmeTIystuFG7+jk7XI82DgFlQf++QSCukybcQS
	 StZDVOfubXxGmX/G7DGoQ2J0ejz4G7ILc+oG08zZfqLueK87BqSpfIVeBRXlGbDmVN
	 l/I/nSBBRJTew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA5CC88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936143368.14078.7332408240069269197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd486b339dc9d666c778fc6e304b7fd515154e3c0fc50e7c3421e4e6314e1ce
Date: Mon, 14 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789361433
