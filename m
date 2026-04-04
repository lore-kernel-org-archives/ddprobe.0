Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3875A175A6E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775341534; cv=none; b=XwQATQvaqkk77VuSVW0FMNd8AvSziF1mA1HEK8OvUkChsoTFbs0jqL3sIM2pmyXxlxVuqzGuQdHXy8fGM+tVzIxtBmfn3yanp/4HB/ouQ0kK/o7b0CmITOP41GSj0kCwskirPrmu+a3a8bC4PYioDmWOlg/YY0zMipfCMAuoG8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775341534; c=relaxed/simple;
	bh=pNb1zkwHpdTxISbpSB8iEwOUanZmIG2N4Og+cKoFAwQ=;
	h=To:Subject:From:Message-Id:Date; b=Xih9ABWc+Px//B8VZts3qxVHHeKBZ/3308X6Bj5cSsjrJHPV3YYoyozgAc5zswE/RlLRBF+I5hhHX4i0vaFZSdypAtBsbStWzTBcXSnbW4BGgbeayj4/v7aRRU6vVg6GPeWsN/uVTHF3Qb348eoWq8wHPr4jjTbr+v/QVpYWkWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KK6Q+ZLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KK6Q+ZLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A1CC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775341533;
	bh=pNb1zkwHpdTxISbpSB8iEwOUanZmIG2N4Og+cKoFAwQ=;
	h=To:Subject:From:Date:From;
	b=KK6Q+ZLuWL4FmohhPFeZsFrI0DlMQqgY/KjpVhY8ORgA/G94+tI2a6NuwyfX9XrJ/
	 xqx1g96aivta+i05u3nE9G8UdQDJjTucMw9mi4xWdSI9Mm/vQ1gYr+IwFTmfgqpyww
	 At6bc+qIpkoQz4XawHziY18OL+Rom+zkCUPXgszoePRie2tleqXQmR89MilewrO9ym
	 BLxhgoEHohY4hdqw4dXsT6gfY4q6lYe1UyGUgZtW/aVeVxq4Q8p3cwvOmBaV0/Zetk
	 Ja5yOwEGmYKzlF1lgNlao2DyT6ky60/CyJUeiIXDalHsfUsq77sLlf+BpZan+pDYyp
	 CEAQTZjkY1Zcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B111CE63FFD
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534153371.4010.12126632329908524480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673389df87bbd396508a8e15ba38a88676e010b8ebb11a035732ef26d5d6f1d8
Date: Sat, 04 Apr 2026 22:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775341533
