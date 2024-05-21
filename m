Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A2A182DF
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716265343; cv=none; b=kA6nv0gAtPQQqYJzNMNU5ok7/TuJvQkPTu39lEeUZI4K9PtbqBJEp0ww1rXcmedOqUKppkei1rRVEzF+MJPEBcWlZjBu4h2RXRHoT3Wr/RdIE8aVhtjTbQEcXA5HWjEgmLzcSpZMtKZgzJzStximP2OsmYd/EL3WdkqzXmG7K2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716265343; c=relaxed/simple;
	bh=b/DCPJj2DK2a7Tx1ZDF5PTVa3+Lo++xplNMwNciC0e8=;
	h=To:Subject:From:Message-Id:Date; b=aIThSV20kpMCJglfuhgIzO6Kzm3VGta9fgu+3MFhgJ1WQZSDsjI1RbfEqb+jk2EKwFdwqm0j5PZWcxh/j1ybOMDaS84fT/wA8QSnnIIszAqHXIStJBBDa9aF+EJuilE6gQz/tC7ES/lDYo9cnmlP54EEpLzn1sEtStGJKuFlcyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg4v5cpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg4v5cpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEC9CC32782
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716265343;
	bh=b/DCPJj2DK2a7Tx1ZDF5PTVa3+Lo++xplNMwNciC0e8=;
	h=To:Subject:From:Date:From;
	b=Vg4v5cpV2ZWJ0sTQsCqmyosI4ISuqZgWiNnyz1rsgkfskBUC7ClqJxhZRsVBQE4Pz
	 dw5G6B52ApDtze3NzczLX7d9hM/8WH14CxCySOCSqO4BV4uF7uCKq2hJzf095rVWM7
	 Wayf4rhMfd584E/f2wBltrPYeb+ebPw3UQ2IyxumRsoKuOrBdSnSqT512SFDPVvdFA
	 w4McWc1GVfhHzR5X9lZqzC8JMIepnuUzBdxDTllBtzk5x0VG0Ms6iiRCXdIo4nyJqD
	 7u6tveW/Mlnjw48XcQkkhj07jTIg0C2oFPbqjUSvLDLwgtrohx0AkLitCMSyMqmkru
	 FatSVsWzFE1mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA29C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171626534281.25632.8708307820258665250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e743e094e92d16c9caa607258cc810a5641ba0c4023a005cd16f8cc9a929326
Date: Tue, 21 May 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716265342
