Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F36D20298A
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744228795; cv=none; b=jxlItEn5h13ijomh9KDozb4xIG+if37kkglSSrjeEywh6lv0fCE86rZsPIzcU5x9EW+h1T1h1HReCJTO8mP4Fr8ogNvP9pzUA6lAcmyFL1TzVT2Ul9AHKGTPyqYJxvlr/W0yAAxhxUWVtXzsm8B2I9XD8GW8HDfroVM1mV04zdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744228795; c=relaxed/simple;
	bh=ZSaqcG8PAtI0Mraz6RO8EshF61OmCmUfmMzEUoCZjCs=;
	h=To:Subject:From:Message-Id:Date; b=EUTd//Ait0nYX/rrUSkIWCMNnie8PeM/LYufJaVDOcHy5Ou3GjDk4mcCjgKquozucpSvfCAqMqSj4FrQB5f/eXrBwRb6fMpNQOn26nTau/1Uq6+ZTnbxztL2bvJ2gR4L4FhITu4QZ485DUQGjMOMpzyFFAjynv6MMNajYcvqqeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIImcLzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIImcLzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2443C4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744228793;
	bh=ZSaqcG8PAtI0Mraz6RO8EshF61OmCmUfmMzEUoCZjCs=;
	h=To:Subject:From:Date:From;
	b=jIImcLzHe7j9Kw6zs8QL0F4HDpMgqZmLXPM0KlVaVxGU/6Ym7m4lTieN/ifImBiHj
	 TXdfd0HYIhKdLhr/fRuL7YsMgxsWwwijZtRkSUv2T6Kjs1Orcj1wQeSvrYDAwVD4Z9
	 U2Wkm5Yfu/V76PJ2hdH2vCkA3hH3zMvQnDrfQsMlmSK8WXNVQjzQxkZ8WUW0vHvAhb
	 pz9rrB6FipE3IQIWtC5OvvvFgPrd0VQ2PNayqzVSTxSHPocyqlIUCsvNij4XQqRjJ1
	 ZKgs3TWAjDdPtcVcEFrcM7ACQ/oeY4xhZsZKuTit2OjTHYyXN/65fDi0GaCKpQPJ8A
	 2+GanjKql86Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B8CC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422879361.7827.5289914596011262249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f96131e903276d89a01762bca61db5e0d8e63aa5bac700d19cfe785ce19b7b2
Date: Wed, 09 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744228793
