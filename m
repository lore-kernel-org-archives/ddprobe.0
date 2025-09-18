Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0961F1FBEB9
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758235795; cv=none; b=Ejg+N541JxHRtpaEnPwJrfSaKK0c4w4ih0tH/QWSvWUzHV3Lo4Q/rDaoNOs/CLC+j/GGR4KnWQ7ErvDj8uNgZDlmqzSRe0AQvV2V9G0xSHxY8/fO8TWkJbyrnsUnjM5n6kWwfBKfotzchVb2QzZVeeDRjEZPdNV/TRdDb+Rhjn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758235795; c=relaxed/simple;
	bh=rzOvhxhwJLKGpXYQ1wAYes5kJVLOCX1zyXgl3Rek6k0=;
	h=To:Subject:From:Message-Id:Date; b=Ep8T1SrF/1XBWEHUTCSqkBxuGYUDNoYAKtDqhFVJCM/aJZyYcoDKID/+/SIG3QSJkaLRuffBUL//5D2M0OndQv9ZvpTu51sEfytMJJkBmRKqbUt7DiOusuEoomwZo3v2EH/p+cWHPse1NXnC8lf8ms+1bTt9p5NmlNLMWmS2lFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWmLNmKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWmLNmKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ADDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758235793;
	bh=rzOvhxhwJLKGpXYQ1wAYes5kJVLOCX1zyXgl3Rek6k0=;
	h=To:Subject:From:Date:From;
	b=VWmLNmKpSR48AdfDY5sA9FNz8crmEeqm1sfv3IOWfGAiqxaTmx72zX0kAfG/2gvd3
	 3jFIm4UohTesjfPBU4Q4Pf3cPHGWef9IjX3TOfyCRrhyZFc3axcjyNVqji+h3p9B86
	 6d/7jNb66qXzSCqrZxZCVjdGe6EUMkPPG4azN2wwnVrh5jYOSIGaBsxOAHtX/Ys60z
	 Z3r8gYbHm7yNpm5Ytd9WZTbY7A9DmmNhwZP/WhD07VSJKO8qn7f9rVyNDaU1rNT48y
	 K16b6JZfr83OmlULqF8wIf8gI9OA0bfWZ+vMAKNkBsbsGTOK85hB8U0pd8IhmAoxkl
	 VcjSfFSERyMtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED2CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823579357.5685.13344880749002276740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a6a63d61a24248930ad08ffe06070316763d0973cd9002eae9d6af1704acee
Date: Thu, 18 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758235793
