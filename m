Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071F6207A32
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767646434; cv=none; b=XmYr8O971DxobShEEJ6MBTkOpBOn5ajJpoLra8Ub7Ohp9IpEL6yyYEyjqk0/hA4qohUjrCA3QyvIUesZTRY0Sr81LJ62iSanUB+68oXypqPfW2lWBJd8sfOxIn/ZfG8iZ+zsY70V1NsBsZIA9BP9+3SJQB+KFiCNv5wWT3WF8Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767646434; c=relaxed/simple;
	bh=ksk9nVJ+63QWyvWhsXxAMzhv3SvZAKQ+DATOQPCCfY4=;
	h=To:Subject:From:Message-Id:Date; b=Bx/d7rE8xLyhK/OpiuaGQvwh+K7OFK4SgWc+QidsPQU05z/j6pVCneQ7RIutBcJNMEqyyaOgHiHdk+ZcZWojq1SB1kcVdJIHYpn5RQQRrR8Whcq6YK9ZaGfC+6IIB+n/4/eURwKsnPqoNWhW5lLasnkXCCQVU1hEYeO2/PNLzaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJzVJoxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJzVJoxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A017BC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767646433;
	bh=ksk9nVJ+63QWyvWhsXxAMzhv3SvZAKQ+DATOQPCCfY4=;
	h=To:Subject:From:Date:From;
	b=AJzVJoxkcZGmb1/vhkjXSCExCUt4tpcSAVXdg4+Yne4ZlolnsSpT9kAxgqMWFCKDk
	 f/TPVlvQgGDCKHCNxp5NO1TYoC5r9yf6sKAJAzfplveUK/Ueg0YIUyMMvqSrwqJsee
	 89j9ZbplCehgiXBLX4XyJS33QjcEYzNfA0GakaVuIwEW31B8uzhQ0HOHP1QM/s07Rp
	 74mGCKlKi8OTcrxsbQdzjwmWI09WDxgqCUmdkYN0Zj0mPqbsJT+l2mC2J3XGma5Udg
	 yYzH5iu0zfxQCx2CiEBK8AGVNbUD4MWEmTCMbuoOMtwAssGKm8S/ZBHmkoN6aC/hpE
	 ZH94v1iEiCxLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F750CD0402
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764643357.13347.6178224159183617232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ee71b23b0301409d2ea8b2cbd45121151f684fdea034255b37ad63f4fdc8f4
Date: Mon, 05 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767646433
