Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072B73E0233
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773935094; cv=none; b=IOF6VKGqp4voWcwchqHga+jt3L1+5wEpQ1g4pxEFgAjMBSQuSe8fL2uQHaPJqEJFl9a6khAguUXK4Agm3zqmmE6p+SXevLoEo035VJA+ClTZHEzPWyGn6TPQLt241+gG25klRvtnmBM6Ym95TlfPzEbiHsdZbQ7RFykeuDQIS7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773935094; c=relaxed/simple;
	bh=A7CbH2KfNpieD1Qw90XbuKR1H69KX0hbK4ymgTw7NWM=;
	h=To:Subject:From:Message-Id:Date; b=XE5H3WKg15/DLLUP6/TRzfRJgFH3G2OBW+x+an7kbCqZ3gXLNmYQD98Q4/xmMMCavnEq+KJLdLTbHi73EFXRIChOQaRH67wJ2toa8LiIi961Z9yTTkJjLWwQuVPxktP03w7LaWhfx4cRVlR7/I7hoKkrEjs8TW0Y40bxPB5ZUtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGD+K0SE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGD+K0SE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F48C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773935093;
	bh=A7CbH2KfNpieD1Qw90XbuKR1H69KX0hbK4ymgTw7NWM=;
	h=To:Subject:From:Date:From;
	b=OGD+K0SEOU1OPBBgTUrpQbpRR+9C0HWSSyRcN98t/sbjEbs8bKzmcVntsym43vCNj
	 KR+iXMHXbtcH1CodlezDNRBwHmSkURuIqDg9orwK8zGcnEqHercO2EUd//RHxdkZVU
	 WX72G46BGvjfjuyXxAma+KoN+bX4OzjLyXp0qE3yIHQIfv/nsZViY1OZGdakCroaIt
	 ROrl0tlhnfEPYYfX3l781Lm3qMYBMm5y6qnn1CfsJrE03CRiGCtkuTdDIZRwJu9e/L
	 ebA5irZdKShW0MoI7M3xlAJfUwBcbEGav6MDIVz/2lol00/jL8/YryY8QpkeLc88OI
	 iJFCjCcIn8iCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA51090242
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393509357.15390.270353852960370165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d76ed96a4588322c9684108bb8523e29e45848481b6466b29434865c65a2383
Date: Thu, 19 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773935093
