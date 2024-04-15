Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5E7157485
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713220163; cv=none; b=CpeNYig8HPuq7Z2JzUBXRx0xNPw/LFKqIoz804z1JU4Oc6P7mn31D26O4gS8Zo4PDA/yTDfrAkMV4NnbF24jUBbQdtsUz/s7huF+TnTYqfwsVIO867USDNkb/+JusolXl/PzOPimxEDVh2Oc4MURBpi/KSuuArP6U3Y4IAwCpGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713220163; c=relaxed/simple;
	bh=xFN6BivFT500goxIo6tkUXWG9qLhfj6Abcn+wX47T/I=;
	h=To:Subject:From:Message-Id:Date; b=BW/uVFxw3yYMB+GuaF+5av14t7dbkRyNLe1L02BAZ9IRyMo0kUeJNlFOaZ+AcjzK7Bw3rUVaXBXkqfVMn/OHNwAMzx88YVPF6IwlKBpibEOXXr3bsgFq3uaN6PXM+XioFlgRRmoqyx4+vhU/Dp/QVcmvis6cU872KkPIKYFRdPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWVFo2AO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWVFo2AO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2221C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713220162;
	bh=xFN6BivFT500goxIo6tkUXWG9qLhfj6Abcn+wX47T/I=;
	h=To:Subject:From:Date:From;
	b=oWVFo2AOloST4uVXDhwLapBMme7XNrtO/goeG9AX5nYWB8PnnbzE8LtseN3wm581j
	 H3scy3F2vIaO7e4289zy3wHKGdLXFDmD8D664PvDPWoAEj8FfDepzCdnTRDWawoV8V
	 gKHAbN89rtK8p+NGlLTUR21y9lXQ4qxyVrKQ2+U/q70KDRKAMSKMJrMJkbvlwZ1mwC
	 pYbdQor/Gtd1ldCDmIAPTB6XsspCPNVV5dsF90rF7z5rEPlVvCAi2tqdgzMYD2xjkc
	 mvvjPO9qnsrf2syOgBJsRa2LtAHlQ1UvTiFx9GCILdQYw8ORre3DbRWU/6vhn3hy+t
	 Cq6pZIAoDUS6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08FDC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171322016277.3340.2001608695928611062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c76128ba6103cb99e0958b7f4e8dc3ad84c46c6b8be5f80e6d206c0a4fff6ab
Date: Mon, 15 Apr 2024 22:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713220162
