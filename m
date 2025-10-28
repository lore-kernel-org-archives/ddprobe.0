Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAFA3002CE
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761689394; cv=none; b=J1ZhVMQg/g2Tz3F2yVeh0pb80Bs+fO2uJMhHbA3hHBAdKGuW7OHIbHdlX0qo2+ZDUFcx5Fl5cdQB9uw8XtGbJGmFjqbnbf/Abm2PmxqKEnFmyW+drJqyl2+AMkjeCtTI7SHY0wO2m855siZla8Od68nrOkBFwHj7ObX1Z90wwNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761689394; c=relaxed/simple;
	bh=WmTCDjwq6nGeLh11RGDMoN1HoEw/oAh3GMInQA+KPIY=;
	h=To:Subject:From:Message-Id:Date; b=s5NbTcLIhP4ILiqnTq6Rh0axJ3ihdUBW2ul8GBr6WlXhO9N5Oo+jXc00JUz2j1+xnQBIzLdyb02GJ5fjqQsX2l4gH1yHzLQHK+yXaJb1bySNKNNDj49gYL2K4vE7N6nhWJNxE6dmhcTLZcjCZUK29QvwUBFRMmr+LT1NrOVUGwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oX5ioSyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oX5ioSyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E35C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761689393;
	bh=WmTCDjwq6nGeLh11RGDMoN1HoEw/oAh3GMInQA+KPIY=;
	h=To:Subject:From:Date:From;
	b=oX5ioSyHSLECFOLlWHy8T3GzJ2O28gs/C2IKAMM8awd0dDVEXhj4gWKAoUk4bM0Bt
	 6VMj4De+knEsiiA4rYyaYg4Uemteq5DEBcyPs2EhcW2w5d6epKBYybTggI5314Ci9r
	 qNRlX2x9kM1sRNQPkmRIae03de+yOnCMG0p6pGWHIBW1gJrfNUJGvXFBWJVtfFV/c4
	 bA1Ww7oBWWqiuzMCoM1FiIB9N80qazFjpqrw7E3s71hlJmu66+aFtbHxvLTGCapgV/
	 FCFzm2eikdkia+KpFshBCn6vls0kcW+cY37P2J8fkMTf06FptYOGztKRYiU6DkTYpE
	 heZwlHz7XrQmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B68CCF9EA
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168939359.12531.15002406120147546200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4260723211704c9f6a19b827baadf3f006a53eeff374796b6ac6f924f18c5edd
Date: Tue, 28 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761689393
