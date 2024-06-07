Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BC412E47
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717724243; cv=none; b=TuH1mqwrnhB2kC9WSNseCfOMPcmzuscuj2CTBuHGO2/M4k6Fs7DbyVblncrCLq04etfv+4sHOvY2CmBK36nEBixP5BQQ25UWAAFW/LLASJEwSI6zIgl2wiGuDzEWg6qtdiJfUfj0dRp3puGl8Xr1ZAUclquCEy/9PRofOPtALJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717724243; c=relaxed/simple;
	bh=8rhRXJjj1PzsB2SGBRfEr8g4AQyJbXIHvGpdyyjv004=;
	h=To:Subject:From:Message-Id:Date; b=SvGRQd+ExkmZtbgBGGC+hXyJuw8PChwEpOwkkkv/cvZsAfSb8BeO48mq5N4fxMYp2t387eDIEere+BLxuRKZHkuCFTrL8No2KO56WLj33/T6uLdXfUDv41VQw4IQ9Uwg4t3wrHF2gl8AXNfXi5gQHvR9kJ0w0oz0KhK7ZLeXbNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqLi+8D/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqLi+8D/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE70C2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717724242;
	bh=8rhRXJjj1PzsB2SGBRfEr8g4AQyJbXIHvGpdyyjv004=;
	h=To:Subject:From:Date:From;
	b=LqLi+8D/CTeyh+qJzxyywxJvIm19nSXDlHFAg1TQM3rMul7IMOVSo404fR09BBw/+
	 yEMmRbU77zc7b7D6uocrwZnTn0LwKLEYHJ93IzlytaQnMkQkFjnLzgwDfv6K3AGaWH
	 ZL3fps197drDSE/aWvYw+6CzhprUMCbBy0kiICkgCKT5s7Jqz2kyjBaji7bzC4zZ1R
	 NUANlIrqb/pzHKOMfOrFOS+Y9fc6Y6qw7VK2ZEj6jsS7bjZPWHrF+mMbR7i1fCthtW
	 xszqnHLDrRMQAECxcEPmhb5t1XeWJ+M7d2oGli6Mp9OhkUCQZxiKS2OicW1W7PRlFn
	 NmV05HQfYmlPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47B3C27C5E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772424279.10908.4684490332432314387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e49f41fbebea3c6d74c92682eb31231bc0d432b336ee04f8cd3773506d63c97
Date: Fri, 07 Jun 2024 01:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717724242
