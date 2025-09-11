Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214B91D5CFE
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757583594; cv=none; b=kkdvJkUox5TCijL9P1FagsKCUt7XkhrIMlbAEreoIzqSPgHmdCpRSvwgbMvTmeXZs5WJ9Fnqa30vszLfxSb6Eowq9pFG13t/mR7KpbWnLKMWtOVK9csmzp1rsbN14E2ifMi3CFMikKDooNq1b89kehrczKCGUugBL+YQ7NIUXwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757583594; c=relaxed/simple;
	bh=A1IWS62c5L2zVtKmkhJxaMLzNvvvGOfR0n63oZlaTno=;
	h=To:Subject:From:Message-Id:Date; b=CrFuMDaQvcK4OsFtZ3BiqtA1LHKi/1EUPCH1xPPcy869ea36RsqwIKDc4Dfxbf6NOzxVgL8NoG2ed1gd+yrlY1w89cHdbfoH1ifql1i88TnOUs1h5amEMlxSEBK0O6/8wT2HrtAtROnuwqMw8QmPcqIf52ndFZpe+vTGNkNQg1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9Yxte8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9Yxte8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A343CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757583593;
	bh=A1IWS62c5L2zVtKmkhJxaMLzNvvvGOfR0n63oZlaTno=;
	h=To:Subject:From:Date:From;
	b=E9Yxte8c9Zelw0Af+VTBNksmwsJg7YRuoSiFoO2wfpYAgYSCpIooliY3G/Y5V2o0d
	 fv3nIC6oz3pZdTunvl+80pZhUTp30nvenmijksws+ZUK2YavFRoPJCQAPNP24NRfHo
	 hORBA30P4uyRRzW/WWsO3IrAtUxpxH1HQgr3sSFZ/yv7nqsFKvwyvHF5S5bV6Je0DD
	 ySHAhGdZrqNF1YBSFgODz/Ailu7JK6+/fVMy8A1jSe5CYm0yqhE9fh6Ta9QtUwCAul
	 kkuhrhRMJPbWLwd84DaYR+VKNx/vpiBD+vpPLzUmq761i4Ia4+f7RIVksWr/9EvydI
	 7+MnGGc68bbgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CEECA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758359358.3335.14543288663787703910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701dc8a83d4b78f32008682c065cb5b33e048794dcd78249929991f1c6376869
Date: Thu, 11 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757583593
