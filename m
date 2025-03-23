Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F65D18C900
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742730594; cv=none; b=pNfahHlfbsepRSp716+noS2S86dA/mThRRpN9nhC61XgZDXrcLG+NEqxHEerKqAaOkIZCP3wru6ZPeJQMGS4VGmyPhTBmJ+C02y8G3kg7la5OCto2kGf3sqsKKVX4slporNS9W3VTiP7inwihuDXapikgFtkGeEB+iS66SHdS78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742730594; c=relaxed/simple;
	bh=jK8sgoeqxpKd4+JVfyTW2K58apx2beevyvbTKp4h7Rc=;
	h=To:Subject:From:Message-Id:Date; b=JF7va9IjdWaCnD6CXDszn0F/IvD95QIoVLBpk+egxdig8je456O1hbVEnlEMEPXRIkee1tFy379g+jtwdYr/lfBXSXNiV02huBKLA1Mr/0NGSNda2M9LtQmQ3QlHh995pdueqY/aqEhOpwjSsBbehEBJUuZvwPTTA2uDu/fE3A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S65ZciZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S65ZciZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A19C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742730593;
	bh=jK8sgoeqxpKd4+JVfyTW2K58apx2beevyvbTKp4h7Rc=;
	h=To:Subject:From:Date:From;
	b=S65ZciZ288RKQl96uYpunijgq7ilO/DoMAHDLiUlOHG9nquCG22Fo71hXaic3JcnQ
	 m/WJY+C0qR6lNWtvuDKEISIiOpOlGfTJNGiMEQVAQrPSNWjrK4o06dNpsXuaKJTILQ
	 9l8p0aEatRAlGBt7BkBlnNIqYiBBHDX8XQdxH0AZIiOD4kUVfM5thQkS+sNcnwKWEe
	 b02RbZZycORdG09WFl8RrOIltwJoHID2MXL6kpyv4j6rITZjEfacF5B11Muv7lzVm9
	 JL6p/Xei3pyMKlpfA5ofgEax/b28uRjuz02VZ4gu4QBqVGkyNDWMB8wgvEdtS9HuzK
	 lhFR9sw4tNRqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96599C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273059359.26009.7687546546223449742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b494f448af181677d3ae087acf4aad19abdf76b6fc7e2fc0ef8f04b050b63e9
Date: Sun, 23 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742730593
