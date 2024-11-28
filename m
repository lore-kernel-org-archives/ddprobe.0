Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5DE1C57AD
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732835154; cv=none; b=Ufw/yfKC+8RO5wV2ukTpSMVFq5b24hi2DhA+g9diH0b//5BQhikGAmqKxHRatvea4QVr22lzBEO6j87RAHBuEmmNds10UpzKd/Rq3tIsGItv4ExaZeLBRKZYrM/+VZWPXgbkiz3PeXG10/i7zr1hubDE2gPIwO1YsggbbWrnNuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732835154; c=relaxed/simple;
	bh=pm9AWmO9Z22m1Xsrlq5E5/2LUXhGcEvkHqyi0buKblE=;
	h=To:Subject:From:Message-Id:Date; b=hmhFlftQTKMlidAenFOUEG7//rn6Fwx6ZwhxHpN8rFGHuUO/2O30SsXJz7SmmG9ESu5j1hLq8HTso8ZnbS6TrHYqE3cjkJHOc5Oj7saxwOsdi/vujsrPyFFVP3xx725uo8vy364M0tgvC6oFG/WoJbSzUTOcfGcaVJk6T8/EUoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUkQAdNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUkQAdNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33D7C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732835153;
	bh=pm9AWmO9Z22m1Xsrlq5E5/2LUXhGcEvkHqyi0buKblE=;
	h=To:Subject:From:Date:From;
	b=dUkQAdNTH32suot7+kcg81jbLTwqrPe+RD4nwCy4G6VomPFrUJJGp5AlCHw/X29bz
	 uq4uho9ZfkTSFpiEPMiuAvvEEaQMWtGfKutarh/zoo1junXDP/5c8doJxxNUkigXyX
	 G8eeaSN2Y7Et3ZYENFyJdY4wrLrV5aXx+reUfsEMRvPJqeyZIfzrk7yVBdCfKFKLsh
	 R87yny5j6zBOZXLP295fRRW697LpZKrQ+u84Fv4WjCebsLliFmMwY+5ISbjV+mNyN/
	 jSFvgGeyvL8P4Uc/xFk795C+6yC38EbIMVADkytwzj2SQp6AGKqap4zc/HM+elcBBh
	 kYhmSyl8huOlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927F9D70E01
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283515358.32194.3567688554688817537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87147808fa1e4483239c7b699daec869e4ebd58594cd9c1ac31ab92c8ef02d9c
Date: Thu, 28 Nov 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732835153
