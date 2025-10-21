Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4B1350A2C
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761075594; cv=none; b=T6+7EhuhFgMNSRokapmr/kFJzd5u3DV+QEhaxpwB6+Y7Csl4kWXcKvN7at209JU/v2CClhilIdguu7+czVWVMjVSLGjPwDqOERc/V54VL+8KNLf2Alcja2+W/s7POr9YXUCOi1P/UMsdXs5lF3xZU718Qf4tjmQYUCHltZdXJmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761075594; c=relaxed/simple;
	bh=s0y/xD5tSp8gJZSoOQZ5Zao8ocjjMSLnMG0nHrf15zY=;
	h=To:Subject:From:Message-Id:Date; b=p2tw6jsLvdq0N6SnlusVEHWTDd+OGuHmY/o+4MPC3PIttpmFupEsCj9frmlHqn1Rs7QuBF6J+08RcHFXjDCu0kOKoYgOOAUc472712Xun7kOqweq8tInmqaC8xEfmambBHe50+3lE3NznuQ02MPjQ6GlR5WOkNV2v/sPigZPpKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jw9NGsMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw9NGsMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FA9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761075593;
	bh=s0y/xD5tSp8gJZSoOQZ5Zao8ocjjMSLnMG0nHrf15zY=;
	h=To:Subject:From:Date:From;
	b=Jw9NGsMJL4Xrg8qofc72mutSLtHB8uT70puAkcYnx8PbpL9LEoazrrzk41s41G+VB
	 40qqnQ0/meUJXiZ74zED+u6C1hddja4TGY0DHTUgI63cwp6zndSMBlD/MekRwqgE3G
	 EKApe6pKYxO1HkCxHLdN2BDEaQ5ypJc5G7ixhkC24z9ciClZabB+dyP5F1XCMQTvUg
	 +hbyK28wF55U+UVkLxHoXUidSHAGPUExfb9PfuKBm/B/4i83izftE4HHJzQzqb6IXp
	 Jwp+CMgLuAbKmlYyos3IoGXIj5QfCzMWtWkPxotDMApB9oTmp/FaLx1VpgRIPBxKf3
	 PKup1N1o/Rb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96285CCD1AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107559360.2343.17129857491811967491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82cd2132565e6dd9fa80c82707fe1dce2205889634abb54b069c49257f01f706
Date: Tue, 21 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761075593
