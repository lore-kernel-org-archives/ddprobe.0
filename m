Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A071163
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717548983; cv=none; b=clvtBpsGfoFfv+lhJRD/Z46ljQJpGQFeZCPZ2QwfbdxL16ON9b6PuLbSv/P68EtkJLpa40ADLYT6z4C7tGhOzo+FXdgx5CRPxfcRo6ATCP7RBPxKFfwGANJa1G4HCg5vCTiNBb7esz9ZLhHk5CNiENBdqMzQm8SBfAv8fJioj80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717548983; c=relaxed/simple;
	bh=lZUzt75VOKhjRbrN0jh4hiQhD96i1NGQoOz9MPOoovc=;
	h=To:Subject:From:Message-Id:Date; b=HOrzKxZ8NnGWD8DcmroPhADbkRvdn+mmMR52ThDNSwG9itBIa3CzffmzIARoV1DKrKbwhY4EVuEkA6c0iXPod+7s8ppxonhPLn259mhAVOx+oYVMK2046/9q1M74d6lhgd+usWsCIHHft8SfYg6E0snIvr42S5R017Q0MzSmQ9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iewEKhQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iewEKhQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F0AC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717548982;
	bh=lZUzt75VOKhjRbrN0jh4hiQhD96i1NGQoOz9MPOoovc=;
	h=To:Subject:From:Date:From;
	b=iewEKhQc8PcNlPm21oRQDu8CQrpcm/RCAaZ1Jfkssfevp8Xdvh3JrdEpPVD4uXdNH
	 pNig6ToL+07pGOo9PwPJ78TFtxOjYke94aUChdB0jEF3/CMeJOGrxNw1OFf16Oh7o6
	 Hyu87iVUUoQIxgQW8AS7WxGslPHyhmK5Cd/BvnS2vGS49TAA2aWwOTcPzh1VT+1klD
	 pL+HAgrACXt/ZwAo2ZnTY2Hxr0WjI/qfzHHLiYK7alyAbaRC1D7bdLqivE6CjPANSu
	 HgEjjJS2gGxgUHqoNvlTbT8K0gY+2I1Txma8rQBPH+bXZllLi9/8HqYZFWpBpDNYAk
	 cGtPhhjvbuvUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5151C25B78
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754898279.11635.4048212207533599614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a523e70b24ed76a3f642336d7932699911f324845ff1a56ff594465a2af198dc
Date: Wed, 05 Jun 2024 00:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717548982
