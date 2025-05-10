Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503B11459EA
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746851394; cv=none; b=qLZgvCPHzPUipczuoplagi7cy1whSNp3qLdz3R/Yu7qhHUYdtPPb5bakeFuM7ulugXMzbX5MMkofh8S8JSljeSNuHRXTWnmEZnO6Psc8LBEVc2+lqE4rCUL5IBqs++LrG4BbHm3pJjQJsjOvGr4CBLLgrpCpS5DMzjkGbNmWxVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746851394; c=relaxed/simple;
	bh=mo7m31t9g4uY9c1aqLo/zk6T0PYK+PPifuTstBgm0Dw=;
	h=To:Subject:From:Message-Id:Date; b=qWJc2yDuzknZPSasX8BFYaMcZsR7Ti9UeBy6xFuedm/cWX/EdV3n7Vsk25JZNAI3QTlOuCxDiKxwjPNgTowoHKcGFuwXRfmKliXG4ZZvT8m6UHPHF4VLCyw8VhhaVzKJuXLjJg4h+PzwE4suz6xdhtJ8AF82FvqQOd8eooOW3uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2jO+nlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2jO+nlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5F4C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746851393;
	bh=mo7m31t9g4uY9c1aqLo/zk6T0PYK+PPifuTstBgm0Dw=;
	h=To:Subject:From:Date:From;
	b=o2jO+nlB+33ri3ybXJoygeY0b+i3KjDerINsKcZBTkrTxn/PQwvm+MJ1m7LWLbM1Q
	 iLJEptOJDYnDLJtiTN7LzD7XXOFUdzO6msyro5tXM1HRWa04oNPycpsSJ2aXldaGvr
	 Kgi6e2ErzVql2zQRnAN0/yZ28KduI1WnlwUHgAX0X4l+U+VvrEgEcPBoFcTiHidbG1
	 5rxC6bkEA/H196wZ0zxcpy0F25nQSXRp6prCjK/9zb2jU8USU/+x8yCQW21BfMncKA
	 3lS1AN/cWXJZe/LQcYZYSOK7oR/FIC+amwM8vus6QL/7AUsCYzrnficfcm4Sz0z3Qu
	 7AEJyJdIdPFBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9457BC3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685139357.14494.17728663048833743263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064b926e26cb2d7ea59c11472c56b5d7817b9480d882fa6c97d6a9d623b6af6a
Date: Sat, 10 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746851393
