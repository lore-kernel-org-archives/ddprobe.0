Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38633421F0F
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786441234; cv=none; b=QjO9vLeP3hCqPirmAqs+8MBbu85E7JB2a20wVn9NfRJa1vOPDSQO8DBvzcecY07TcmS7C/SEtk1tbyGcwJJr8KT6cxVJ2BmKDCs+Bn1XHnAL9tW9yY/2zidyy/VC254gJEr+xDByHgORFsiILjVVS5vwn7vNx/cPz+lHZUFO8lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786441234; c=relaxed/simple;
	bh=sOByW24N51tWfHYl0eKUfEVzytRn8dGe3hnj//zirVk=;
	h=To:Subject:From:Message-Id:Date; b=cGRKs+gHZpj7GQGHD+5XPMLv8g55bYZKHl4nstJrAtmLhFsNvAns1ADdsIWChvSfqYMUQD9t5bJJwmZNNgiYMYC43UmYMyNhGEOxYOMfDIhVUA8cOvBP/8d54tbVIEmALr38LMhFp3KESJRjfrBhyg5RG1LduO8n7OBoQ4LWZcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfNvDq5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfNvDq5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D260CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786441233;
	bh=sOByW24N51tWfHYl0eKUfEVzytRn8dGe3hnj//zirVk=;
	h=To:Subject:From:Date:From;
	b=dfNvDq5AXLuwwmHfcyeOTaX8nwrd25qA80cqezTwCTTy7CohmT0OALxN9RF9RSIXx
	 74+9gd8P0mqtDMd9V/TtFH7ZKe4xbeTCWNLbP4BfPo64j40wc18CpLaQtuvDvqbQAC
	 +urMIGcpFWpx8BPtC1Eud4D4X39GwQSU1Z2wZmtlev5ycRJUs6DbJF8iFcnPvpJjZ8
	 20QcBcn301TftZr3qGNfFWhpXM++RqOX/EwY0Fk84ZncNRFBQhxVguodpYc4caY/BS
	 MGOw9dzkl1SDa8FnTZYp+fagWfkRhH31QZZnT/yMYDgnTKhmjnxGvSyahRvivSViO9
	 28BS0FsFrBEKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1DFC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644123368.11327.2121950186972932769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9afb412a33da03a31523b1ffbef16a95944de7de600eb5fe867e19243f22fe39
Date: Tue, 11 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786441233
