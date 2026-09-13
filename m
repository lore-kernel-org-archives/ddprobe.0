Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4076A274B39
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789303834; cv=none; b=qdsomGedLQA36npB8L2/D1Ij5wgLwIUc8UR2vMyNASH1RmPZ518/DIY3wTei6nueps81aQas7EP0R9aQwE5+D0Ur5ZMVM7pml8nXdD2VP9dRhMg6vYBv8n+r24/SIKupsTpZr2+dBGB+ZWutR9EpRTzk8nVUiV0eJGryl1VXTFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789303834; c=relaxed/simple;
	bh=G05m4PQAXw61zF72Z9xhlpiokDQcjJ/4kjLsrDtX92g=;
	h=To:Subject:From:Message-Id:Date; b=jQ715hsQdetScqrIzrMWvFMZCozsAN8z/GNtWf6GUin28iTjLiTQjjk3l/sEmNpkY0dKaGFCh8Vgp0YZnLUfMpM2XSybxBNS1ZgFb5w7y9wA/XNsVdENabmiytz5UkGSwYCOY/4pKr2YP9RpqybcyDrAQC+1/EM9fbNgZszxIGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYck0WaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYck0WaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD261C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789303833;
	bh=G05m4PQAXw61zF72Z9xhlpiokDQcjJ/4kjLsrDtX92g=;
	h=To:Subject:From:Date:From;
	b=bYck0WaTjCd2xHzdtTnlbjsAcYXrITPnx9K0m49+HANEQ+GBH0KlnhjOiW3vycWjE
	 6mfSRzgRn7LPJJymD2T8e5i0VQ9l+GKOz4yMAu68OjnF8V7Jn4Are649EwzDSdQ7ja
	 fu/kIvM9tH+aDnSAMAnn7mgELLKNC1sb5pEWsek2sTaM4W56QQXIEmvFBBVBaFGrhj
	 FVLOznHjviQ2UH/QMDOvfrHJQcHvb/qlvapokeOSjx0LFMR/dT4UngUVbNpYFnd2Iv
	 lxMR6r5HeBwM7aUQNuBgjkHit+oO/HfQkZ4t+M3LA84oR5OuQXsDzZ9HYldkaGfpKh
	 yA7pVReyvRlvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C2BC88E64
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930383368.26328.11657872695043126381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb016f351d35cf5828a43eb600473a187f8e2bb21197cc4af843623837f2a42
Date: Sun, 13 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789303833
