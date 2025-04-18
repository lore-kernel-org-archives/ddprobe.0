Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E6F2686B3
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744960794; cv=none; b=Bgoey2T5+FocrweFQC16ebBbr34lErF0Geo6v1jy8lQFSTNR+p3gBBli+Wyh8PqK45bZPSF4qEorAw56o0rL+dFV+XGYgxkuZ0rHOJZ31gyXcRMqThB3LEhx27j1NnezZv5ePK3QU4k5SNIrh2u3j5tHzwkyJtS/WYDl5fnBhxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744960794; c=relaxed/simple;
	bh=ChP2Kiwg/gMVPDIM2PHqLcQocecyIMYTNyonbrHMgho=;
	h=To:Subject:From:Message-Id:Date; b=SMATh3WUQcbstVZdzwsiwiQA+4MqzrTUBCgCclzgLJM04+hDRRpNmQdNPcwNsZnGnWON9HDyOPcBS8HmG0rY+He17/Kr7P4XlS+vBvPmcA9qxkq+IclESF4irT3W6c8u/Bun91kQxEJ89vfHP9qs42P7lRuCdFovLbcVAeC5IYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFVCaXk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFVCaXk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A99C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744960793;
	bh=ChP2Kiwg/gMVPDIM2PHqLcQocecyIMYTNyonbrHMgho=;
	h=To:Subject:From:Date:From;
	b=lFVCaXk2ls3iV3eZJGjzn7XWyiUqpYJGRQOPnMxUhvFQMKkdAJU1nsb8116J2q8Wr
	 ZMEZL1ukbsaEut+w+lrzUWygKmv1mGPHQftghZY1w8vQUPZGPQZuf+2YWrXjd/9ud7
	 nCkWbGtg345Xg9u9NrMCttajfUglZgPOvyJ7bkaEpkg6V/eQx6+NQPR4CyQpJ+QfR+
	 JKzPKReXUtE8fav25frGFH1DazoGITUiEIR404b+RdfdRB6xINtixentL1RiOuLdx1
	 n+bEWmPeDnBs7ggldRhdMmu6Td9hroZdNortGRTPOls1DiSwon+iuCb52pWWwgkniY
	 eS90mNybPUEvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C01C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496079359.29176.8582526912149572308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60719e12ea6ab3d26f5998b1fd4ee6113dcbb79df8a60c9b3a85ae06933640fd
Date: Fri, 18 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744960793
