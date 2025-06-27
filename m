Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DF715E8B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751047795; cv=none; b=coOTif5hgwEBZ5bquX/olMb2vTk3JRo9NvapoQRKcEn4+/LLFQcK/8+MXxZ7/EVCzQvaXuThKY8jIwuoZD9n7w2px+w9N9L/amO6/oVV/gyMRRy89orE3Wt/K0XW02BM2XCxFbkVmmCl0jqvKhD1L14EftYhsfdlVbBTli4ELaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751047795; c=relaxed/simple;
	bh=H33P6U51iz9lteLX5d+lPx7QGLZ7Lxw3kabUbxrYSE4=;
	h=To:Subject:From:Message-Id:Date; b=ZFYd+G9mlYQmFSmdFdMak37HrWRAdIQaSwwU2GkIe21i7cN6Sf98nH8srH44u8wgtTPeQ8PrM2fJ0fXEOn9+fXLixoKzPAHNCNHmOAVTXTYKbYBvrx/4a//3vQBbpoNgSHUAoVTDM6LLeNapNFJtfIIemYXFokvrbA6iuXozZEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkWlyy27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkWlyy27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E9CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751047793;
	bh=H33P6U51iz9lteLX5d+lPx7QGLZ7Lxw3kabUbxrYSE4=;
	h=To:Subject:From:Date:From;
	b=bkWlyy27jv4NUjHhKWks9OuUkzG9GifdPxmiP7AfhlSxLBlMkuF2Nkk/uDGsw/ZYp
	 E1iIOina7zqSob8Y+SVtJt1X0xw63ikFTDOZGAd2+c5s87TA1aTUKXoAb49zceRC2V
	 WO4ohuYQmhSBUAa7mXgec0DIsuJzEtzQPTz7DaYm9WRkJJ/oqGszArqVMURAo3nykI
	 u24a6sNYST1FTqKr5BlX4FXlHAHXtYdJgO9cwpBtQQFAxITrQjINNSjVeonAUtL3xp
	 Ls+ui1UET8UxnBdCtFSWbyEuha7BEAmiUaLY2AI+04+1bWCM6YQj4Sn7w7JVrS3WZJ
	 i89diYSX39OhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CE7C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104779358.24701.476770448969293799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4262c50a7573704ac040afd399304e7704676d9d0dc9466a8a93db95bd22a2
Date: Fri, 27 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751047793
