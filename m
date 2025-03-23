Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB4B9443
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742773196; cv=none; b=HObmYh58rzMN8tfVMZBYBYM02UjfWs0jAiRhWBj0X9TFs3B/15dIgJYeiqWkt0c6Z9LukmAstcZ8y6vsMEF/2GvTNkAu/7YGADfx/InblX7NKfyYjiPd6Z112KCGVZKhM5CeUnqCxG0yQdXyAhThqU2PC647gWgdfml9l7OsDgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742773196; c=relaxed/simple;
	bh=SgAyRCID+vBzXFxQQwwR4skRO20ZGMwMqAuk3etGSJU=;
	h=To:Subject:From:Message-Id:Date; b=geUft4zB/at3nk0FN82vSFdZiVK1LRhDkymf2olutFBFTxbrvFLNhoIMFIlOK2WM6a7G9J6E79UUWgwKvdr/hl/a2epHXa+W+QINBAd/RalIbfdeY5a2/OAG84Cevw99r60XyyoEQREFx3F0VOW9sXSrfIccmvGuYd4/3uJk80E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmZkudkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmZkudkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52AEC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742773193;
	bh=SgAyRCID+vBzXFxQQwwR4skRO20ZGMwMqAuk3etGSJU=;
	h=To:Subject:From:Date:From;
	b=HmZkudkgVE/64vz8+Jw9DB+fIfIM3vfefVt9t8JKFrjdryt2Xsfau+dvho88kUh1D
	 xNLxgFE2fxAWGN6nb4v2jdshSrQyvulWMOsWNQYdLPUMVrjYlk2vp89vFk6qKd/bhN
	 +vPFfz1E66JfLvs4ei2wNXCxItv441g8t4er1hkBsHTubu6yE83TxUa9Gq63WtDAEX
	 IcLAfUcBf2NsPHYr+2sopkxa6Ii8HQ49lrHXlf97L6Zy1jN8PapfncsiVVX7G9NnnB
	 iaIKJ3+A3RSxE1PYItqV9emQvHly7N6RuuKx3zFYTdkiZd7UbAoDDCZfS5Y9FNTBXN
	 EBOkZXWWoYFrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6FC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277319357.13913.3940617338034624655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf1aaef1c91bc728f22e60d7a843396da330304dd564bf436a6c1987a55a7ea
Date: Sun, 23 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742773193
