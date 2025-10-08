Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1032580FB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759895394; cv=none; b=vEwqdJDye0JUDCMXtYlJDsntbBzWTeZqen3+Wu9w/KfzjSY+zq/5nIyk9aR9ofRpeMfikVIz/B3zXxjIF4Z3T+gZco2umeoWe+1z6RJ/oICsxGuXi7/t7I1MxX1ffFbADut2G0KYbAJ6NBdgOqRqWu8EXuZ7SzlwzI2vKJ2Xjlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759895394; c=relaxed/simple;
	bh=t0RZp0CPkxaEQk3vGYol48Q4HxDs4VVBvAosAKTzbog=;
	h=To:Subject:From:Message-Id:Date; b=SgRa4pydDnA9ySAcyITXrhIBikM6ZdVimMbPU6dqsvVZMeH/Iqx3hF5RVp3jBvQAbjjkj5gMeO6OJbEgvkDGu++ez+HzKkjc8en/lWKz8LqK38fELJ2voLdsgKAvg5XwbeBgqGeCIJcqTT3B7g8WSrJWsS6lKOWOjWcJcuXgNMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbDmHc/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbDmHc/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D5AC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759895393;
	bh=t0RZp0CPkxaEQk3vGYol48Q4HxDs4VVBvAosAKTzbog=;
	h=To:Subject:From:Date:From;
	b=bbDmHc/mVc8Po8LCAWBALc6PicPFQM7s1cQTAPOeqSMhfNUI0MSpf4Ak7mlFDHeru
	 mthgfrZVzErJWNd+LRXbK2bgApLGjQaqU8S73NlXDRGF6QBXRVKESc+WOtY8Ulfdsu
	 FpOJ9eU878LqRGKrsUudhNu/p0gZtybTJyqxJp/LDmwnFH5/KwvILD8LHABu6X+bWh
	 HRw39YCIlnoRqTEraVnRtspxqoZ+n9+TrGB+zGn4DWYHTBpvnDMD0myS9uvOlXMhjj
	 Zcmv3ahTdSLm51faXumoV1LadG11aAArs9Jq9bMwcw7aieDoajsvpPmHYqOWSWhxGC
	 WwHbPhHnqjBQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E65CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989539359.1671.12642642586242544891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b490ace468361a350fe2e96d822419d77da7fe10ca6e4fc4560edca1ffdec9a9
Date: Wed, 08 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759895393
