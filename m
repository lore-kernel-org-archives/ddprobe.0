Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B9E46EF69
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786991434; cv=none; b=g7snfUCCaIGAdeFB1Fzx2WtUDp0fBi39TfhZJDzE8gPEn2Ozpm+ziMO6IXjoN4J1lFZhVpgbBG9CALJmKWvXdG0zjhgF6g2Jk3LgYxB2vJVLsZ+Rt3YJt+shDWrWFLuVADaIcFazug+bmLlTxQcjH8I49LZ43C87vQW0XdICqaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786991434; c=relaxed/simple;
	bh=XSywN2yhupkEmDsn4c0ilQUEn2UHDR8gorP+6LYhnEw=;
	h=To:Subject:From:Message-Id:Date; b=BaH3i4jE0TnqkwLyVMXpU3Y0oni+D/sIqgD69YdL3Oqw+x41nPsLJz25g061BD3OgRTHzc3H5yKyZZGaJ184p5R1zvDG9N9RhKaRU9BR53wcdvZRGtO29CQZxrcwYhBRfT/SSFJBNGcLDmBk8Ud2AaKkraHwtntjRx9waJxDwHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLWy/6SZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLWy/6SZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9178C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786991433;
	bh=XSywN2yhupkEmDsn4c0ilQUEn2UHDR8gorP+6LYhnEw=;
	h=To:Subject:From:Date:From;
	b=RLWy/6SZ/ilAP8CaTGcyrUA8ChjMZFjMdsxMIk/mJsw6lBfuaIE+3wEM6HstSmtqt
	 +cr/jYAE03MFeK1x0/VTsEh7h5iTUI56do5pgM9evXKwg3oLQarPJdWlHNWZqwl7ww
	 pYtdDNNzKIVz+2DihcKdAI2KfU1r/WPsrauDXqZuUNP4UGbGjKKr7T2X1N+0wbqvtc
	 H2yArQTsdc9Qyv+R/zFb3DjUACVGghm3uTVXvhvU0MWxT5oIZa3/OC2pDLnZxsRKe4
	 p9X+KbK4j3bQ6Sxqsti4U8SLLNRjWgwPW7Jl3Ag+MQX0Ne6bVY1KTsVWDStMRvywfq
	 NRnOSz8nKmvBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6370C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699143373.29020.14712408290891057562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca90bb765eba9fab67825ececa51d23c53e54646fa7ae710f1e17c41b0984d7
Date: Mon, 17 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786991433
