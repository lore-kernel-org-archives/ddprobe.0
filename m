Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC723ED5A7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784285314; cv=none; b=t5rb6Cyk3Y71mlszfKRqdXZR59j8LKDCCiBwGsX4nWVwaIyNG/ij/hVX/SFZN0Bx520dSEw9CgxN33GQDftLoVFo/v0Vf72O+TbjHG31gVkFilpPMdUnR7YYCDjswgK04cuqFIIhEPengLVohAum8G5egIc6ve69YeCllbbfLjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784285314; c=relaxed/simple;
	bh=HjmXR4Py/ADX2TwtkTY3aIZTD4HreYRzVb3E9rrQbtU=;
	h=To:Subject:From:Message-Id:Date; b=Xf8tf7g/ICf9GelJhvjxYNF1KE3uxN1HG85idycmnT1cx/gtmnC9hFCA2r0DpouqRMc8RPgSKC92PoPnenktTv6EPP8kObuti9kwMV+UJQRPOwmC2V+ZIt+XXnSfybL/eHMu57TxJwjDAQ/PUsuWRwJ2I9391k6/8/BpUmn+bMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSFMId/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSFMId/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50D7C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784285313;
	bh=HjmXR4Py/ADX2TwtkTY3aIZTD4HreYRzVb3E9rrQbtU=;
	h=To:Subject:From:Date:From;
	b=WSFMId/uUxrpRnoeKsRGvq9JNTwxmf4cb2mRApgCVD5nsuSJ1f2EbfBqkfV1yEgyB
	 nH1/v3q65CL1PkIFed1tLTLaeGQdUMziYclgsrvWg78Iz/fqL6IRO9Y8J7W/kKckIt
	 Fibw/ssVsyLHZDvDqrzdhR8N5ZkTcusl3fQMiLfVDKl26QALf1I8onp3Tgshwe4a7p
	 YBEtOb3hM0W4e0Dop2LY94uuaYB9jmq3n2V63Up8tFgF/VOa7PVDAooTzdZLybHic6
	 GQ1Bk/MxlCQUw6I9OozpIFOO8R3TU9as/e3A5ErOtKASiUbVdBmQ+azk9MLkHGBon8
	 0xJiM1AvOa2jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2AFC44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428531369.12774.12262343858215914708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f12ce38da65567029d0582358a02fd7033c16b5fdf92f8598edea418b61901
Date: Fri, 17 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784285313
