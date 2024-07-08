Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7FD1E86A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720455383; cv=none; b=cMCDSOx1HHPd6PkdpvgCqt9DdF9NACeaehHDeM/wrvJo/ho3PIM76mQ7ujlLVGHKGadDN1jwiekk3clGGycgWbz3OBkOHjD7l+na8YR7sT0Aa88166C6YZMddu0bcXOtMhspo/fhfSzSSTQLBiVCsxOBv10BeqXe1JufNASUMAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720455383; c=relaxed/simple;
	bh=TSKkolOHO+Rjo3Cj9t3ik9Oad1SNViY2mc7LVLF6o/s=;
	h=To:Subject:From:Message-Id:Date; b=jBkSe0yXis6XLk30rN3lEQn8J/FrlzfriZg7O6JXw9PQw3DchmPBRJMp6PDyoOho8+Tiar7zhrGjfIqaoIH2aJEpnkmixm1EKahNhdbEsq7/qDdAEgPnc6Nta+gpEazA2aTwFr0+tL3bI+JZgh5rSFUceJzEZz6fptjjmsA/rxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jw0lsyDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jw0lsyDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE15C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720455382;
	bh=TSKkolOHO+Rjo3Cj9t3ik9Oad1SNViY2mc7LVLF6o/s=;
	h=To:Subject:From:Date:From;
	b=jw0lsyDCndbc2kydeWZ9YCiqNQUQwUzKFMm3kgRW/+NbxS8mV+59YJyvyPYqQbZpR
	 LajqrH13fs9Vw8z0CLGK2yntFWuGiw2IDRYgdQvpGduqYI0eOLNyFooOTU1Rs523ZS
	 2vsl4hoW8AGhHCERIuX+vDvpUbuWfIyXJ0ZCf26OZEUIe+cUip5EfJAZx8jbfAS/IR
	 JNScf261xV1U+cbkERmQ661KybZUasQxbBX/DdPgMBCTWflbXREOMehn2jMqyTv4Cq
	 I8cBDk6sA3Yx2lcCrwh+nkHzLlaQnMMJDhDj9lwNUM5MSj+WqGuGsQs9g54cXFVIYz
	 8iMv87UTtELrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30D5C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045538278.22442.2765745559294412212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5a97feee821631ed6451bca8cfb1027b2307a6c7f340cfb78d94832408950d
Date: Mon, 08 Jul 2024 16:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720455382
