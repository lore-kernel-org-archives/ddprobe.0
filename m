Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581B318040
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718702363; cv=none; b=kZESSwBA9JxMkeuOrF+mhHM+URiNdFBL2rsOf1UJHXK3x0U6V2imjQcUXmG/wJeQ5XKln3mrkns22pWtgwMeyN5C+dDL10KQdRK4hRNOKGEK/Vxn/iz9GcND4Zg6a0J8G105spIGfxReDgzByZXhFR2wmxCcX4POknxRhbogJUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718702363; c=relaxed/simple;
	bh=mzXlgj4cdKJYFvk+5D7XEkYaVbExTKnF2GE7L1hAPBA=;
	h=To:Subject:From:Message-Id:Date; b=pUxK9SmAs+1e6KwiqeAsAFl7jbOgnGJ/d1pJf/6+Cy7oB+0opx2ynLc79MW6uxx5oPNaXuzlRf6XNB7grPb7thOrAiVGYMq+SFuwDOw/1JTCSwVlgHmxf397vNQaj1YfHJnX1fMJZ2XNuPsWEXa84n7PTw1OVv4AH7PWnEmEOC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IURcrkV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IURcrkV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4875C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718702362;
	bh=mzXlgj4cdKJYFvk+5D7XEkYaVbExTKnF2GE7L1hAPBA=;
	h=To:Subject:From:Date:From;
	b=IURcrkV9/Ck0obkL+vR1g/az1aH8jIVCtbu90ugwisW3mbPhWt1yQOEW7ywheA7Iu
	 oFsCsEhWLH68rCb+D49AvVE4cuorGtV5YtaccoFxOguEBxkVxe7rr7Q2mLBd82Mvmc
	 rSgkoH15+Pntd88Wp0MXWoRs0+DLn/tBfo97L1GmErU4EieZ/kgjJMZtdtim1ym4Lm
	 oTvYeHU8phpsmhwm3l1YZtGjs3agiyTaf7TW+4PmDO+m+Vzcbv4x1itJI2F0VC4fUT
	 ImBOetCHGiqirCXVPNoUTzJ1A8yg512Wu91TPHeIhWcHBz6+BjA7DM5ApVDwlLLMIO
	 4F8A3IrfiOcHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC224C2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870236281.23036.15256482500272724191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d024e460530ca71a51842bbd26231410d3fda2549d0c4032405862fd2dc1a1d
Date: Tue, 18 Jun 2024 09:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718702362
