Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608E44C10C6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790007034; cv=none; b=GItgA+WZKn3okbqqfQIGABMDb+TK3tMDN25VdGOUCBqdNf+4avOm9li5ZPhC+QokDVvMyakPOb5KM6yTiltSwFd3054WT/T+VvrcH1rP9jIooed54wewLhh8R/LL8uVMI9bg1DIhx8SoFndbX2qK5hv01D/OHx+k3S2kZ/Ay7RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790007034; c=relaxed/simple;
	bh=+c7VKY4HZaroLsFx4CogjM0++6Nnh+gpxsvR35Vj/hM=;
	h=To:Subject:From:Message-Id:Date; b=l+Mu9xfacB8cDl2eNZwmSCuyDHhGykjQ9RJItPNRPLpuUTz6+rP2rOf3AZQsJEGbnPfm1cqCIIccvMO3FeUUE8U+1cbR9IcjfMKnt8XvhOq38Q2hAjBFSdEQi2g1WtT3B0JU9SmaHTRudU+ZliIPn69PggTsWHt9zFbQPWQAgxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MD0li/XA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MD0li/XA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AB6C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790007033;
	bh=+c7VKY4HZaroLsFx4CogjM0++6Nnh+gpxsvR35Vj/hM=;
	h=To:Subject:From:Date:From;
	b=MD0li/XAFTOppo96b7qsE6bp6+BaC7AlVlkKCOwKdgdzzk/qJ0T2PKtLJukqlDtMp
	 U5t4m/z81FVdvy6N+HUmdCpO63xLrsiA/rfKiIm15l4wZ0Bwv00TbUZD0MASZFUoJ2
	 qi75xfBh8JqRoeitNmQ7gPxhZNfuRlzOnE5vehHOi0AZni8ZHkqUMeZE/nMPGszej+
	 zXzf0bM6SgPfOfd+bw/D9slvntT0D6uEnvEvfCyJ+9ASHNfgN/HnQVhg/FyY3t7MYP
	 ngip2TzZLvsDiCYafjREE97HpD3JaJmDWnaKSWmQtL2SMn5bmMAxbdbrhIkgUknPhY
	 C08F8gIUiS3uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F15C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000703372.6521.7373157715274595788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fded5b2fbb49a9d22b1448e62d194fb56e28ce43e101f0627b278a2a195aa12
Date: Mon, 21 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790007033
