Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182BF1C01
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736816154; cv=none; b=rTTmRm1FMJVl0N4W5zUjSGDYRuqnjij0kR4yOqXtWhD0pgdVEp1P2SsBqy0KXvcG6c3jU8LVxPj/ulFLLyHMlABr6N8qh2lPpclcAVg8lOIHxsgdk1jEiT7jDWDng56BDk8ym65FFQG84KL86Mgf4PG+D2A+3o9knaCoUl2xNSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736816154; c=relaxed/simple;
	bh=9OH7WU5VmX3DXgHCGVY+jciAtKC+OMvlgGpOwyx7O9Q=;
	h=To:Subject:From:Message-Id:Date; b=RarzaS9nVMNxL1gHy9vAih4CC4NDPUO28wCCVV0xg7kQFai/ls9p5Lyz562G1+P4V2WFW4QAJFXVH2SqVz06lPtNyMJCFMOSShC5uSm/A3EcBXX2Hzenlds7c0UQR13K3VwzlLersuwdwOOZddq3HIRSeg+st80fGwuoGYpN3JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8v9/6wq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8v9/6wq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A140AC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736816153;
	bh=9OH7WU5VmX3DXgHCGVY+jciAtKC+OMvlgGpOwyx7O9Q=;
	h=To:Subject:From:Date:From;
	b=f8v9/6wqNoBq451AgT1g5OIDRWVmPb3j9kg3tV9c+ETUOwWy91PUF0rzQOTjat4n2
	 Ny0EcY1blYafOhjfHxgovhm/xZHoT+KntuF9DmaekmaahvB7uoJV1nVBTDZLvMnWjy
	 QW0C4hWBGowDa0EfJTPqYOz8P1f4TSX6xF5cdqHNwtygLqSVRMf4V/423Cdb3qXI/7
	 zPmSXPHZMjtcELkYxEqwdXOPbuNXtGAeOLyN1ovaAkpL5xRGem8LplD/ria4ay5Lh1
	 lCwNKqhSrwrMd6fvhkWnwm47Z8lJ0aclDee45w66u+z7iqMgTIIz3jCv2ZLzB8985A
	 s3Wsfa/U1SOjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92396C02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681615359.17174.11147869980975877495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5814032dcdb662e07d07b180ffe20177c88408f97e0efcb1196d07ca303e9fef
Date: Tue, 14 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736816153
