Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0935819C566
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765718574; cv=none; b=X0k5tI7D97aQL/SfW8t8BU+lr0YihFX9OeFLjll687jBVf5mW0DUEXm+fl2yRmu2sMHiGrGObNRcsIdVjlJBNpMFtHbTGI6DEd1lKcrpLqcaqgJdVFkYNIjyGV+IkeJ7PV6zknbMZw4xRBXBY2I08NjPDOCRMdy+EcYroot/EXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765718574; c=relaxed/simple;
	bh=uEjDj9e048ThxbxNcX5d+gLuymH1dZ6CsQu6mtHudQk=;
	h=To:Subject:From:Message-Id:Date; b=YmMTC50ziEHDiikLOsBnEyDty+xplEY748llphQiErJX39oPc0ttmLxOMpAUJ7bKsIFsIj/qijRBqx6gE9y+bvFPJDLKwP5a+gNGampR7aZ09KJV+Hvnhxt1WtkCfACI2+zoNAb+0bOv7u9zmnQ4bt0iOEliwB4j0xHO3xk9qQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUWD31r9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUWD31r9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59BDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765718573;
	bh=uEjDj9e048ThxbxNcX5d+gLuymH1dZ6CsQu6mtHudQk=;
	h=To:Subject:From:Date:From;
	b=PUWD31r9iVrRRNmIJ4E/Zs5DYJl2+S3CfBixQkJC4JpqDiPSyU8XdKKuZETeO7z/9
	 jp59dRS0sdMOe/jeWIGcstSc160vLYafrsmqWlfKiRxusZxd9uAuhFci5s902vFosf
	 enEZxfufs3d/29xvOD9UOdGfOSX4zOkiA7wz5tQsOG9dDot6ff8WiHku57oecUmY3c
	 Xu3Q+HYE4d/lgHbbWHjcsia4wgvuaqb2AdJyW5VPBh5jf/ZZzJ7eHYyQpKcsYQwPtt
	 4mptA0ZRs3miVSVILXIYBtqD8ZjPL92TFBbpMCpKeUe5/tiFxoxRuhjmmqGJZwbkN/
	 BD9pyv/aA58yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B5D5B16D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571857357.334.7077880916267860680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba17928f37c4955cbc66736f7d0d20b9b39dffff7a1ba2b1746369d4b443e24
Date: Sun, 14 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765718573
