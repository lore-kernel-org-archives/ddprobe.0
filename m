Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7D4282ED
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748087994; cv=none; b=czbPQmHIiE7PduGz4xH2ecviLr/JdLf+bnREm3XSp9/iIrUufP7T/sJ0qKyenIqIP8ALTf39z8XpmTYIxyWmSFBkvEWOo+/5Kzwd67ElA+b+6gCf98/UWDg7saA9O/Bnc09+Asxvj16PmeK/Tkp4ZJAvxfZ6euVDMDB3d58y2u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748087994; c=relaxed/simple;
	bh=mKIMDc2uaoJKDCeWxEACTBt0FR0XsMB/jjt4c+fW18Q=;
	h=To:Subject:From:Message-Id:Date; b=mGLEv5KmHEL5SRjyuYThWfyYijWN4ZP+OgoayN/RD5ORfRBdZXwE//iFxSZhC4NMBXQ2nZROhQfFp+yvMbPt5jABR7pc1yv31hGTs7WzVnRWy/ocs7DxS2qbspsVaUwTpHF0Zq5ByMxk5V4I9DK2nJICq0Ntf2LxNPbX6zV42V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueJHybUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueJHybUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A291CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748087993;
	bh=mKIMDc2uaoJKDCeWxEACTBt0FR0XsMB/jjt4c+fW18Q=;
	h=To:Subject:From:Date:From;
	b=ueJHybUjcsQxH7Ti0/ywMANgnPDRATWrT5KTr/FCrLtGD6lNxiql5CMVqM6XA/kpF
	 txJ8mUYzcbvq1cu9H8ee1XT9MdWJikuJOXtfR1ThKN7rsD3YUPcf1ZLbWukQhTMY4Z
	 RNVAMbtx2Xf7YZ91Zdi97PvFzPUxWVU6l6G/l+hd5DgVCZ1GE+9RZEBO3CfU1QNSXd
	 yKpAlDbx/xaZHPTZKH3oeCrXLHl0xZ1yyXahLi688I4Is1fvVnN2u6v74fQQNTibSB
	 SGivXJaEn5RedrP9jAINVc8gJzZD+1NCuK8qMJTuQT0M0+a5ZNhSKfE5YjSAO1/AzO
	 S0z6rGRlnnjUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE58C54F32
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808799358.32704.9438892341450892793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c016360ae4dc62bd9726a1ffa503b062c8e614591ddb3b9a055c1a61fd60b64
Date: Sat, 24 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748087993
