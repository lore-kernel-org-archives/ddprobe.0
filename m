Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC8824B28
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769603633; cv=none; b=X+u2C+wNCoKJRc3b92aS2XiQ6tUgiNxq3QaY4K94/KypYHFME91h7cRPq//9QVwBu+uOS7WPxU67zszDVkl4fn3L/v/jgsUZDvD7aCV6IPpSAJbkk1xj74KUtavYQk5ALC35Hk3p8qINtcGMLPQDy2SWuDz791xr5QRT1UX9G8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769603633; c=relaxed/simple;
	bh=n1A2UOMiNjnTNMcooOUr2fLx1Kr5Shyt6aSEMxscfH8=;
	h=To:Subject:From:Message-Id:Date; b=AiNlabfdMDVgEY8Zbn5kGfyXCJYOA/mq+LY6Ies1pmQSwzgIrkpPKmUWEifhH0/o2aE4Q7I/uLf3Fmyf7oJghSeMGMUlYYlLLi9ZG3Lma202wZV+5VifNP+5a/ParIN42DSKgRvXB776vj6HpgTWknRoJAJKTfMZblKyEZVXiaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKAZHRvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKAZHRvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0854C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769603633;
	bh=n1A2UOMiNjnTNMcooOUr2fLx1Kr5Shyt6aSEMxscfH8=;
	h=To:Subject:From:Date:From;
	b=KKAZHRvocv0HLiyH7MRs1JoQdH3Dgu76kPGEJBwhBUIbkP3WzOHR8guVOsWIMx0db
	 QKyDe0M1fPd32XPqyvPoWB8cDSyi6hm7GBMtg+vFqvW69YOnUYss1sERr4DMMPdMYT
	 ked5GJ+kd2loWPHSI32SeFNt47GJ8tCGjQXXS78ezDb3RMszl07vr6MOmcGVScNzg3
	 4hL5xY4Ro0Ic/k+TyVgM/KpLm1em55Phrh5RQMuwiNnNTbEpNWlCwx1Knd4QongwML
	 /MHtVYjKTDCo09KreXW6I5TdvxTuJQHpXsWefTFi+Ce/0n6spZFCJgHFMRaxLFpzmQ
	 XFl8cjC+6l+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92584D25B4E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960363357.32481.17608483349045275013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aeb52372db0a556bcf37cfbbd4e04730c304cb949a149c5043265f2cc1344dc
Date: Wed, 28 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769603633
