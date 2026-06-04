Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF78280325
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780613074; cv=none; b=efNnuYE/pdXl900PrN1ZtVqTRK7NId/iCsEFzzPpy6iUC93O+QOiBSfoj+qFhCa8Rk/UEEb7ou6EYzbP1W8mEJU8U4fXSH1cJ0lMwDYvqy4uhIPbgsWAVYuC7KSAgt2PNAiGMsIH7AVNioN4RLaCqEJaIFL9mEVNcjky3+sVQX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780613074; c=relaxed/simple;
	bh=rB8H7+MqaWDpynDjlf3a9EwpUUiRCUSl4h+4wywDfa0=;
	h=To:Subject:From:Message-Id:Date; b=Gi/64A8MGQpm/GrqWjPEHVr9YTD/Xukz8sfVSLbmpoCHnfGX/rro9BnwivtR4li8sssgA/KdHIe9Ru7A4o7NKRWTU2saGfsX23LdvOUoXfH/LuXJPsAcPbB/Ec3f82ynx9Jqa0V2RU+/rz9v+d4iZKbPumurrrA+som/XSi1wjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGIUcbet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGIUcbet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50D5C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780613073;
	bh=rB8H7+MqaWDpynDjlf3a9EwpUUiRCUSl4h+4wywDfa0=;
	h=To:Subject:From:Date:From;
	b=YGIUcbetkWG/1tpXrGgu9JEjqTN25GJyr5osoF1TpBXTQfc1oTCRoXuHdyHcgGj4k
	 B6HEMLIfXWPnjbdSVi2lCoinlFB11AMVGIv1zJ6Fa3O/nA8NmD37sDfwRWM5uFnHJr
	 j75lwE9cAi2CMJnBHnt8oa7yc5GgtdMQHx4aEm/bJZX05nONlGDMkfMrMCZiwtCrit
	 8x2gN9kIkb0ZkFnGTIKzw98GiZEoWXBTeuWeXibZjNRbitA0ZtsNe0VctbyWP4vlAc
	 iabcBt/UIcFMVaDClqcEasxXtTSyfRaq02OnzDRRfy+eK+8MOC+Nr9lx5WlLPHOKRW
	 Ev2jDFoVh5G/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB265CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061307369.26023.11000088455172694112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1bf8c1b84f8b6649302f0d64cdab2e6a34981135b241f5dda874fc04ee8882
Date: Thu, 04 Jun 2026 22:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780613073
