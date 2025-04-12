Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E283BE46
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744501194; cv=none; b=aBge4t9cUL7JkjxiBQYyG0daO/PBRp7TojBDtu23um0QHFlnyxe/CkOkCxxNSccJNFrD9L4EOhFtK2nUI7IM1MnFcaUtArEViNajV0Imp8FvO9uEpa33hTPvtX/YMMSkOAHCcLwjcWGE+XC/PNwb/s8s/jVHx4pwN1ccVshTM1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744501194; c=relaxed/simple;
	bh=1Qq5SeRHYHGPPtpIUQBMLv4JAaVz2Pa7ugujbZcb7SY=;
	h=To:Subject:From:Message-Id:Date; b=rdwfNw0nrnOq724yIMOkMWy/G1qbWfkZpWPn7oubqsFTqKKb0+JaN+zIZhaoUK+Ub9IfoL9m/XvxdSIS5fx68DfhRoiVji9q6TF4lLVw1A6CTE3S5fr9U2TNvn2JyicPAizun1LC5L0qysMVUxnfYZMBqC85ZuhSMbDDPMlsn0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsUvw2Sd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsUvw2Sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB39FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744501193;
	bh=1Qq5SeRHYHGPPtpIUQBMLv4JAaVz2Pa7ugujbZcb7SY=;
	h=To:Subject:From:Date:From;
	b=MsUvw2Sd2UsjfRolwesz+A9KgDdqo8zMPHtKiO2g+CcRYY1q0M8UmTyk1H5fWtQyB
	 r7int323nDFkb8nl8SChdTbYHCJVuMaiPpoTuc4wxAizDJ5Xs2sHouOVf88Nro/JIo
	 UefZ4k3kR73yFPwOBRBDQg/56+ALq5Mamli3djN/MgMR5MMUv5+dNl6wPBmf6Jk8pB
	 /hU6EN99Rs0jYdicNJPgv1lzbBLMVFcA4Cehf1m+7MhXxvLJXOjggJSq3hlnRUd/Rq
	 zhphzEAck1hlYk3zqB9LTt0MqLA3T5ix1TbpcU2sZsfJ74UN54qeNS4JQZ2OFJ5hDj
	 pTXfr32I5vYXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04B9C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450119362.13858.510963583835864737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8728e61f11781e77e235df14b5be16fa69eb6020fe51e5de464a1208ba82f4e9
Date: Sat, 12 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744501193
