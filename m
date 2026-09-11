Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF90265629
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789121434; cv=none; b=fOEDhNaSIQrFbzd8bvOVDGllASdKsz2ANPajZDo6WyPN9a96fAgAqTAs59XtEyJK0MzLFld2vEMZV2/qHdleSWvtxYJYcWR9qWIPO8d1f7kfaHtTNkXrgKY0KdtsgAVx7aAthPEkSWLHvo3b0qp7zAuZMSA+RQuWlo00O6ZOARY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789121434; c=relaxed/simple;
	bh=RabyuVv0FicBEwXDr3hYFpCAOeXEsutgHFNRPw4H0JU=;
	h=To:Subject:From:Message-Id:Date; b=ZRLpoLsNkTIEGp90DYdKmPWVsdrE6MWAa+fPSLevr2znR3YMdPhPkBkkl4+MxLU+gqEz4UvGg8m7Jsdaj+bbrSgCIGw7fo53CPXVoa9hELB30AU4+PcfqkSTOuZD2wlOOhJOvrcra3HVZCIesgV69Otjn9VjDrAhp5LivAKi2ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TC+hhkPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TC+hhkPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC8DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789121433;
	bh=RabyuVv0FicBEwXDr3hYFpCAOeXEsutgHFNRPw4H0JU=;
	h=To:Subject:From:Date:From;
	b=TC+hhkPuryHt9ha/wtuAUbKEE1VHSv2w0TI7Tm+V4habsF8C690uCSxljHu1TYydV
	 9fxlD2L0vc46ptKpiF/eqSg7S0QQFZ2L8e2U0SURAzqdiNYoH6WOSealoBdD6q5bwB
	 BOmcIMr2q2U7ylw+15lUfXK24IyCbzKluI8sIJqC/1TKgYUmVpOpIWHaNaMCSbxA6S
	 fbl86jfDkrshtJnNsoRGaUSuOUazzOXDkuUE5jLCCrpIlDuYhof/x9BaShTJUjk0PV
	 QcFU8zNsh2Tk6QTMztgckCcrPcZGilEdXOb4QEKM0POPGAP0rwRdL5RkjmGqmnqSI2
	 //wWb7NRsGt9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BB1C88E4C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912143368.18226.15581563901836302477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89b5dfec8160f7f7cd135962f0e48a1c901194b9a41ffe193fc297b72b4f913
Date: Fri, 11 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789121433
