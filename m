Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270782F5E
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734246954; cv=none; b=DNJd7txiYCzvOr1T1Tcr8oh6YpsTyMfmCpnRJV2Dthp1m/YZaI2PdWX9JIVhyNYekqNqoT0loIp2DSrQ10KzvWxQFRRxbhl0NpoO0zehBCjKlxacFG2Zf3jnkMsAd/CiGMz1zWTKospLb/JhSSVmnAmfbnh4+8+fHT9ZB32OTKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734246954; c=relaxed/simple;
	bh=4pTmVExVgeMAfYvwCq52vtEhewEaE0ZUEtyPl5/blIU=;
	h=To:Subject:From:Message-Id:Date; b=OklDODAEiJva2PKnnPQ2vaqVmLJK0tr+dddbTied/bfrdOKnRs5/CMTgKh5WzqmKxjhrCFvRYzD2JSTxVpp2TUndp8t5B52Pdj1ep8X2R4F09MlAovfuOnyRTy37+yqClyz3xqDVD5jMQ651Tv+XDQgPYNxkwVjIUcjoAzRHTgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYPaNO7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYPaNO7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A676FC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734246953;
	bh=4pTmVExVgeMAfYvwCq52vtEhewEaE0ZUEtyPl5/blIU=;
	h=To:Subject:From:Date:From;
	b=tYPaNO7X2youUoRCWCnedGazJuU5rbADojLleda/SFjoYanDD8waGlhydtkDDPaf5
	 8VbddFbLnj5qq606FVcRoPT4Ng3pCVJFUAnLHpTN44e2gJg5PIp7FqIr/SJg5Xp3Yq
	 NFoCOvUBB/oGu9f8TuYH7C/s6cQe5uMb3SFi/JM4k23C7bz1WfSNJBY/2BXvqBNORD
	 SU3auXNxh4MlcKx9jZWmadP3UmZpKIXKfhsH6fuH8LFZeNUi+5pNw67VnCnV83g8DC
	 YepvanJ7+TmtScIQCZPf/xxstgUUbTj/uNxzXQmyZq4koEttiO94XXhiWz4IsxdmnQ
	 oBN4qKZFeZmYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92651E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173424695357.27748.13977435230579169692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8585b535143ac5986bab31fb874c784ae423b4d833d0ebe0c81f335d823b519b
Date: Sun, 15 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734246953
