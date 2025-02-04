Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7052120C02C
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738677954; cv=none; b=V+yA2DbssjrX9yxsi1fEuzEGrbz4KlB/mXSpx0c8B6sfJZeSY62ZllF3qBn8GJJu9G3GgGkQbdX+NGqz/JLlQAUPl6UKq+sB7dHZ9pp4AufmX9CY5wUVzIFIc2u5vvz+fEj+R+oENodqZ+nGTyYlVKHHKwxhRn18qDY75MLOhaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738677954; c=relaxed/simple;
	bh=zi3gBSJjIKVi1RInfoNLQ1gX3xBR99iCC5ZrSkv3NB8=;
	h=To:Subject:From:Message-Id:Date; b=URIYOEx3J81EEa19g3cmjWURVnaI39J16efWaRYk2di9HxReRfnxI0vRJkaVkXvPkkaN/PAmVBWpwUc4j0AkATVLBFeeK6s6TrjnHaM7gBFoYoSIk2h6EFeXHoPa117xEp+WfqZBph+5V2sYc6dTw3OXYz3gXBAnmapP0Qg9Trs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd08bTnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd08bTnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACE7C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738677953;
	bh=zi3gBSJjIKVi1RInfoNLQ1gX3xBR99iCC5ZrSkv3NB8=;
	h=To:Subject:From:Date:From;
	b=Nd08bTnXMhTuzbSFDw0DXIhkYeVFvA5+2Y0BIZlPEVUMAianfyruFwHDpK2bUdYA8
	 +qiiRKGe1exowsgLtFfv4xgMAXAuC2BzKGDZnRk0ciGJrusFqJRVpBR+IJ9btp6KFp
	 1CVlycNHJGBNncoZxmzJ/MUbBbmHqIea3/265aHhmxla1GGcJro+fCuDWYiBRLAEen
	 dTFQghiwGkNf2bv1+OXV6jtkUl+SKr7m24ErLgc0Fnhv25cb9LEpepvuNo3PgCBKXC
	 LLqQd8v+dAmoIMVJiQTJE4vQpfze5OX1k5sQA+9QBkMhWyCoOr26dkYkwTeOOCTMRC
	 aLOlR6uMWTKZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F262C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867795364.3190.14825315822738711250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df90e8f725c89427288e670bbe52459c3f5c6b8af7b385966a9f20e12412c76
Date: Tue, 04 Feb 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738677953
