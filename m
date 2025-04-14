Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FB92749E8
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744648194; cv=none; b=Q1wmx3gFtVFqtnYogI1qZFy/wvxetZY6WsnnXntv5JMT98J7HC6xSF7cxsxrDMY6vOZ7wrwEpjSff4P4XzvuNPLz4J1SI5qUQqPCHY/k8Es4paKVld1NEG5VPi0FSaLyOe/jH+gC0aiCb2JkieaPLsbJLwZY96KQWvxW6lBN6Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744648194; c=relaxed/simple;
	bh=/feTVGtBBTPaf9oqUVoMMA8mLc/VnwqmhTFSeAJmOJQ=;
	h=To:Subject:From:Message-Id:Date; b=RFUQ38IOHf7AGtu0WzIrFMApI9J5Tn82hVj5uGeOVuSmWcwr/XztDY3mK8XZwcDbsJ8NfQc6LzxzYIIVIM0zQvEklkRkw67myQyy6gli4QB/eGS4LGhBxaTv7/es7cUsttUpOoJoh8NTz+WXW9wG98jWt8Q4as7GIyrAIyo4mzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJ+/EmnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJ+/EmnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8A4C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744648193;
	bh=/feTVGtBBTPaf9oqUVoMMA8mLc/VnwqmhTFSeAJmOJQ=;
	h=To:Subject:From:Date:From;
	b=bJ+/EmnMvfrYjE2oc+kBWEd3zSCUHqrAVp4RHbVd0RX+xKrGrV4qf6Yh/HH2vj6yI
	 NEpNMDehuJ9yepQmejkvQHoZ/LIwEcLY2HIlZTDTL+sg2UaPGYKFNDBWxH/HP7A3ix
	 HOdWh0//6V0fY6NAnxFjj2TsW5Twqhdz3n8HSMcajQicPCgjOX/4ejqPCmqZZDMLQH
	 Qb8jXUfHtifRAruiE6l8nvFryZz3TgPVq66WZmGcm5Hb3SgqFNHRmN4GH8jHoyGZrO
	 mc/g705WNThRMaKNMC3maB9+Fk4T4Ve7kxd6+0KsoO6iSN5DoUcGjECCZ85zT3SA94
	 b7/3DuF8xQH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF2C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464819358.16222.1390189156416795766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613f92ac44562697538c56832f806cd43addd8348c522396cdba42fed15ef5f0
Date: Mon, 14 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744648193
