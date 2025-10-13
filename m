Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1367A23F431
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760359194; cv=none; b=bXZFDE4iWj7K85IkC43LEv+6vbX2Oz7OL+0TVEBPDq1qA4cJVjGm/CeCU+r107yl59q6WyCwNb3cBkj454DdZLGkkJRy72FZlanhDycC2CLYIZly0c1Ni68m2/pli3OhwVeYcP+ylgKEcNonaDojNQ/7q0N5/CWIB/m6FzCSDas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760359194; c=relaxed/simple;
	bh=wlWObTdzEaxfygZexKWLX6NAgHCeoc/irA6LK79ePsU=;
	h=To:Subject:From:Message-Id:Date; b=GcSyWtTizGqtvYRvvF1gNVbJknsoRjERaveN7hUpFE3uLL/hc8htvw8ORjvSN1tY7c6zMscyEoe8qYIo9bLBLWQxmBXh4GjDzoXBcQzTsx6YboamiKz5XVXaTXNe5GsVHOgrMzlPI8gK6BBNy/GCFzzG9dOP1EvgPuj+r1kHFW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lo77ykkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lo77ykkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B13C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760359193;
	bh=wlWObTdzEaxfygZexKWLX6NAgHCeoc/irA6LK79ePsU=;
	h=To:Subject:From:Date:From;
	b=Lo77ykkR9UAycByR9RMXGuzeYQhWvrNmlk6QBLwSVTKH+YgKaA3km4eGS2GQo2L/9
	 BKQ9VmWTlvok0urQ2Q4gYf74qLvLd9ROXYTBo8+RPa26/kQl4rgTcBK71A/85kwVmO
	 G/xHQKcZS9FbB1bcserVDe/yqPMa4oRsOEFBnQNahkYcm0ZOEQh0UMZTcJCNZy8+3y
	 +EdZeXmucBy7DlI2bs3klNtEQMYPKNSEvsE+3ljXP7lsHnO+34/Kjg13qujy6C4YVj
	 s+pVLQ7jhLN+vnOECKvufzXBVx/bdOeMGSJ2kC8rfP5lsP7T+DmL73LnVRmaePAEYk
	 c/q7hL27DUU6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92682CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035919357.19636.16938226236956921168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b523d71ef1aae697e9f55a45a7573426d32d70d55106b7e586f9f9c73c901c3
Date: Mon, 13 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760359193
