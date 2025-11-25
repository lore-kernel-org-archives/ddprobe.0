Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000792FE06E
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764060774; cv=none; b=SRM5PYAO0MS1+mvl9x2S3hM+1vlf2OfxBkOlRdUGKgEwNNWewKcSUVew6lEAEGqhrSl+YrS81Ez6PJuPrexZcNobgE4RSYQJwzMavCZ9bntSCR31AjU7jIqtDhS5OTYTjpRoeqrVNZQVLsce/u+3HG6gx0GQKPtZaWgRL8w70No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764060774; c=relaxed/simple;
	bh=yjUHJqw2qlbt++0/DS/+w5n9Gk+Pvl2JbEWM+FNE96I=;
	h=To:Subject:From:Message-Id:Date; b=cK+ZCCzFf2tnhsyWAn7wASOB3DJfmN2MuJFd2kToiCr7jidm9xceAuM5eZ4fqjKJTDk1aLSLcotKhhYB9c2dN8Vbr90Yy052UvJX9aNBM0vs3BwaiEWni0mPLJWmzAy3WJKqVUI4ChZbP8yXMLIGBK3UO54v2kawf2KwvTD9b9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nx8q/C1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nx8q/C1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764060773;
	bh=yjUHJqw2qlbt++0/DS/+w5n9Gk+Pvl2JbEWM+FNE96I=;
	h=To:Subject:From:Date:From;
	b=Nx8q/C1Xo7Cisk0bzpO9OjLnQdiutVRlQKVWq7EmqsHN+XFWOu4TmNrKD++tuTsEl
	 vu+UH/0G9R1OH1aTKyhTBLm25VOQZEsXXXn8QT5C4ZsLvlHl7ShanedFPB4cmUCwh/
	 r3C9fWU5o+5WqhH4omLcCjkqmn28qN/VDC7CQQOD7twkiDAC65oHAicUM45KjjjsbG
	 ggcx3yknS2D1nIb2gKIAfFeR6mlKD0/HAuz02B/SqhpyZmKokppJT0hIgb0IukVTJO
	 v91fZ180lJFtARXT8BPOdNJLGoIuKkunj0Uh5ybguZywb/SOg0aHFsrrAltlQF9r9K
	 Y1BK0fdnxp4NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC9CFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406077358.13870.14042797833383646529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f30e59b479fe51b9ab372b2906a6eda7dbabf2868f98ac240e5bf0e648a954c
Date: Tue, 25 Nov 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764060773
