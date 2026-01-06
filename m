Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EC3223328
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767739434; cv=none; b=S8MLeqTjApIoD2brsVn1r3aocwbnoToLkYKnLV0oH/2kOsDaLbWvJvLhgfYniuByNrFy0yLKNCaVJeWDg3o8E8HiJS858Yy/HqfaHhWYp+cK6S9sYvMK/VwOITmdiMCuB5jbBKK4oO/Y6+XbpG0qwyz+GQClFvBKFaqes3H8GuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767739434; c=relaxed/simple;
	bh=9NuVB9E8OzOYg/lqBHnIAx+yB0ABNnr8OCdNW+jLhq4=;
	h=To:Subject:From:Message-Id:Date; b=UbUEqt5bjpxMXo6Eiv52okVZSjazs7KScJW4F41WCXkeCU2dStL141aCHJRG9jd6zFb/LDlC+0o0JghfgSYLhP15RcoyCJuaB85gdkxWoRd0+qMhJtCeXJNTkqjX94hsxCwFHZnpph9eO+9Zd3/TPWPpDkiF2r2IYy038Cd1J74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwvFr9uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwvFr9uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1705C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767739433;
	bh=9NuVB9E8OzOYg/lqBHnIAx+yB0ABNnr8OCdNW+jLhq4=;
	h=To:Subject:From:Date:From;
	b=VwvFr9uzQTazW4+vIxS8jeBo/tXXc4rInMRAzQex0nVZ0e4Tob5VOP+JZch2Ye4bt
	 SG/Z6NhJnOUWkKK2nzDP6b8KWCUg5dRlXGviQnTtjLbPJRU2lAwMsMcd3cqkOdILQL
	 +iyjDpznFqYH9vz82F+L2o0hRK1Xuq3X9K/4VYwdppggOVs///74p0+1aRjz9Rg3mb
	 2rvHf8e++Cn1okJT2uHnF5z9X2JVAsfkU4PLZ//20hH+qTBwrDjN7eIxKYMRA/uGV8
	 Ha/c6tO1aHDKoBnYrcl7rGAzy8tzpkYw92G9fU4lzCloxuJkrHepHZtluJJA4oPeAO
	 tUSFlD0aGJX3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900EDCEFD19
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773943358.27917.14039923966408017961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b785fd4c2312d27428d727c46441b3713894ff2554249f93ff6724a6b45ae0d6
Date: Tue, 06 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767739433
