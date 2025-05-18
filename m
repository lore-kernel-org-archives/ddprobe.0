Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274A5800
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747612194; cv=none; b=o6TiB2hzPexOAiy6zfDiovZHVUV9TwfZpyYlf62a3vSPao3dJHPaaZp7nZPG2fUMVFi95Y7ZnceoDgqgvN9KQPL3ceRVEaxtwWCd1ocfaDCfV++pbX6WvEac0MDsqk427Y8CJyy/BCuU620w3oEivSmeCYFIvcKXXOVPX4XcJzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747612194; c=relaxed/simple;
	bh=cMt/si2ORh4clTKc3Kcxop0Nh1Wna8nwtbr39T7msRc=;
	h=To:Subject:From:Message-Id:Date; b=B9TPSG3pJ6fRYTcV4Fy2UUc20TfxS26NcpmZMXwQ+c1cXTfkMaxJBYgBomRDu6pNNFGIRktWpMBIn1/JKL4nXubmyIvJU2aMeixJUYjx4SNX4ZnPP74GEzqAEN0+0v1YOCbFoE1ms3Odeu7ZSHlCg0KpwvpJefngA9D6fd0VU+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pld1cEkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pld1cEkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A093DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747612193;
	bh=cMt/si2ORh4clTKc3Kcxop0Nh1Wna8nwtbr39T7msRc=;
	h=To:Subject:From:Date:From;
	b=Pld1cEkGdIhqLq9PwBi59emJINZbbLoE8WVBKndsjApafULjli3vvoLuIJsJz1zra
	 put0xjG371HaYIoWd+mQTtJonGO/u6CbdhXf1tVMVlMAW4ganh/HvbS3tjMPObli7+
	 zxIBJAtI01NPcfmCkfMFHOIOAWJVCfoeDWxh9hFo9NNAVJLO2qWENncbdOVc/svNok
	 WGwI4wZS4+3vmwlM4sP0v/Z/ChHFz2z7zIDrFwTa4VgNS6SsOhDSGsVmDiA0/PvZNE
	 AL88Blx3uSHEraIB/JErWXaijRdE9/Cbr1B5wWObe6xC73DtC1IPElJTfYg+M6jGW1
	 +AvKrBVyXuyMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5D8C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761219357.14585.9174183522980131448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c9db284cb079f6d28a38734009eca771203dd8761393a7c3a3bb86dd8a5da5
Date: Sun, 18 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747612193
