Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD1276035
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736579754; cv=none; b=oHsIKqz4Vz81AuBixO/zpLT7pLBQTB0Et2UUXNAsbLXxtivnrYbTgtEWcKQUys48zvnL6hz6G//r7axvG9V7vnNC7yBzfxd2C5aff30jKlnXoympuEsDWF3ikuVWxLGztZX15VLFjySo+ni25b+U5NhxjmAd5TxeWN2vnQc13cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736579754; c=relaxed/simple;
	bh=54DvEPc5GiQ9MOHvlyMz7rCE98sxnwt/yVngV4taGsM=;
	h=To:Subject:From:Message-Id:Date; b=LO28pf5N9wmexE3RKwjOhAq2E4YtEQHUWF4O8EAFVS7rglnVwZgSmMJoVxlAAr/Y3tP3LPsd9ReVG8hCXwO70vqwGoHuy30A9h/uWOkWEWYww5kQ2uCYt1TNnOLSWiNRXt3bB/8h0SbtKEug8WQPUT+FPRc9gIE77iu75+OP0vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JptVzRhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JptVzRhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6348C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736579753;
	bh=54DvEPc5GiQ9MOHvlyMz7rCE98sxnwt/yVngV4taGsM=;
	h=To:Subject:From:Date:From;
	b=JptVzRhK8eHSkcnO3yimhD2TlsNLskp1IQD8emnG8aX2RUEH4ABe6ZAG3NchhEjQP
	 FRTkYMhO+O0DFEwrJq6W2k2xMO9GVdBmXCmHunP26FUgSMZBRUzjbvg9ISm2HxyIY+
	 Dcmb7NKP9k3P4t+Bk5GSTZbkPXxDajzx4VHDq6e8gsi+pWo8vEP2pkISUk7EBdUYzW
	 UP9NHZUH8qBKGe3TL3MxrwtADvbzRcadhvPammbQ2fGZegYmPsoZQtSEWZTu9xk5ZR
	 9XKc1LPG/oECMGcr5MyMhc9eprf47DtQxRzF8IKoT17+G85wPYNyRWMzgBKuau9l//
	 xdRKfGfMS6zXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995F5E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657975359.1836.14220929144422228127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9e6eadffeae7b4c3ed3865979b33a3aaae77a987207627d857c3c62be77728
Date: Sat, 11 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736579753
