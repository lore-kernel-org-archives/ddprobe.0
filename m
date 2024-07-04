Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49075132122
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720119923; cv=none; b=SZqJyrfxaWlsbVdusZZKj7fe9eDBlXKyrlCF4O1wfGmvxU7oEzr+2xR0rqc0A38M6KRqgngdDfXSd81Dgu/qVuVrk5oK6aRyqIM/apkXwEXhrqblEG7b7MABnF8Z3JC11rqIeruUXlk9iqsrYycDyjt/NImWkv/elzDAAtasS8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720119923; c=relaxed/simple;
	bh=KOp9riDyFIEn0jEFybeu3DxZU6pTZHzz6PlxqrE5+NA=;
	h=To:Subject:From:Message-Id:Date; b=cyRnWilai80OSvYgZ6ViGtBdlakPufqoURVAa/Q2XfZKnQT5WpTwtJIQJBGLwADcgIKnPDcr7ciuTcYiI/hbPPcVIjnjzKygSU//1pyjytVdVvD73TPHGo2uUT8eZTs7vpkB0ctuPO7NWsV9TLoub0Ts595y1tjJekSCj+I0lOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtoAD1Ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtoAD1Ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC0AC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720119922;
	bh=KOp9riDyFIEn0jEFybeu3DxZU6pTZHzz6PlxqrE5+NA=;
	h=To:Subject:From:Date:From;
	b=PtoAD1Ga3684FnwHGL0zwxT7tuXBJ11AXyaHPOFs7gu23Rr+O4eX+9L7M90j1C1WT
	 YPZLt1YB4OC4CZ/polQaWFE/yd8RIksAY5Rae+fAmeOMBY5RU+cDjMfvBXYDa093Hj
	 rEp6eQSbOqooDUDPqgmygSKx5BGehBGgUAJ9+JCCtWVAUv5Pbyi5n/ZaDlWe8tvG8P
	 yaqFCScvJl/hxjUOocPQx4zyDlhdsgAww7VrnIVAvVjbWpPXl3R+aumh0gCZjaSbwv
	 94sN8XZ/J/WnA7j3h93EJVmIltqt5p/G2yK930MLXRWcH8B1WHk3InYpYcXeXnzBKR
	 hXgEpIRSXWwOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C483FC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172011992279.22223.6486555304435253664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43f6eab7b320313e4add816303f29e395c141b75b341fe6a9080cb9ee2ad483
Date: Thu, 04 Jul 2024 19:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720119922
