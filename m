Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3190E2556E
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777940854; cv=none; b=dvmOhV0qVBjc6lhii7PZwUtSEP2QQs31K6TsIkCfYFJXdinJvkH5P8ZjZh/Ay7Ck3EKT0PV9kEjCTh0EhLngbPzMYRpTCnJN+JJV4HoNxLsJ2xzAGiKtdeGYb3qivrXEqE+D3t4vkXPs9OWbwxJ5bswSLK3knUHJX3jmV+hnflU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777940854; c=relaxed/simple;
	bh=Hiq+pG8XwhhkXR9Uo8OvPtWUcaRpbI/qDQchAh4XKpw=;
	h=To:Subject:From:Message-Id:Date; b=pIj/e6Fq78Bzitkj0VaI+FL+ViEgpsiy1pdPWyM4lXZxMu0BrPO9VOLPHyhuAXEYKiJuJNRPx+JINk+BRfIZf0wlqNx3YtPin0FsZy2mkTms8A2E5pC1HAn3k4lMkkci/F0z9FGovhXDVq+KkkeORl8f9iUYZUMtz1fID6XkkBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0bv7X+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0bv7X+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62D4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777940853;
	bh=Hiq+pG8XwhhkXR9Uo8OvPtWUcaRpbI/qDQchAh4XKpw=;
	h=To:Subject:From:Date:From;
	b=A0bv7X+Tq9NdUTiMa8Yrxo7HsBWtyNIag/7c5TFVVIyyCQ7SKOn28NIBVRxMAR/jR
	 T2D3bWQ2ebawoPhQzI+RsB3PfvvZvhkYI45TPv3FiE3ot9xcltdTgjPxVQJWGaAzy4
	 I3nwc5VFvfZsE+4I9W4QzSR8G1oqL/vtE4wW2Ae4oGj7nI1/1hnjP3DlZ7Ty6ty5YQ
	 N0S7by4LiD8NAQef/2z6lP0zxuDWCxS9B5/E2eRxObE4f60WjU67qzQFH/gQurjrI3
	 d0LcDC0cMMFZyJGbPj7sohjI2AsdTX7aAKeinBxiFOJCUn1iGSQC3vODL6jbedDZZn
	 1gLAMyf9SgBRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DC3FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794085368.7210.16877197013931348533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53933de4fb9c889372fb4c65f211a0b4e4fe7861afac5666db9e04118df2be69
Date: Tue, 05 May 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777940853
