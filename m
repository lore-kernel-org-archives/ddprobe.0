Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F50320B21F
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733138754; cv=none; b=R6t9SgQFgltgyPMxrnA85brVoAs8XtzQGwi6beap4qlzCo+vGJ9gTO5pc0PXalPyTB63RC0YN6rSx+q9oW60FM1gX0uFRh6pe2/1cua8ENF69qMYImbhEQCFwE1LcDKiXunOp9ngsV0fju1Xz4U+49UZ+iYAczK1ggbM1/at4nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733138754; c=relaxed/simple;
	bh=PwMa89jF0vY/e8jHqiiOsIEjQWF1vhFmpd5AD4fLZ3o=;
	h=To:Subject:From:Message-Id:Date; b=QjrIq0ZzfmCy5yebMxkKu74al3GpanBVNvdl4DRp3gO2BxDjv7xP2o/yk6+3H0iDIsocUeyRb9Z+1RzOldxttatm1VfLpO15UEXLLOFsqOED6H3IJwfaeqlqmQZ55JoIJyviBQT1sE/ta30MbLqgnHSRsb4C8qO6E+ekbdiuqnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pv1Pxqum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pv1Pxqum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0761C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733138753;
	bh=PwMa89jF0vY/e8jHqiiOsIEjQWF1vhFmpd5AD4fLZ3o=;
	h=To:Subject:From:Date:From;
	b=pv1Pxqum+Nkh6ek3Qq+6ZH3YHCLb9OfWwRMlbmmd9mh1Zvg0G288Wd1TRVMQw0vGC
	 Kk8xokONYBUx9KdzTR6C5cMOajA1bg6K/oRrUmGHZd6wM7Rc45ehWJv6XOlHkWDKgO
	 RWWWUfkgHe/w52BCn9CrrheSMp3ilYjReRRkwBCt/Y6Wg0XnMIAPrRzj0eRauWsoYh
	 4Zq1pkx8/ccd5l/gn6Q6+v8qybhkl3MK5Zi3e8CAAOstEY2YZUHIZ1czF0wGmuOEtg
	 4VHYj767k0VYPwMOAu4PDLMDz2WmtkI2QDyFLtZsxSBLMdyzY8XR96k3Oc3SYyL4g6
	 bie2ZlYmenY2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A905D7830E
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173313875361.25809.16042171530602336338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04be7b11578ac5c62228329d73235ac1cc91ed9e0eb7d69b4312f32115373603
Date: Mon, 02 Dec 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733138753
