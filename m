Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC531C860C
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786423834; cv=none; b=XgMBBE55osREutyeu1jIt7k6H3pnKw57TGNViN69py3yDeOVXeCAraauADAOhwEIkXm+hseB2oVdPIvFzyas4gvV9qRhhIA7wErv6aPX565z6f3VwCM0NZFcriUBADtQsR0Rm1IW3o7ryux+5xGUjmH1lqhwoFZRthFZMzR6YgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786423834; c=relaxed/simple;
	bh=tPMSBDg9GtolpfQXEuQUwECXVRkQFgAhtrD4n4l4z+I=;
	h=To:Subject:From:Message-Id:Date; b=gIjiL9uBfSKPbdsKkZrWrbWvcPsd2GYz+NuoMHEo90RTNAMNJqup12VEn5L7ZvIku01EqCIjqDZ8V4HOvV4YX959G9likviSMFkix9rmBgnZiEr8lsE5nzO2QqmmLcbckmuelvanejp0mc9pykQ+FSi47f6UuvdKF4J1lEmZAyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S67vADdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S67vADdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1AAC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786423833;
	bh=tPMSBDg9GtolpfQXEuQUwECXVRkQFgAhtrD4n4l4z+I=;
	h=To:Subject:From:Date:From;
	b=S67vADdfsyJlmqZG+QMrjJBKgrb0Rs5w9LlXTyJy1vfRZyb0dYAETgyJhSTAFsw9W
	 NM90a3fS7OgGm/hpmB9X0aAeMbW7j7dnmfkVMz9nKpIoze9mPH6CYTLu4du/gNSz4Q
	 E6eLeqd4K8KqCg3mI5yLSf3UkI86ClnLWcz8Zd03vIYENE8lTGZtYjghF9JhlMtFVN
	 VraNz3Kd9xmCRJloc27CGDB+TejyPolW79nl2OYWfGRDWJ1a23gXKUwlyELW4tXumB
	 Uiks172fGLoaxHz9LTX/RwSoqDkxkbcNtMx6JYvhH6iOcKpbXVYnwNbvcrboWF88/9
	 x5b9uWvQ0SRxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F6C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642383368.25614.7152663458070252089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15012bc0ca53a9331ae82771198dfe4151deccca5c3a990dff923d0ab671b286
Date: Tue, 11 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786423833
