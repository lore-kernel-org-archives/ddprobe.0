Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517273203B4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788312034; cv=none; b=I3Gq5l2tMIArCSpq0lhiHxJM99QNVzIlDCzMIbD/33pmDkYcAzpjt3wWhssR1Q0b2chwdmrW2LwY3Qom3U5pNE11O5czckJ//mJHl5+0G9rWD5CCx1kG4dqyRlwlf/QkrRZGoYB+qx0wuQoTqPnboMAivOd9TK0CkqjoRTHzsPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788312034; c=relaxed/simple;
	bh=HhmVdc+1k3Nm/0yQiYTAH7ra0uV5c9SOes6WOpWiPpM=;
	h=To:Subject:From:Message-Id:Date; b=p5y87KqbBctvXHiHt1CMUjmGg5xEkiZhAwarQhfZPH7yE64cQQzQey/cbkBZT6Vj3xCh3vlONnj8qUYIrT44yUiZb9+ziDWwkPBVzLT1R02Y8ks+/BTXnTqbVc5we8fC28IyXkBpXEVLrjGEYqGyMLp058j2yIdQne84eYO5nrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+jkET+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+jkET+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF993C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788312033;
	bh=HhmVdc+1k3Nm/0yQiYTAH7ra0uV5c9SOes6WOpWiPpM=;
	h=To:Subject:From:Date:From;
	b=Q+jkET+c8kQMMkR+vnPOgupnygB6qdf37Udqxv/SUV2uT4LVEtjZPZZncrY0kTOlR
	 3l3viaHRuCVJ1eEvQAnxl4v2nKrpJJOoP/uRRmLxudceXcmSB4iV8CSLseQwlR1rVM
	 mlzPCsiC14PlW7ECMd2rOlIRePcuVMamAqc8BlkB2E99zjFm3wPaCDfLYB3xZzRnos
	 ke5DZyIprqyeqFXMsSncrV8HpokoXJl53GLSd17cghJy7WaPj+6oOajrnNUMe9+vGU
	 ADAjgJ+I49AjllbhfvEG6+NI4eHkxCOV/2OTI6KeTE8hWvK28ACgAnk+5S0cr+Iy3t
	 jIh+2KQarYtgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB17CC61DD3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831203368.7611.10728566505021864150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479d9d96a0c1d6096355212fc9f0f5f608b63556a9eeed8f0c5fffbcca294902
Date: Wed, 02 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788312033
