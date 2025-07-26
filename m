Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5731D5CFE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753546195; cv=none; b=ZQ80ohcaP5wHt0rRmvHv3H1g36rHXRUcW6F9+F+TJyZsODfGeYIFxDxnx7Fw0wLgOSgniK7EI+0VES4lFty6/SEG2+ewQ9qhLDxG5QmNi/2R8mawiLB8rUZZdFCBnMm3IgjJIp/cIQJVJ5WLtGlmWovwNhoRW9aXZAUuO4d0QKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753546195; c=relaxed/simple;
	bh=ZCEYQeQ9YWMYQiPLwfwDpHVcLUPIKtqz6NMoYtMv5fM=;
	h=To:Subject:From:Message-Id:Date; b=Em+zS0Bz6LSQ9HG3cFbHQBOMKU5CXcnZvfCnF42ax1A4sUMgRIE/Pz3sg2EBxLlLzmcFqbqNnAZlLavupdN4uEFI+3VTf/GpdEDcGNZUyuFU+5InoP29+f5Sqn6cnU5dQBxDnbIj1P7Pa/VeWCj12NFmsPQLxEO+UMkMQXFcUsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPqhIEVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPqhIEVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD45CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753546193;
	bh=ZCEYQeQ9YWMYQiPLwfwDpHVcLUPIKtqz6NMoYtMv5fM=;
	h=To:Subject:From:Date:From;
	b=BPqhIEVMtFvG+OqsSfvOjr9W91SJDniTBMNwNRRl1rt820YrxZ7BOtPz3jqWcJ7ik
	 aJxsgkvFk6N5dhBwv2ysJw+wXHmGVn6gkH9aZxsWPJ/GNS/gzm9U50mmYzE2MrAoQg
	 QSIRWwRCm5nAL4+dEQFY0bW3WCeboOpQYuI+rCj/fMTXjiT2xrUfda36cy/Iq3aPre
	 BVMLvatRFvBDgy5vBaLJ9slVk6eY/XB2dOT6tzXKUrNWsjVDQ0/hylFLkgX8XUzzU0
	 8HqK/CxwFBR30yO7I92p90Eii6joWoEBDD5uYaqdSob0EK5eXSidfnNxFVrRC/FTqc
	 9YVs/d+oawcEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC81C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354619360.8368.1572271074775815222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7adbc8ce7847fa30cc908a2d0413f0635e0bae326182278f1b323d4352e28327
Date: Sat, 26 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753546193
