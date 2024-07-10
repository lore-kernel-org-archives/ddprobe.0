Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4996B320D
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720572983; cv=none; b=Appxn5r9sT0bz1aheAJIK2WtNHJ1i6TIAv3XizEtsAyEtCujsara9OQZ1BBNVnecr2RQN/vgjWy1HsouSgdEqH3vZOmKSIH0RMT6Sae2J7sfvVx19X4a0vY+48dA0Nisr6s/vcMp+c4gAjyYd4B3SgG/F5ptLBQNu7ZvDQ+QszA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720572983; c=relaxed/simple;
	bh=qmS4tuyRYFF6DRNdczHQCBCloH0RloPDB7t5qio+fdo=;
	h=To:Subject:From:Message-Id:Date; b=uuC/XoYsEbpbzaXNVBfNCYNcJL4+cJN38nwIECJotHLNx6seWAa3GxPWUemKuxMbCR1lhDd1xY7nAPr9BlI+jKh7nif1HdqGKamXunCrzjvmzuCQLm55cVMzahTc0gAeEgYLL77tsEcZ7Y3ybMEH1Ba759tsEejDQsfddx22wu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkMJSIPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkMJSIPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D1FC32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720572982;
	bh=qmS4tuyRYFF6DRNdczHQCBCloH0RloPDB7t5qio+fdo=;
	h=To:Subject:From:Date:From;
	b=lkMJSIPoHVlud5xlZu1k1vNWnqpPqmbcbFdjyu0U+b8CEBwZg+18a5HtzL3r0N8gJ
	 F+Mwi10QqxCLlBDNQ6YG31PIcCscNh+Z6LKoDvSQZBE+hS/bW9HqUpy+/xu7a6wFgO
	 uwwoKcEGa4/BW9nBz37sbx7sM74YUr89tHpRFp55+asZzCVz2OgrsNrXeQ7YHJfTlZ
	 eAGVX2ini+LZ/vzJUweZ5EjxaTkKhmRyPlkkSU/dCUC1qA1OhMgxdHFmfdbgd7jccb
	 ne6MWZ8oESRMjxwYqHdz1qrkK3+M/sgCXdz3BrMr1xpamd0zSNZG0ciDnc3t2C3Gel
	 meFU57HsYxEYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64F2C2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057298280.4291.12091325657208271755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7370545aa6bb017f6b01117a87f0c2865e619466d0ab39b68d41aec62f2cf552
Date: Wed, 10 Jul 2024 00:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720572982
