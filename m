Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131B82E92AA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750174194; cv=none; b=TT7tVjR5ya4GORUArIVNUFr652iNxUxszFFX4IvB6AlfKr55IkI+ya2S9e3NdPcwg3jtDlNAJflBdVm6RKJQqzOO86xsSLClYqoTlQscG4R5631eJmj7ZXt7lNY23Pthg+lexAXsvmglFwWJpVQxPTjK9b2mS6wdIExx5DBdJtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750174194; c=relaxed/simple;
	bh=FgnB/YVcVsE/WLbL9u/WFg4QYjhfQbsDvFNvXpxMzx4=;
	h=To:Subject:From:Message-Id:Date; b=JZjqMAeao1B+TxkNjZWo7XF4ghkF7M/rmu2DwRqIUitnJc6u6lls9GBcs/FkZQPhqNwvHDl18QRfzVDrSveymwYdf3gIN4xb3Ln7pK8rGKdXElGZoshYbdHIgJNyA54cZebtJOFr9sHR0GMlY6sgozImb8GYSChsR6NJTeARpiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYpPNUch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYpPNUch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4524C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750174193;
	bh=FgnB/YVcVsE/WLbL9u/WFg4QYjhfQbsDvFNvXpxMzx4=;
	h=To:Subject:From:Date:From;
	b=tYpPNUchdrgsw9iuUp86FIFp0aVt8N3mqxnAPla7idxtqqevEyv6TGFyN0HsEYliH
	 8ttXQRlbNPf8w4Q/4GbsX6X6J/E0fEYtrTCEE5W++KLBk6S5ySzbT8FHHh7V/QMet3
	 K5SOWzRV3ncVVnztBLXVVq/F79pONwN5nhEgYch4bZTh5D1YgSueGcZkWuV/i/Cit5
	 R+Zn6HHOhkhbSywoCJkhXuGzvy/hA3leiyFxagcJ1KiC1dZNlSRJLlBvQO29WHaGA8
	 D8pGDEJyG2/n+QTo49Trfh1xpoEscc2F01lpaS6L8g1UeV/m+zbqua3ZEgZQyu39zl
	 FlgNISXzM6Pgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9075AC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017419358.30165.17230474285098647675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7fd00d800402dea63f9d564bc75fd4cf2e3feb7fbece7437671ae816947f9e
Date: Tue, 17 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750174193
