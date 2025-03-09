Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4484542A93
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 23:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741561734; cv=none; b=hFrETZ5L7jHi+WwhG0meYOk/RCxWbbS9WNcDRV+LZybmmZRTkP8A3WLwU40OFS3MjcV9e4jFsMui58j3yIIMsRCcWX2Yllaf5yoU8BkYT7ndecEBiiNQNxAaXu1+wEgWjj8VC0DONdfeYkDksmGhoFrf+8ZvKJUgO4mUG294BxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741561734; c=relaxed/simple;
	bh=4zezHeqQMwaAIsGcCLjyd2KBNuRD6py+353Yv3dbTcs=;
	h=To:Subject:From:Message-Id:Date; b=pGA2Du8zxOig0XzLz1F31eXawoe4hpt7JnP+B9WAQi/BZrWg8aCcSBFj/06+7GYv/y3PtLV+Nmufix3QELvSM9YiXYhMT9KcqXluSnNh4xcNt45cLGnzbX08vmYc3jyiKTO1vOfYNSeOe16+hjeKyu6JL0nwxz5rmQmYKwZveJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCrEVUhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCrEVUhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFD7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 23:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741561733;
	bh=4zezHeqQMwaAIsGcCLjyd2KBNuRD6py+353Yv3dbTcs=;
	h=To:Subject:From:Date:From;
	b=FCrEVUhmqSSdZjy1ggQRqUjWcFktgavTcw9hxp5baHTfN/UlTDFOuTMh+yuWILl9T
	 HzzvblikUbYc0mCW0XVv692ORI7npayRHMS5wRDhOIIG/f30kPDP/OaKyKmk5MdoFX
	 c974pb+jLrT8A0yJvi4uciS5HY0lYAFGV4dB4XvdT5/H0IKcuy3MUAg2CImOzr+cZY
	 UWIaXNzonQsc4eo7tPePNuRHQ6WtdiMo1BcCeLpaBI3rWs5hEJfDNnEqdISmg+AbBu
	 zoEj4IU2OFjycCxQhKDZfoIn9+osj/8GW27BODphTAlpaC4cEJH+Dju83wCS9cCa80
	 lHPsqjXlkBzrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95490C28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 23:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174156173360.17715.5326458283104134028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd1f225cc75a57e897432149794dfd0ba4bcedd88af45c0e76c76eaca132d21
Date: Sun, 09 Mar 2025 23:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741561733
