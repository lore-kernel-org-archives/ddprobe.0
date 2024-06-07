Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5582561FDD
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 12:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717763243; cv=none; b=oPbwbAmzD+W2V7G8xXPYedf9oas+13Ov8HN5xWhTzyuKQ8rSkqYFrxlDWPcBAb6h8eWIFzLcOSlE3M9ggF5wg2FL/ko6tUQu30nfG4rJ3mlDJr4KhcjaZJKRucZhjQG7Lr7NtNu4BgiWn5yqXJnM62ZHPDookoUu1cwkbQ8hS+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717763243; c=relaxed/simple;
	bh=+GpClpeV4Jvdy6jLQpl52bnVZQ8y6lbUexImuT8KIiI=;
	h=To:Subject:From:Message-Id:Date; b=PxOKNXowz33ofrXWkge0upWZji/6cIUI7fYIAm29qYCuZLsuRNP6lBBOStAgDp4JAQS+sqKHiFZniEjWZ6oqx9jWM/GVh5WDfpDJtRy3Z0D1KLez/5vP75RrT3uvSLfwRvCJ8VJJtH4L9E1hFwHcP01y02uuGqEuWlTi7KLBtYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSD3bNEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSD3bNEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDED2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 12:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717763242;
	bh=+GpClpeV4Jvdy6jLQpl52bnVZQ8y6lbUexImuT8KIiI=;
	h=To:Subject:From:Date:From;
	b=RSD3bNEhJVIzJ7b8TYXvdQ41JOOBsaCsYG6fVuB0Pwm0d890An9KklEmHwsIVW+5c
	 d8/pcKb7KEIwCeA69Xi1NTVp1I5YYm020Up0TdXTkOcEkFB7DNsKWvnR4qBPiccrKW
	 Gh49aAboHrMbmZlP5+pPDGldxk0AMVVObE/NZJTFBEv5O8Z4EE8Fiu+9xvDLuYTzI1
	 481XOcypztD1qNuG1BLw49Vlhd4nbyDvEDdnFo+LEKcTgY42qTJU/QOtNC9S4xmnFa
	 i7vKAC7yhmQTyDVSwMW0VWHxh2ElvvuTl5bBN9t1ujU4z1IReGOOhLI2YPRfinttgv
	 AKptYLPgLuxCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E54C27C55
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 12:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776324278.9913.7024000630606186948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a690742a0366994e9d6a743370a6bb7a1b8f8cc9ac4230bc11b9ebf2dc4814
Date: Fri, 07 Jun 2024 12:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717763242
