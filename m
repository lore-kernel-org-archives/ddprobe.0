Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FE4B677
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736453154; cv=none; b=cGXEqh/+21+FJuHwWEHY7rDsyGzYQF7H/kmvxsgxr4UBBx1/wMWioyub9A4iDoHYzSONnvb5uHa2pQozfnhR9g5FtIyImzq3NQnre9SdC9CS/IfslrK8dQrMWS65zRqqmuHoJZ3UZJGenl5iy5wF1cNIPaeD5pTxBwUI7IaBHdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736453154; c=relaxed/simple;
	bh=eGq7tP450tePp1klgyMBBiuQUJYCL2TkS3GyT8Qjgxg=;
	h=To:Subject:From:Message-Id:Date; b=kI+AMqUD0I1ig69TcgQALTtMpraihMlhd/k9IS3qw3pSNFzSgiAUMhr11eD5idtuKAVz1RErDzss9HUH8Us8UZPoOMe6prihqm4Yn+3kslz9GGjRq7NKl8iHJJFCkjBoQkGzPiB+m2pZTyD6BuRHbowu+nUS7Log4PuG/sF/IFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6F0+9+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6F0+9+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CADC4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736453153;
	bh=eGq7tP450tePp1klgyMBBiuQUJYCL2TkS3GyT8Qjgxg=;
	h=To:Subject:From:Date:From;
	b=U6F0+9+0O1yMUJt2G4+C7Ib6F6ywPYymtaVRfZqR/wfpvGvJjR7MgNCKkbbus11WK
	 zmHnZwY0SYc4xMoBg63YK0oZL8fJ1yfNqrusZs/vhy+VMIqMNICdg59ADcpestdctD
	 q4n7n/E4uH5oVI5MBMxzV3bkcem0+49a/cxtac2Y4/7EelY+zufJuRttGEQbxQC/W9
	 GdOYvRom2W/9CMMsNX8nHfB1OwynWeqQqY+d2bCWot586bnCR47zjtUsrOYeW9xQp+
	 MtevqjqCRQVnM16RI1cmNaVcAyEeOPPYbNZDCjl61PFO+J8Mvwu8iLYUzjSsAm4P+e
	 urt3Om13yfyVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932A3E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173645315359.16078.1237997774934604338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad0692f0561e1367329db6bbf31745a100d149ad4a2ff6f0b47d11379b94d30
Date: Thu, 09 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736453153
