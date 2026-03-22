Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390F6373BFA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774142094; cv=none; b=e5cYwQDy1QOFe3lP9p3/V/2dkYyQxFd4TRBbThVO4T9MwwJCt5bmRmwxdKlkaItPdJvA88KfooZf1hgn/NA/RihsErQXSagK4HPe+zaKSjFRZnohx17OhsajumxTVNmKq2JG3PQu9zk1xUtJAn7lIHwWiOmUrUcMsC0652AS6+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774142094; c=relaxed/simple;
	bh=FWcZBQheDudGKgcuoHK3EBCVy01VltG244IKuTYtOpw=;
	h=To:Subject:From:Message-Id:Date; b=oNovTQa/yCV27YYfnTKBczcCzAUGZmeD3unwDOXiCZij6TPG5V80iCclz/9B6BGDgxH505lyAwQyowx7rLDRI/wM+fmWtCucs1ISAQsSGDXCb4z2RLg4Q1bBW+5BJAidFWc0CFIrXuJLzG4wJHJXkFcCYwGFgZDGyShGDz9uJOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/pY3V1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/pY3V1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A1AC19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774142093;
	bh=FWcZBQheDudGKgcuoHK3EBCVy01VltG244IKuTYtOpw=;
	h=To:Subject:From:Date:From;
	b=n/pY3V1Ot37sz5KrUGQlM6xQWD85nUdOdG6wsNoYuFfQja9pZeqih3SjG6VapUrIU
	 lUJxIqF2Pwft5ZlNkiokBMAzPaXoQz4HWr3Y4NG1LB4sG/GWoWuokiNFDOfIq5KgoV
	 kx6BBpJeeV0saXpccldZW0TICm7ycMHwb48qx3ElF+3Sjt6V9YKcA6RKd33SojjtcG
	 Bvh8G+u49BRL2bmYVJeiSmZawzaZ9aX719xT3Y8nQTOn8xaNofixokDShkvnHdbmo2
	 A32C9mV352W6DtSFLC2RL8gPkjMry+sOMxAQDdnQbHlCwFdSvKYotKjoi6Tgbb3INR
	 vClhVbJpFyEKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C1109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414209357.10362.10283355021858866391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae1a30ded9ec01f8d9d678a073008268bb36906d058244a1b9b1031f9f89e3c
Date: Sun, 22 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774142093
