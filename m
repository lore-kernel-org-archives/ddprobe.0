Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA709206053
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728066353; cv=none; b=Fb35QE7GDWucs9J5ct2FplLE4iG9cZoIKpeoefesXxceWhCitWOzzwnLk6wVR0o6AMtdR2x3+rSOYKQegJao1QH1IBGIskRbT+AZQslJ8KGmmCt+NZkEuQWdWeLsP9+5DBzsmpOTIFZpkkw8JP6iQNbEdHfdx0V+Y4ZtTpkEFhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728066353; c=relaxed/simple;
	bh=syZvBRNWod9XThZZMmJgjwKH47E3/b5/1CbDo9tYs3E=;
	h=To:Subject:From:Message-Id:Date; b=D8Mug2I7mTlgPMijuTT10ItE2RR0fpaHmclHdvvJvA9+gjDJSISmDl9eAvSwXER2eF0qL+zyCmchQKh6FlLxQCKmKCvZy8gjrnQ6Vg51p7tF4Z9rJbAwSeLWt6d1oCg8u5iO+YAzZs7vfOYbk1+hZYGQJalMr2FYVnrA/dVupRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ftehqm3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ftehqm3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD92C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728066353;
	bh=syZvBRNWod9XThZZMmJgjwKH47E3/b5/1CbDo9tYs3E=;
	h=To:Subject:From:Date:From;
	b=Ftehqm3aBtQVAWpbQ74ILQ0aruoYMuLEiAR3VzKdZ9IWZGYoiGT8PKV9s8wQeu0/H
	 I9HVrCQ5FwqIXgAkwTTfjuBoKCOTnCrrPsYMWBKkZSAFLOCuR4Wt7d1ZyJuOfYYtlo
	 ER79aVxUV5OyfSuOD7h7455f2EVB4CM2YekCsfpBChCy5weSYV7FWKjHwHUvlgtiVi
	 Foh8zOsJw1qiM0BugaKKDVVMn0iZ21tiAcEDX19zCheZvuf53LWTTn0BBEa1Bw+1w1
	 ouUNQhRPE242CpjPJZbqTMW0p+oAaayOoV6hqSLcH76s05nbYjVhxwBk39JS1I76wg
	 t7bqoTRPGFbqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6B7CF8840
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806635363.3028.15046789395579430571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548b798570237eebce9c0700bf5c1442af902bf4de49d3135161e92fc9bdfaef
Date: Fri, 04 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728066353
