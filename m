Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A622356B9
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756973394; cv=none; b=t6YfVRkrPUGPOSzB4VJc11k9d6ydqD9ZHrVQWQ3G6WvXz5QR3sQbv044MGSJ+ZkrQBI+vW9qfWrHIFgZMCp/JNKYedsvJd/BBc6xkxu6GtWj1iR90lxyZWhX2/JI7cG0T+1GdYtGW/rPsYuSK4rGRq1bYosKk1i9016MMVpZMSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756973394; c=relaxed/simple;
	bh=nsIhUQVjrmoj91vILBezu7B9PufUKMxYUjI53e0Mz1E=;
	h=To:Subject:From:Message-Id:Date; b=RWjzKaHQ0HVSq5eD3cTeWoVBKVJFqENENWS1+aer2P3v7gpOe4GFMLmSe26lJjRpfJM/lNKGrQdCJvU683dHcMpK8g7cSZY2YR1a8OiCm9Hv36G+LUDZJ0440S5zNh7m5wB5PECFKioRkAxqiNqhg0g4GSxBZvM1mNH/cr/fA+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeYs8V/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeYs8V/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0350C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756973393;
	bh=nsIhUQVjrmoj91vILBezu7B9PufUKMxYUjI53e0Mz1E=;
	h=To:Subject:From:Date:From;
	b=TeYs8V/mqUkFyBN9BuiUePp+sH5nwLQS2hU9SOk7b6iRSyhclANWNY4pN7jvqI8TW
	 TOrE0XTXUaNowrUuTpj36cTKEAsmr2YYMeeTAeSRgK9t36+BTG1ywgMSqTaTq/EPl8
	 lmQpE2Q5CgfQrFXlvEza+vTX7OU86UJaurbT31+i1CK/H7dUIG8/zRorDa80zMwRxh
	 CAIy4e9IbybZ+g6I/NF2FPMmJlzec2fRy0GDPnWhgHGf12nz/xZrRgqZqV6H/DWCvQ
	 9ifO8Qy9HzpFJ0r6AlQSm7ipTDBsTHruM8K7Qdlyeni6D3NBvUOq0rEQS1RJMNRzLw
	 dI1wmuMlOVOXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F2CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697339357.25879.5421125264549355695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9ab4258c68a7757713e363ea5f4ee7195d9ed9e4200bd3daf823f1b9e4949f
Date: Thu, 04 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756973393
