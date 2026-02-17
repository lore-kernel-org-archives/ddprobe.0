Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223E3372B59
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771354494; cv=none; b=BXkrDq5Y+f0w5CXLIjMOucvl2pl+PZRNgMTquheGKYqfv/yJoZSJYkmsywKfzz1zsvzZA2izQSyHf33vj54lnC2acWrwJ+fEyrRvbQVoZtXGuZOmRdXfId6Hy9DtDyk0uy1/fpCIV9Jix79g4XGQBx4MamHJgzmDwYSYGUQPgKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771354494; c=relaxed/simple;
	bh=ExBZP8A0tC5jXwRtvgGbDMFBeHmkLz0mVEfRNGH+czA=;
	h=To:Subject:From:Message-Id:Date; b=p5BmzeRmMuf59navohkxy2eG1wuwvzHPbB1XYtace8EvGZCSMwZHxu3Aqydsp1eE/YjKRNHECzj1jM1LqpGjl36crp4xlJcehsDmmGO67+zv/xucySAgyt7EaTFFRP2yp7wC74x9/20oIVCXuv+GZAMOw3lKtub16+Xj6F1/6ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTf0q20I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTf0q20I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3820C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771354493;
	bh=ExBZP8A0tC5jXwRtvgGbDMFBeHmkLz0mVEfRNGH+czA=;
	h=To:Subject:From:Date:From;
	b=MTf0q20ISsAsUuD3Zm23+jBoUuREWGEXA1HxmIf9lt3C4f+EXB7Rfb/Hj9n54zIuK
	 Vry9tf+23ij69d6GoW6S3qqhPyacz9DmDp///neDZKPEGoKv1aILqqRs+6NML8gGul
	 ThVLGueDqVuaqsXYwBhxKCGH3Qa8b1u5PJZiJFEBRB1rypigvvfQx5jOw5lDSelwJE
	 qtS/HHK/yVkrnJanX8lhYWKYj2Ru7qpEACfPVGILdLYGbnmCtXeqCSlI/IxzlmWjhs
	 Eidt5QtKBOF72zcMGhgoFht5J7vFjnvi7qh/BdKKJeGCK/pGAlpiH/pdUPObkJMKpS
	 AWRgIfF2DUIWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4CDE9A037
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135449361.10107.1259905307666178360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac33397832397b6ccb9111220c7eb335b1f71088dacf843d56244ce8dc008f01
Date: Tue, 17 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771354493
