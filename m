Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4280A254846
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754432994; cv=none; b=DwKhcJcTFrl92YQcWgxUxiEUbXf7zgIcCNsSCWJOzfEOfNzZju1aSavdlnMcE6ZKkr3TIVhVd1wcFBplVDUfFGIHcy8sthyfxPeLjK/WD3j6rQSCikIJLo+8NldxSyAixAoQdyDB0NZL2Qc7FB7dfmuA2s88tqeyrr+bRKvcAnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754432994; c=relaxed/simple;
	bh=D0xM38o+eo7fd8e+td1RkFF/H1VV+0eUDKy8oXLyjBw=;
	h=To:Subject:From:Message-Id:Date; b=P8urtdEIAmn16WSMvmvz2n+hOAN32IuQS5I+B4JNaOHlmM8V38YciQwt9naW/tKWbWJm32zg94HJo0at5ShCJy9AIneC29aFCAG/hW1p/lZ3M/CxTyXpi8K5FGcXnW1FRa2lsw41gzc4+4OvRIALwkKWPISoFYYB/dh9fpRCNh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G01WE6X/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G01WE6X/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FEDC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754432993;
	bh=D0xM38o+eo7fd8e+td1RkFF/H1VV+0eUDKy8oXLyjBw=;
	h=To:Subject:From:Date:From;
	b=G01WE6X/lKQ98nWJe4ozaYtQRy9FtxoqXekZMdhiZKzimelKT17d5iEGpEmRsM3WR
	 vkImj+DphhdQIhRo7aODUyTqk+cOoGto2NIyQrbc3RBpOREqiTcdsALqsbchm4dHPJ
	 tnqXTiiBvs4sG99Fi0gGISsoyDW2I3/+9MDTAlHXwz8tiPEtXHzyZHGGRl6K59/m8r
	 ywutQRngDgS2n8e2Hoe4N9Y36ROYpbIVvKrRd4aZlNDgf5Fb2Q9LdTsSBYvuiK0ybj
	 XdEJ4xxoHuN4wgtZ8ujR1JQ4qEH8L+6qfXtORpXu/EO22XG7wHRM/oxmlFPseNt2YT
	 uS5qr4jwa2muw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920AEC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443299357.26065.14771623684234496259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760d4359c54b0fa0c609723cf4a44e9431be23609d8cae8bd26cbd59dbb4a73e
Date: Tue, 05 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754432993
