Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3C72F12AB
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784005714; cv=none; b=F7gjqnTcZHxylQ9hSaKzHZkuhA6iecYd1+sQj+zsPMPQ8YfSKqnJVh6Wkfk/mRoagrsjAIA6O4fRQKW9OT167Fr89SDv+8IfKudAqev35Vw95DsdhXyp9p8N4Z/Va8XoRGS4Vw+tL5VmTwTtCxc99RTjK2IzQ7ONUmx5q7Cbxzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784005714; c=relaxed/simple;
	bh=tWH8CvAbQSFDG2UWrmn005y6YC/9n3Z7NY2WNxQvabE=;
	h=To:Subject:From:Message-Id:Date; b=jeS8O2VEzdfsEQUOfzfTxetHK4cruLXx7oeGLBKqUbnSDxAQ6bOjDBFYVv5hU4OxTOBs/JZT852fd2K4DbNXCg1NZm473/jn568IgT5uRFK8vEv2Tgu7DWCtXzNrtqxTf6C+3783InJSz/N6TBFT5XmodfwqXUgOv8/0TdhbCBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwVe9r2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwVe9r2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C884BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784005713;
	bh=tWH8CvAbQSFDG2UWrmn005y6YC/9n3Z7NY2WNxQvabE=;
	h=To:Subject:From:Date:From;
	b=MwVe9r2OZsFYQGPBCaeeM8Fp8XAMsweb3N8ZAuVTErrqXLidWaKp9uo1DOoA2k/nv
	 6IpS3LwLzffRCUvBFkoCo2FwrL3HbzbvV/x+6iFr8A5MyiHjWA9gsxowlMZQ3RUaa0
	 LGVseIPDqCC8Et+DJHJhWEv4VCdq2nY8dnhefTK/bWYNNe0aSMziDDUznsrHLizWxF
	 rEtp19r6NU4Dfh38+V+drNy66DfvuxQl19eNICAq21M9LWxvx6JiuN/F2OOqjvLT3g
	 4fEl0gYNyglMJttRdqnEtGrs9OX3k7/x9NOFD/URhauVeEex7Z9GXn/sjZ0ONnTMrM
	 FgQ1t3HFqPTMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85DFC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400571368.10897.12096269030551076836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d1c4c148c092b03e5bcf532170658edfbd1f615e6c52d3ea4ed2e39fcbe70f
Date: Tue, 14 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784005713
