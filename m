Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396A52D8378
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770268434; cv=none; b=OTMgAwCsxduNIANYV0shYZcjVBbZnMRAjM7ZOhLBnr6LwK7x7rlRxWxltdcl5DuHTK6nicZNtv7Pk83M2oZ2ysryi7WZApt55OQhC8+zTdtao73w1WkkI8D0m/eJUiBZkguIU9QlniEkYIsb60HHcQTHH5Rra8h4y+PsJRUyX0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770268434; c=relaxed/simple;
	bh=yhwE/0WyEIKnDdsXiO8jSTu+qeOxkmyZgCY9OycVU/o=;
	h=To:Subject:From:Message-Id:Date; b=RukCZQktFlllhSNNVg78Yf1fZDVaNUb8VvvFlyC6a7vlliZlKKmjyLaPIetBH3zleWX0tf88HGXP37gGdEWBPBbzRqEGwYcuEGpQawoV5bPuh+O2LNvSkT4GuEOuAlO9hUD//Cp+ujsqfV4QdmMW1Oanuh+sYWxghlBT1JGu0cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qi9QPV+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qi9QPV+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA86C116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770268433;
	bh=yhwE/0WyEIKnDdsXiO8jSTu+qeOxkmyZgCY9OycVU/o=;
	h=To:Subject:From:Date:From;
	b=qi9QPV+w58KSJt07vz3ZuINW+EuFtISkTAnXSpcoy94i3pYlz/31ErPeRl/Rg0uqr
	 LZ+at4hUpfNmcazBT1I4UFchM2nmSPaA+XYs6UFQdd340mlEB4eJ5Yl+bTKYn0Kd6k
	 D2iIz0bYKrhD7hXuTxKQjPmqJQU3z4W9+o2c6OQp07C97h/ysCZ+iz5Lczop/kgbx1
	 9DGskLgVFjcM7hq9RIXe/XviTTnsla2g8czbrJ7zpMPLpvmbPZwMHglJNGyszx1ZP/
	 FHf01GhW/ocmUT2DNySWoyeNY7R+bW3d1rj4P/b6T/OhMgKPdCt+1kBUxRT2uwUmcM
	 0eIW78dDFPXiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A410DEA796B
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026843365.4883.18117701169389634999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37383940180b66d4594cfbef9586faa1737431e24e416a26bd282fad30a17656
Date: Thu, 05 Feb 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770268433
