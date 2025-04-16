Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3852C29A5
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744829994; cv=none; b=bwhkW5Rg6Je4vrX/K4z4wjs+ZI9NsikVlx7WJ0st1CdkVa7ECwZ136zSY3tzXMQ32JR7ynbLSzq4wJUoV5+Viaxla1ymv9kl17YczuP4Mv22IfEUgpAHrCpMJ6D6+RdIG5QgkoNernC4t1Mp/W/2/6V2ffhBw2aut2Y8uUXBDsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744829994; c=relaxed/simple;
	bh=313F3fAcTcLbB4pj9spBX+csxvVWpE7EvekeVKd8kcg=;
	h=To:Subject:From:Message-Id:Date; b=ZTUXCckDffptmSx2UmP0h3Q9xidkMf6Gk8aYGOiOw58X12vwUbTKHoiBUyE6kZXVXYeXf407O4SRYZtAyyFI3xd5/x6/+w/evU8BmYG7dg8UuSgmlX7ziOnBfaABtNneibhSQAKZDYwWih3MhkTJ9XXnOgFLrcfKDHGce3lcewg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbWqZlnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbWqZlnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2038C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744829993;
	bh=313F3fAcTcLbB4pj9spBX+csxvVWpE7EvekeVKd8kcg=;
	h=To:Subject:From:Date:From;
	b=qbWqZlnS6YSs3JhoNS7MAOA7tDUXYcToXpFiYurpEVnJ3vaKTQBxz8yCKad8ywfR9
	 VjOyDoLmLAI7wZr7LuUyPzAmeRhWWOAAYZ8eo10+0LVW08yBml7dKglZ2m9dTYsIpc
	 vWkAfEa0nBjnAyo/tIJ1XjI14Lyi1+n28j624YslvY05YOnzy8Y7M+BB7Ly7qdlERS
	 gmucNj4Mtsn73eSntv+RsABF0jNsNej0m0L/MMN3/AQOlPPPoWD4IQ+WHJzY7pQEPn
	 99te4Ptak7+AWletwgmaq5J1LihQmibd3SPoIrz9x7eiAbXZguEJ7G/J8dsfm2OL/X
	 9naQn3bv+E1GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DD0C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482999359.446.10954094587860989302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a299589a648f80b40644f8e36c105f04adea7f7b909234166e746802e43cb5
Date: Wed, 16 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744829993
