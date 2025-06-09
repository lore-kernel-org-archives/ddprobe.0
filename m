Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BBB21CC57
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749505194; cv=none; b=TjhmdaeA8Y0FTy8RH5mQPb/XW0woDS++PAvkPlUPK37szA6Opgtjo8R2KJW/7gYsEP80gvmyqBlhHamUrOThvHc54OvxK10Hmwv+W6J6+qlNNNdWBG6HuhPS/lmanHbSokXHOvKCPEgeu2o/+WefcLgQ+MR4bNw0oJqA3co+3Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749505194; c=relaxed/simple;
	bh=fuFav5ZXLbDJ1kqrpNzFThQ0FfzUv+9BLcVO+lgVgrI=;
	h=To:Subject:From:Message-Id:Date; b=dIQtRXIC/xOKs057XI6CjBTtovCiWruZDFqbvn8evMJjYAuOZCjXKTEt3elkyo8EfutFrAa4s2JKGVk6ut7MzjZw8xySBHFpgN1EDQ7RVoHxs4qahukYXpW5CBHkYXMD2aLANOEEPtcF7Eu95h4JU4oBqa9daOxV7hNZG1/1NAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M29f+p3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M29f+p3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749505193;
	bh=fuFav5ZXLbDJ1kqrpNzFThQ0FfzUv+9BLcVO+lgVgrI=;
	h=To:Subject:From:Date:From;
	b=M29f+p3MgllNL2E0WfPN7b0S3FuMEG9cK0xF5eaRy6NTZtVu/ihwtmrwzavY4cyt8
	 fucxv+M4xAzAEMTXwK7Goez5utSiJYcJL41yvbgOuE3pWbPkwgFjiygluNrvaUnRdJ
	 PnKu+xc5w6rwzplAxWdPCTMJF6Fof68juVWPeh4HZ+MhJv/bQHBXNpgXDiXdnFcwV1
	 JXkVxrC5acSNJWujujq+E/5waj2OynsKNHoBdtSTgi5n98dPraWZJaXRanrj8ZINRS
	 wSNEWbfWkg0O5TaOFv9Al5lZ3381bYuyxzHk7Sl+ZvUdD/j5or8EYAYQZsC4c0zh1i
	 kUrWp/b4Zh75A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF7DC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950519357.8800.16787282945062947949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f39f15ec5393f5253f3e49b03331f815c697d508ce8dcedfe099013cc8816b1
Date: Mon, 09 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749505193
