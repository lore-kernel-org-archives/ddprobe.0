Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C8E82C8E
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 08:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713254963; cv=none; b=pan6xXCrGiyBRLh4uHXF1PgYGh+GnkVhiQs028arCfWE47XXbn7cRcczzoIYbqQBbeonmCHkGx+pl1LDZdCwDc25snphZNw2gJUVfVg84zYNh+XqQRVmZrDcELWnk/seNr5mPjGxlcVv1B/+yVfbPVuocNGWSDoDwkVvlj1S2zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713254963; c=relaxed/simple;
	bh=WlqY3LzYhU8tSXHZLP+2yUSic9Ydyusv1utMiZ7yORM=;
	h=To:Subject:From:Message-Id:Date; b=Y2ZwTtBhH22Uh7r7FNYcZDUXgcoiLe35hnK74mUdSqhD9C4CCwretkJx8Gcgfmo5rkPZ6IE6Yr9snDXTeHOu6Wykz9ma+JjmHI7oRBrdxxpTe2vf9ByiB9i5N4k+dzEEVhHKRengrViMIJ207gz+KKed+1A6xH4z0blF85csQio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtz6/WCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtz6/WCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEEAC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 08:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713254962;
	bh=WlqY3LzYhU8tSXHZLP+2yUSic9Ydyusv1utMiZ7yORM=;
	h=To:Subject:From:Date:From;
	b=mtz6/WCrMbVbG3+cDHcPse2xpGuCesTqeTk6shbn1g5HWIJfuta0T3HlCYoO9/xSo
	 QULejd2OBlqPG+PsnLlDIt83lZZzFHL30hmv07KdLFfLHleouFzqEvJ+3rJXA0rPV2
	 3UGntjl758x0XJ9tSqiRxfcs456cz/eDNb/tTELwyk7uF6eSrmqtIY0CZpssNn2EiC
	 GVcUU/qABkqeKBaO0+L8MItNjQdOLzc/tD7CLBveEMs9tVLDgB6kFdYxV/MbbILZ8D
	 mcaMIab8MPprAiWO5CKfnNBA6rLMBsIgZLSFg7DBJlGOL5AjkB55DpgcbexVa6z4K6
	 7rhABCkC9qDKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CB9C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 08:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171325496275.6035.17956076615575817051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2914d63c2b7183404590af11ee0a4fab56792cdaa7cfa0cfea677e502b40b86a
Date: Tue, 16 Apr 2024 08:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713254962
