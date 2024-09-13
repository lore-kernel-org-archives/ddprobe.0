Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23180173
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726185954; cv=none; b=BWZMQdKAKtxH3y3fXLVMjn7tRnU1yUPWdot3EAWZzSw0Lcj/3JgxqEM00fFgtl92OnAnYR8utC23VAeo/yNJl3kbXdcS31LwpgaBeHJ7nuzPLbWmIxlbCJdzGQdQ+6fVIAs5+4d8sItc7Y0q0SOcurihM/KGH7U9xbDcRo3mmpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726185954; c=relaxed/simple;
	bh=NzfpvAllQjSQli96h/G/hkc01Ffdrvh+5yJJkSQQ47I=;
	h=To:Subject:From:Message-Id:Date; b=HPjUbhFNysc2bvVwMcIl9KIzW35ZRIjaiQqOkwgR4edWUbB5YKD5KLICn8ZLpz+Xqk1ZEnVHDfW5pHnqUJUV4jrDZgxL5myKvVAqJDx1aaAEekyFRkKZ+o6OvE+CGjLA4fdbTnqdk8Rxdj7eApaZg6hJDSTDTxYdBgddnugdWlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8Saufe8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8Saufe8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC111C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726185953;
	bh=NzfpvAllQjSQli96h/G/hkc01Ffdrvh+5yJJkSQQ47I=;
	h=To:Subject:From:Date:From;
	b=Y8Saufe83MRvCgOPm+XvMoBo/g04AOeQEi7HMxeRI/TCEzqLPYF+dFs7Rhks9Vm7c
	 tD6g6koIf7ZkXd+7gKJb/zLPHZTM2Waot79E55oaBI/rjR2sVYBXFUx0AiuF/FHf+o
	 H5CcY6jijFJTKbgHutKTEtjciiguhOhnk+qXeGG/aSj3yhqFmdr/YOo47utdSk86s6
	 3tBzQ8t7WQNrWeKEInUUf9Pi/k4R+5CBBcEp+j8aHxBmMy+7CqL4d8CnI8kqGv35ON
	 uEFBSj/4IQz6k/xt1AU0dm9osmheZOYze/wCcE3ezF2K+M4sak7Z+Xx/oTGdPTF0mS
	 LBm+1SNDGUSEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9782AEEE270
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172618595358.22290.11877625854832473235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164dc08c0dd7eec75d6f8e144595c3da6a22844e8c016e5e3d4eeddc9b8b9a78
Date: Fri, 13 Sep 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726185953
