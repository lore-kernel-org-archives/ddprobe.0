Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B01922ACEF
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752676194; cv=none; b=j7kXdU9AvueV2BSxXDYmhT68az1e6s3U0lqp/VDMH96oaSlmHAV9bgkrck63OH/l4e0I4QWjB42wjEb8fGQphfJT1qMl16zZNRH/xAJ/SoeEv8pyyPNlB4TFL+YVOprnve28iPGSDSwnzGls3ZKr0AD51x/pgx5ifeGzKCHf7JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752676194; c=relaxed/simple;
	bh=iqFA+2KEWqc1FH+3q26yWK31vgn7RxlHQwt3pWtvECg=;
	h=To:Subject:From:Message-Id:Date; b=XNfY20jxq68RZpaHNlrXb+waaCuWFa6kETDSD4eXnhMJikNrTKY5aiW3dC8O94gu7aEqR86Ew/WfXA9ZI/WWqJTZ82bKPgclubaXI8dOSsZKGJFbKXUxPpEtEWIFsSmWpf0Ghr79nxYYRoiPJpt05v4TFpoaVt3MmLF/UqredEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyvN7toB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyvN7toB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31C5C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752676193;
	bh=iqFA+2KEWqc1FH+3q26yWK31vgn7RxlHQwt3pWtvECg=;
	h=To:Subject:From:Date:From;
	b=NyvN7toBFY0cQxwxJ3R7hcyx/4arWUQBnZnJhvl1Aw3LPAPLVcyBBYeSyDlNZQEsA
	 SByfgDI4BdD7rRePIRn0fj785Vp3k57CmpOouQ2rswIA5qnfaSeJ7sDPT15hBPoEh5
	 Kicze2qqbxTomaNJ7c7B3zvSpI+L5j1Jzhz7Ee9vggdwVuawfhnHKDWYsRreZnr5yr
	 4XcQ7ZJ9kvSpFX3iaemc1i0cfYMd4pzarDiB8jYubCGD8TggH+KeVAToEYVNbJtG3G
	 X9jzrPtUB8sn61Wud5D5/eoswvVY1bogZXwU7E9xQZ05Bg5C7/5MU8aUh/B/FJMZct
	 cRAJuev9WJsog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E25C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267619359.16649.14529504181647205406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1dc97d594ad5fe82ba35708abc89ce2ec4800e5b2219146eb24c2203ae3f42
Date: Wed, 16 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752676193
