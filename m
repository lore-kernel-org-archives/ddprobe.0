Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1212594
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740875934; cv=none; b=Y1n/rASQkdCo5gy+wz8ey8pD7aSGcfHAjt9t4788tfKntzuO/bzAam0Y0JsdW1oj449PAeSN+Nsmrh+ZUkdHOFUbofCqqIfjjtz0aNAZFwen3NZsS0FdmEQo/cbMs4j4dR6f4Mf2J7X3eHei9tIWzPnycD+aeXnnSoZi6K5PmC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740875934; c=relaxed/simple;
	bh=O6EMIbGRInwkWCr8t5Rp42AKV5VxxAJd48sKd6bj4Zg=;
	h=To:Subject:From:Message-Id:Date; b=feguYOYuJwBpYbgtbhQPcyrb817UsfTsYd/CZsTHlxXN3L7kYyKd1W8cRjKWdcLxGRrRqhQlQJRN49XR0YqpbXfZXouLd5vI9Dc13z9EDARklMSh498ipmm8UisYb3j+bq4BERwRC4BzY9D7gkq++7mGZ2FG3Q4fCyZ5Z++S3lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sre5P+IZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sre5P+IZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81E4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740875933;
	bh=O6EMIbGRInwkWCr8t5Rp42AKV5VxxAJd48sKd6bj4Zg=;
	h=To:Subject:From:Date:From;
	b=Sre5P+IZrRGJPmULVG5yc08jt2pVHxS8s8xR/VmANp9OyS45lAB8uHroMdVCfdRcP
	 f8Ik3f13pjNQVVAw0xZssJH8yxBovOqpdPDSEXE3SfAEEZbkHfJrDMDi1JrTEXx76V
	 DGMnxe8kg/mD70VJRC93MfDiqhOzNBzZ/q1DxEK4Hw/i6UxC0jw9qq32gzaM9SPg99
	 Lg7PWm4PYDwsJwiZE7Ruc2H4Po4KTWLi7XT51Mr7Qp58MApq+jgpgbyxNmh7BtnFT1
	 VrgmfWEDmRcA75RE1gDGXlaAHXMdlYern601C3EtJ9B4x/3/AZlcjThp/fILt5g9vU
	 BVSIm/JvV0QEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DD0C282C6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174087593360.22354.11776352493042568881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a86762cacf83fe0fe4f88786b88a72a9cd6047afc902563e3c1acc5b9d99b6
Date: Sun, 02 Mar 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740875933
