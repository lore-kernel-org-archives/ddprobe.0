Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71E5A41
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763428914; cv=none; b=fcV5LumXFPnddNNCCJowTDMeHQK95psO+6aBi4Osz7KFPTiaZvSd08RAMni8gVOkXX3Z68ckJiEIt/IFEo/lkVFMQW9sYCU7XPh7Cd7qj6ol6eNmHeqZYt+f2r837wGRoSjI8ul+v131/LoqCiHnh/AC6yCiu2Pb1yHDk3QmGtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763428914; c=relaxed/simple;
	bh=OyXwITo0b0pikUg2koR0I+BrICMOuK6hS5C24fO2PQc=;
	h=To:Subject:From:Message-Id:Date; b=bUX5CPvqTwmGediTMvC2OeVyRJLjhp6fLVPGVaEUPrjMCxCudioPDuzOyv63RD+PMuNUqIzVwEWEPXQgf+yP+dqu+NBz/1HJDoW+kuOTrt+nmtzkpJgBxhUmwehcHt31HIwImMuO2NwCXhBRtokg8KQdx6YliTmN6Nz9C8Lkklc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Id6gx5Y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Id6gx5Y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E7DC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763428913;
	bh=OyXwITo0b0pikUg2koR0I+BrICMOuK6hS5C24fO2PQc=;
	h=To:Subject:From:Date:From;
	b=Id6gx5Y+5bUmv7qIn/cWERRjrxdwuhJlskU8HLsPPOzK3+rykPAmVH8RHsF7LxIpl
	 rytvs8XtrxQybQAyPLO93nMEWwFahtbd0XK4Q8nbAYdz1BEifCa/7aTI89BcNMKCSf
	 y4WjpHYLBGfwgO0VpIy7KFO46drM8hvFYsMC9bQTynXLZbY+qsV4gRRzP5UDzte0YT
	 d1QglDQ7FWkQV295YTHmaxQZkCunrof1MeCOJkDp4JlHFxDAy0hKZgFSL52IXESitj
	 VZeVvprdhRT1v9Lymo9lVJaKpQGZrT5aOKH1IaVBaU+qx4hlzhoCq+okUA9Ln4v6c+
	 g9Nhoh5Hx/VwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0BCE8D6B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342891358.13559.3408185438665993089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790c43a9e79697f96adfe7230a108f72c6b1bc34a358a19977e30b138a479d62
Date: Tue, 18 Nov 2025 01:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763428913
