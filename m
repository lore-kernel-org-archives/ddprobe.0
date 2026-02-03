Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A6135CBB3
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770142434; cv=none; b=JEoLTZWDBvEg6NQgTyvNknS/kJkNyAx+eDctlUrfbaytVMQzXFV2KdpQrC+FWrXsqAU3fXPIHJZGL58O9V8OBrzqHLGlJWiL4vnm2Fh0OeHgEqy9vq1ZsRTW62mYxYCXmXxXmM+4nfeOcDcAnPBRZi9PkqlsV0aVg69yFUPuLYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770142434; c=relaxed/simple;
	bh=egN30BXgQVH9DVk/ed39p4tnHnx8JbWJ9gVAzQfcyGw=;
	h=To:Subject:From:Message-Id:Date; b=NAmmKDXCBel1oI/gXQv0n8IMkAdx8XG2V82i8tkDu4BMCHXhbQwYu7nqlBs51ubylRf4a2KvP59IDVO1Lweq2dtAz/4oKHHP9aW3AWNUJeixmd54gnrXyP6Ra8jT0rJmmpUP4jEkv9Dw7k+bR+68HgVgUS8veuKG4QJF9NjzhuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbUm6edY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbUm6edY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC07EC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770142433;
	bh=egN30BXgQVH9DVk/ed39p4tnHnx8JbWJ9gVAzQfcyGw=;
	h=To:Subject:From:Date:From;
	b=lbUm6edY+r6Z0LHeKyzxiPGhMmRQRGc3qY0O3QgoPTF6JOKM/qPSPiOdkcd1Wwd2A
	 v0UbhjA5cVgYKk3PBqBYjt+HO9RdPZdwTwOqmaUbppQKJ5NM4vu0mbRZk4O+kH9q4l
	 ram13mbWXW3RiHFewG14PW2eH1qfjr1VDRBptyV7oIah//2IvZKvkH06Gp33s2ytoP
	 Xee3ZEF8eChq75KU3u2zhkWJyAjDYp+FLiYfpzlgJKtNE3pOV954sd9+ssJk7gRVZ7
	 jgjPaD8ylEGFsoClSUtVL1H/gwxYJT+gEb63Ex72k9YriRMOaxGQkVHMBIHabC9i+F
	 +QiUEmMs92RgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3276E87852
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014243372.30951.7146171627330593651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6879c3095a15ce47e866683fa7385a149d85d6b90f59918d51c130acd018fc7
Date: Tue, 03 Feb 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770142433
