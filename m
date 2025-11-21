Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116691BD035
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763717514; cv=none; b=VNplcZ6coPzK55sFG1WGuxbW5uuEvuivtxW/j2/MrydL0d4ZWyqdPcQcZMDIlsM1I0TvrPDQrxiPEorOjQdFQILcvwxiM2Iz/Dk2hRwn7qi5B68z/Fp8JtnBXQvQ7dryIXHxvVL9F86umyguzYKilDWYbT//eqJYjXR4jTqzh50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763717514; c=relaxed/simple;
	bh=diWdzKYCOXHs01gGxOnM/1VH9kdTamAd6QASUf7LjRA=;
	h=To:Subject:From:Message-Id:Date; b=h7rjmM7MsctTQLdqGkdnz3b0SaPq8juJFcqXjxRV9iUgLf1VS8br+R/AkzN/n7SGiaFmsJhDZJKqs/Y3Q4LIu0jhnVnpTBL/ux/H1DYVc7n/UyaPf6FOJKLeO09nMEJBo0iZP6Qf6Ig/zf/Mqa2V+nljuj/DupLAzIcM6DPQ1mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4wzNjzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4wzNjzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE217C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763717513;
	bh=diWdzKYCOXHs01gGxOnM/1VH9kdTamAd6QASUf7LjRA=;
	h=To:Subject:From:Date:From;
	b=p4wzNjzLw1LZrkZNXrQXDkSd5o19G+YDbfLpJY//yiuTLypP5zn/G68C8dgi0rBcE
	 kHwHjxko3qGoPZTQeBidjmQPk6VWPu6+7h2/uN3xmpjwtb5k5GZvBHEORj3u2FraNZ
	 PHnqLFTcyoLLwq1ucvWD+2PWg7x4EPjErV/aluSydWDiLKjWP3pamYNS5dspRygdxH
	 89nbnxR305MT6mGLa+X0mVa1yUoxs3sTIWom5QpG13eu11jIOIqdz1ZE9t89L6tAaz
	 elKG8jR51QW/A8CBBLXXmuq390jsuARoB2F+okklilgJAnhs8XKtoNN5uEDLu8gcaz
	 LEAaNc9AqLPgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F47CFA761
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371751361.2237.16073198371533321683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1971d79a3e7dc514021881b33a70063ea9dc11506d00cf82d201f76e25c6fc
Date: Fri, 21 Nov 2025 09:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763717513
