Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1F3749C
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761485394; cv=none; b=bCZ7WnXk1u5z1JkTwFt/9L/T4FhPMkRdswokq7JgHxtYT/+TbESJpWdKcubgkIguZoappMPZDDXWI5/NkRchqweSJ2mgfKqTYHrjWy2owfBNGI9v0Oss8bcFqhTcXlXTIBbAIrpTFv9OzHQ8yoV9oPGvYzAFV4S1GZInzFa7VKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761485394; c=relaxed/simple;
	bh=wJn+qCHzuymLpHW3jjPydQwxz/wqQmoYmwJEZLOiUwE=;
	h=To:Subject:From:Message-Id:Date; b=DIf8QAssRbPlQ8bKBDTxYV0IianQnNRqrlSOmJlYF5kXQnSQbDCJf7ZkKluuacrkAjbJ+/ieunj/N5ThgHfcXIHgwLGwFV8P5JzZNdT+4kmFYtzv6E0LC4CrJcsJLxFDEgLz2UZhr/nqYjHMykkMiIGwdiUTXwvB+9C2aDQqyL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihIdXniP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihIdXniP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761485393;
	bh=wJn+qCHzuymLpHW3jjPydQwxz/wqQmoYmwJEZLOiUwE=;
	h=To:Subject:From:Date:From;
	b=ihIdXniPzMlT+RLm6faAX06IqWm3IIZ/CIAf6fTW8kvFXnizjb0CxZhlEl6lAE1PO
	 G+ErF2GieqrS8hOjutoPwHDG/vVOYOzi/jyxvjUhs3Vj8HK8SADaIDJ6TOL/ZpYf/U
	 W6biUHTwfA9UGSmsNtx8m6NVu7Uf2ISW45qhPPRzrQwX642k12hg1DmYUHr90gwonn
	 ZwPG3aJTgkPVJ0Clpu/4Qo4iXESlRY64aHycDVF6fYCZyPoP5Q9vmjm0Ahv8OtcdVY
	 256XMhA1D4hA8rdsYa9WQ80d3p5Z7Y/PaaJ+JtBMrnTK43b3e6o/aS9Rl4h6ffxfxE
	 DfpOsrFAm2Y0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB6CCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148539357.26410.14855505200478760401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce15f495df958551a1dbbb8d8cf673786cedd70318c06ac400d20f1b51f35b2b
Date: Sun, 26 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761485393
