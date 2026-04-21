Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34249329E44
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776749254; cv=none; b=n3gf5hF7AgHpQqU6ERCQ6isOEXyTQDcac6xsWv0HW0hgGpaO2iN1qYxJBMw129MsdtmhiDh4QcN364l2r19EPUaxeFvONXWG9QfZ6BHKK/BMe//JQAFDhPIw1Nc+Ls1ITeTN63Sid8brjz77ydoNbar42JP4C608jGR0px5fEYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776749254; c=relaxed/simple;
	bh=1CRwd4c6Z9Y/zZCS/GZDUGwZR0qKiyOo4cv0cWldoSI=;
	h=To:Subject:From:Message-Id:Date; b=GiP7IvNM4iwNMc1O1U6DOD0ISQ2ees92hw5CQQqWjwQ+IVVvQTVgH0zJcAaaDtnuxFYee7yV8eTwXfrBVcqgydCYqw4NDs2L6vvKThcTH0HhCGbZNsxqrSME8mBVM965FnDg+fu1s7IbkUHA602P/9zJdV99aqdJgwaZbZPZvIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPt4msur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPt4msur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5CEC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776749253;
	bh=1CRwd4c6Z9Y/zZCS/GZDUGwZR0qKiyOo4cv0cWldoSI=;
	h=To:Subject:From:Date:From;
	b=OPt4msurokLfMkKsNJJ6MbT3oUxrQsYjBywcL1vTY+8nRbjncUVkvWz95IZoEKzrM
	 Apg9Y61WsYavYAQocBz5YBMbw7341jl3x8J1KPlzVSCKR2f6+F3Is4gcM0UueRyDOH
	 CXhZ4Od6k8JcIzTvbPFfo7Jc7iWhbboRzuolsdFUd5BbcJ5Fj+GQwrg12xRNn/MGr1
	 J//WaGmjQswwW2pBphJTJgMhbMxhAnHksLkxpdMQxTLbX8skJwSzYhQ8rh4NaNSal7
	 FHIpZfZrtnR1XlKfsTUhdMcIkpvSb0+q8IuFw8h6pmZVCa+aRU+nDS2unmuOuTkqOm
	 1g3QUSGLYOmKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC60FF55805
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674925368.21607.1103121484801264500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f37bbbeb79cc0903deb5b9c9cbbe0eb8e8c2763bd7aa207762d103c30673d3
Date: Tue, 21 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776749253
