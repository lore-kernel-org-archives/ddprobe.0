Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE1D364948
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778637034; cv=none; b=bvlxwKkBxjdgJrPtHRCXaFUrwA2gfR99i7tZxrMmJ+WNACDwxXLWpTVuIdmRtiUKxz8jiUa5uvxCcFQdk0IbxfEirbZ9+iFROSdGRKUYM3n7VMh+3zOcr/ZwnaiOl4CXfqyGCOjncyt6kRGrx7c8qSF/WuNdXAloeqI+98i1diU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778637034; c=relaxed/simple;
	bh=UOljP7yJPDzDCCIVX97DbqYdnrE4RR1OK+qz5h+Da8o=;
	h=To:Subject:From:Message-Id:Date; b=ANfX4I50XJYyYmdlj0iLqrp8fYJ0n84/04Il+L8dfaKiJeOmdVuGHQ793G6CmBkfeq8A5fEug/zy4W6EQBelIEi3eF2lk+5RLd9qbIC1B1sYanTxOxLM1hZjkZ4f7AzaoTDVSLlZQXEHnxCwU4nksF6EHNR9c5NmSjdWDbkOD0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXVtTK6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXVtTK6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1C9C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778637033;
	bh=UOljP7yJPDzDCCIVX97DbqYdnrE4RR1OK+qz5h+Da8o=;
	h=To:Subject:From:Date:From;
	b=VXVtTK6TlAdd3dXEEVoH1bhi6zvOZxeQZd8sJs26MOmf6K+YDxwyA8b2hYop2cDz7
	 8lfvdYqMB8GyiTGMSkd7PXQvRzdNbGr/TadcDcvXXHepsvsHe0bfnEabe35c50t99C
	 GhxH61P6MfwB3d88Zh4rVyLKJbJbhL7+RsJmEktTFXlPPeQ88swx/l57meAXaYU/8q
	 j9oJ+HSNOxDvNEwML4WhIL9OghyzAaZIGBQE/H8qLTXNqcuroJlpOUG6opxTkzZU1d
	 VwXK0ODPxQq9YqtvQTcM5UH0Vp9SS6pmW07+QCPnp/Dg6hRjr47z+1JOr3dpwblw73
	 F7j7bjw3uJjcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB86BCD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863703369.14972.6565049953307828232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9625bfede7d908a902c0f13a6952fc4f0c20cbfe2c8e2c7eac358aabd64e2c5
Date: Wed, 13 May 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778637033
