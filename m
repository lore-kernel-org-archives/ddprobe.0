Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526526AD7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720328783; cv=none; b=q9weSdjJyeOTQJ/wKZY79YkXRRcfoCnqKIoGLJkrMpacYqrdQe16mN9SPnjgMt3Clegd14lEnpUOaFTKeyk8/C4iRUh9w1eyxORovt+ZderLZTQYERH3lot+KKXHTP+77DucMFovU0ZlqNVRa71vJ9lN1X+JNWWLY9lVLrZF06E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720328783; c=relaxed/simple;
	bh=QbXG/vdt/1SVDox/T/9OZmUYIEcCFu5DR+j6NftcmMg=;
	h=To:Subject:From:Message-Id:Date; b=sFg5VSPNK4SDD9HMaZM0azKJFFBaDaz+i94MmbE7KRF9UOaqfzYmtpIf1E5u1XRneayanJH8bFNpapBRpGdTKb6IQch4an5C+mRxxOUT42hoiY3QXanDuuk9WL+QbTpkWicLjPBarNP/deCgUIetzvVX3VGsG7pFP23n1iHCn7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYIRiDgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYIRiDgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6F7C32781
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720328782;
	bh=QbXG/vdt/1SVDox/T/9OZmUYIEcCFu5DR+j6NftcmMg=;
	h=To:Subject:From:Date:From;
	b=JYIRiDgiBWxfWjTPtRJr6OxDd9rSV/ScIN0fxXsOTd6GaNdp9HBHjaRRnQqR/1VGa
	 /AG/Y6R3nTJR/Utxm9jgyZTwoVoylTs4WbWdW2oUyPjOqspIL+NRn5ZNXiJNi2zfn3
	 hgEtFv+JykS4ZcOB0Tm5yHqHmy6SENvLMXdqUCbPlWPFgpoGFdP8t1MZ+LaAuP20Pj
	 yjT5WJGEsiijCkY9ZqpNJilaWVg7rEXYPc9QjoeyVyvYw9dM26+JVvX/NVAVFaGX0q
	 UUJ/tKixC/Nq5YRZ/qcXs19x63WPzUPlFrk+CCUoRbVxVVaXjJKoRXLoqOwjsKdsj1
	 jMF0oZxbUv/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C3DC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032878279.11596.1317360008072015139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3023d67ef8081f9de5fe16471233897366b80738df0203e05173221f4e38e19c
Date: Sun, 07 Jul 2024 05:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720328782
