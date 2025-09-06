Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31843DF72
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757128194; cv=none; b=HG838hyMqYMeegJ1dwdU92FME/inAIqZgR9LOr1sN6qAvV8K8btpqNR5N5Go4f2C5RH0KzNgomSixzRAR7Zv+DrdpbxB2AUwvQj3HMtPw9W+g+L/MNgrBfbG1ZcLjTtmCYccErnwEEbZK04quxJOrSQFfzjwZn+p6uwaFUSPOzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757128194; c=relaxed/simple;
	bh=c7ggd3aOTdZtDxmhQ3viuF/EOCq4b8H87z5r/7EKTIA=;
	h=To:Subject:From:Message-Id:Date; b=hVSH9k2mo+7AfmeEbgEOwJVDXrVkoi706pNtRVYiCkv3muV3/eODlECg+V8DYitIGBkbA0HfIuSg1BcjKD4WQEZ7358uZFihjukqZVefjyFjQYm59tJF3RZVa9uIyPpc04THndAtYJg0iY0KEhe/t35LrzHrnXwMt/22UDtP5HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wwj1Nxk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wwj1Nxk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3234C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757128193;
	bh=c7ggd3aOTdZtDxmhQ3viuF/EOCq4b8H87z5r/7EKTIA=;
	h=To:Subject:From:Date:From;
	b=Wwj1Nxk7yfrUGypjPPOia7Th9ewZFOQRjW2fdY3QXHmzkRe34DcEZ6IFYN/C0sX7v
	 OEpAW8Ohi5jw1FaIf/6SDBu0Fs4BEwSSh7z/IFYfqaO5Sxgfrt0HURUFU5IDIN2Kr1
	 OfAb21AlGVz/y+iveDUlbNyWGSMGdSIpC1YOf/rFSABKuEARDuaTGoiWznLRfwtlvg
	 msUkhap8OvN8NAKu3Ha6MpHbE7W8m55L31HFBzXU8RP3o7FS1V+xn2m66gPg3yZr0U
	 DOsonZza7t3/x4fCmd/anaGFmgHVyRfg3e94xLejHW8iTEx95mcDKUo6rlCBLoGBUv
	 7KXP1acpmExAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E00CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712819357.639.7286956527440955707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c05b1ba194a308f4f2cbe0da533f3a4887e97806631771c770feab8ca4a1cf
Date: Sat, 06 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757128193
