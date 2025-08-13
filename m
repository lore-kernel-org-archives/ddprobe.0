Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313D22BD5B0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755079794; cv=none; b=JUqiIaG54gQnjWC/Fa3SrGW0ylW5SLXyn41oTDjqbQpkkvaVMzU1k6MMvlJGliGp4cWQnsnqLIe4XvPFoTJWmkrmIOQPQ3RftnDRRa+efvS9GM3vP0ECfIL+H8L3S62cNCLA4ruXfUL6kSBOt/VmoFSzsvsIMlkbF+LWqJgajGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755079794; c=relaxed/simple;
	bh=TvFQTpo0XOl/af2xm3aPG534RbpeS5ollfc/+dyu2VE=;
	h=To:Subject:From:Message-Id:Date; b=CVhTpHfEMe5noCoI36Fr9VqTPcMKbdRgyj0niMWyoJY/F3nH0ZqtRWzsfspnNhRszcvFDfIDhSGfBPwOsgK9BVFWdadwNwFu6VXuV5R66kewQLyjoQ3jR8kov2bEgVGCfBUDIMgrZGKf8p8QtLxY075oN7WvN9pH3c4Rn+dYo0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ohh6+/qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ohh6+/qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAC2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755079793;
	bh=TvFQTpo0XOl/af2xm3aPG534RbpeS5ollfc/+dyu2VE=;
	h=To:Subject:From:Date:From;
	b=Ohh6+/qdEO1uQCpuaXbNbuivz/Y8C2PgIMh9uVsrd0KH/LdhTUuWQ4ePnU9B7RVZ8
	 u4PUCquvIXG7ZmMqz9ZEruQJ5uzEMQV66EpB63S/EyEZlB4Hu9qFlEfEfhcfFbMTqJ
	 6sO9VTIx1x8kfndkCmDtfiNc/mS5Rglt6iPIRD4pYiovUAWwL4mdgn+Cxub4/q/ClN
	 cUqATjmE3HcJtZrScXK+IMHRBbwZF/MEXlT1pCSgcN6xmui0/28tlm3TkvmLZgF5ht
	 nrNvYw4Sbt25hIX0KG8hhAYrmC6lymtKim/HkclLc2lT4F4wCsq9xv4DmVR10JeMV7
	 wK508U9za0L/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE07CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507979357.21601.8228561540815550972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad4fe02771af9cbff7db8d137b8da5e05f76e50fd05b63e0e47d1cc9976aaf1
Date: Wed, 13 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755079793
