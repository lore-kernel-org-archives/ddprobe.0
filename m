Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3706E154C09
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728734154; cv=none; b=KQoHP55F6PAE/ROOqIPv9WbDaJztDyk/PNf2vXw+isCQTTFYGExT+9xvlLnM+SUsQ8NQBEhDv6ZOC+zCV+2mNsz7G14A8zaFZDE72Gb5cP8ajzPvSCj+Y9gtPnRBjKwTcTTfo74bZ5AK8Iugu3Wsy3yOwbFOKk4bSB5gS96iqso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728734154; c=relaxed/simple;
	bh=49Vklv6wyusylpxgnua/fT35Ahm28pG3FJ0fRPBsO6c=;
	h=To:Subject:From:Message-Id:Date; b=Y4HxF79AZ0hr/8iAFiwUODLtYcdH3P1QFHq+HDwm4NjSzTGVN8mCpvIeu09AYrgx5GmRBrhR3ZzLw5YzAkeruXfXo1d25+BMfM4666rJPix6XmPv7oz0aEr6Xhs5WLwYe5dl6mWiZGL8r+1BEUdqWKkxsBxQ56UaeysXpho/+ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXFxlsCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXFxlsCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1034C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728734153;
	bh=49Vklv6wyusylpxgnua/fT35Ahm28pG3FJ0fRPBsO6c=;
	h=To:Subject:From:Date:From;
	b=NXFxlsCtzJuQ8784bOakR0t1ZK6DBAtCPmDEA7rzX6oNBe+9hdrb2REDzgDzQ/kEA
	 7SXcwv74h5IEoEwEEmY4nJdqw5u1k/Kis4uT/F/sIAsVHMA9X9BK2FLsNofuRh4Mfs
	 ih3gleI0XboPsxkf+9j42BFInxRFKXnyzKCzxrOqy2USlF7VvGIzvPVQ/qeuetVSso
	 cgth5FGYgoqjseVj+dc7vnMHVVZ4sq7t2hRx+UVOs7IQcEYm3beqJ26uhfxCSuu41H
	 U9zh5OiaFKeb1yvkWGEmy8Xya9PkBNBt7BmeGNSKzJbxa3r9C74wwZecYB6sDhVoLM
	 DR2V9ppen7/iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9F1CF2566
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873415358.14454.16549668925485033946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e003459e11f0ff34b3ba7b67beac5f83eed994f3f137b167ec6a38d3f393ae4e
Date: Sat, 12 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728734153
