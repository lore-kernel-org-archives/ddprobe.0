Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D544199938
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751529594; cv=none; b=PYf6YbXdbL4jMUfSIoJIr+mTvMbVdSc0fiHjI6T3gGByYXJomGhStvIK/bD4JVhqHvSpTvBttgb5q5diCSHD/cAkYpJXhuaggwGB5BxPdPn968GAD7dNpnlAwudSbGDAVJjjnwAY79pPR3en/W+aiHFviu+gae3vwfzNi5vyEZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751529594; c=relaxed/simple;
	bh=4pYnSKkgC9/Cx/MQrhT5xS+pcOKf972V8X5gclE4FUg=;
	h=To:Subject:From:Message-Id:Date; b=Z9hIG4noOGoaN6eDgSyKrierzIKvJcLrMHuaSDPAWmvrRGL+qcA0CeW1acJj3/7DGoHrcJNTlDJ08x9iif3uqr9r2Qk0eONRlF4C5rFc3p8dmVwPlS0gSsZJh1EaoktsL0GF7VEBp7b/U9meON9ftmD+Isf8JPXFkCBFm3pGChI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2stoNuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2stoNuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751529593;
	bh=4pYnSKkgC9/Cx/MQrhT5xS+pcOKf972V8X5gclE4FUg=;
	h=To:Subject:From:Date:From;
	b=U2stoNuOxHD1fEj5JNa2SGe6aHyb01e5DryOk2HUCjlCzcW7RrAm3WRG3muu68CAo
	 MntIaiWzzCcoApZeCekGz4H3bgQFw9t7dvRZ0wGTOFvUs6HRKuIkVM4NCoS1+8MOgs
	 SmDNSERYahhyRIgZfqdpsfqDfY4beWiiEbVZ+xU+d6coRH9JIp2Apeh0gs7KCb3kwj
	 ccYwWFJhWJ9A88kNJ19G7Xbkm+oxTqH4lh+wudMvcf1zucRmI7Ism/WbFeTT9BnTeb
	 CJuvagW4ozlLbf6f7JrM3IwdRptU2cCZhavMpKgv8GfmlTyF2ba+WY7QzzkYXS0LTW
	 FjrX6FIuz/HqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0DFC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152959357.31261.3801673895008346095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c672f381e239aa02824b3bd1973b8f180804cd3bbda0c45757368c5446ac2414
Date: Thu, 03 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751529593
