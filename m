Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1821E8320
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749928794; cv=none; b=YG0tJmVeEykljI3LzCSEIdDo8hjbnix0LUC08s6Z1ftNgXtaZQe/ndCb1gK9FVjeYNe+vj/GA/Sdem3a03pSLj9cymxYNmzLXGwIN2BFN/cV7yGbA6M9xv00vxKwoefPWSuJRhwDlHUa1Ev+I0zHKw19aBuiVRTarZX8yj9ZDZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749928794; c=relaxed/simple;
	bh=D8nVHUixGKw/ZaThnXDhoGWzocNt2/jAV3QSPFZuvRY=;
	h=To:Subject:From:Message-Id:Date; b=Q1e6cWOoZVohXo7vbDM5bP/lvFAN/c+EccHJSPAOJAG+8LoFRK/5+rnnzKFnDoCAh9qrsiWpWF0sNhqZoHv0BBb1ao2chFoSBq47ZNvg6erqIcdWfON+G+ZMlafZeWrQVdGQT4kydTuc2gPvujoGhPPTguqQpMHNUnLRtp72QYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvLQhB75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvLQhB75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A523FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749928793;
	bh=D8nVHUixGKw/ZaThnXDhoGWzocNt2/jAV3QSPFZuvRY=;
	h=To:Subject:From:Date:From;
	b=ZvLQhB75nNiwLZ2mgIgU8YPGUmnyWtaBLuE5dPXFp5DceCvAOJYce3SbScx5ywZaG
	 D0YWnjzfmJsc3ZyRRFrm982haRCuw7NzkIymyCAhxZJtsa+D/jR3P+/wCDYXJt/RQY
	 Ejdby5g1DxKPBVaCV5IvOunV+XXNICGG4wfc3ZMvlDunZ4iyp46obxEfR2FmdsYOgg
	 f+qi5DVhS4tg5W1J6l9ME25u4JcnAHtNM89iY/k9P7dZvbbFCIrL0jcnXFlIM/Nao5
	 GIGVrgXNfwlN2oqMjJtjaehj8L57C861v7AdbQX+Abh7cqN2XKx5RfCyVuTPaLIok/
	 2RlFZxqyCvcLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95788C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992879360.25181.18360748224374436946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d281a2ad34344a5f0faa33beba59e2e96b2e20d26171eec14d7fe1a5c296c3e
Date: Sat, 14 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749928793
