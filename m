Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E29A457E49
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791199234; cv=none; b=ANLyksi26EhZnFZDyIfd/7RZJJeqSBvISMJZ/wTIIlI0+q5bNeLL0YE84ueqMyZVCP+B3k3AcEx+MrHyJwnm6BU9bAVoFARPImZn+y2W1UkxIi5PTq4GnNzf71m5taarjYAMAXhi1VbDPPGmpReSQPHRt5SZHUOMw46y/H/Xu28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791199234; c=relaxed/simple;
	bh=cQzb3mhUbotusD9xikMsboJnmLn9EFsFMdtplgQkrp0=;
	h=To:Subject:From:Message-Id:Date; b=M5n7Gv/9zRF8keoqNdQ4SglDCFpc5WsEC5LzpC2Gvgro6ox+n/jPm0yjrSmKrtQjkow0DH4/BsKuR95GCLHUqkDRqrzRvt3/adeArsjTz8U353TFqO2MQ11ssA7YlKrjGuJ1lNIdJQBQvgMwYN+jK93yNoGpSkxb4wdiHxcMKrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4dbB4/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4dbB4/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE33C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791199233;
	bh=cQzb3mhUbotusD9xikMsboJnmLn9EFsFMdtplgQkrp0=;
	h=To:Subject:From:Date:From;
	b=J4dbB4/q1NvjBu7uBlq6fwlQjE7GN1muEALpRYONajVXlo4gt1X928LYGYmVoONvl
	 bABD6iyapY3aawbJ9fMw4NCTSWcYXeVQjMCn89U8f05ZmMbQINxPpc6YsxHW69GNSR
	 IHHTB+1pPpuhag/dBS8PJncEyqgyr1L3Ol+UIfdheeHtpGytjrLMgrPjk4gGkUWQwz
	 vYgUFId42JHS9si79PE386Vad86C5IfjR1ecUQKSuiEI8BXDdmhxcavJ2iqdoLcGzS
	 708oZRU3DUYKnlUvSuRGNJdRf1HXoOjOaWgXEp1JfjG+Q7HnDu/IZrmZH2M8LHtzyJ
	 EaUXSc9imoRPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8F1CA5FFD
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119923368.21895.4515563098613534294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aac9832340b01e58bb16d98af422639c4c55da37a1dc8aa56afd3ffd89e68a8
Date: Mon, 05 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791199233
