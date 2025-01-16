Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FD04C81
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737006354; cv=none; b=UbxPqIdSsGYWuoAD4MVSvCtPDqCjBMJbwJbs6wPkSVaXXEF81chP271f4t32nN/qlPDJ/jgVxvArYBBdfA1cBwTTufLJMA3HBsmTAGiOmfrpfnPSQrShGHL0wBiz4SrhgmIWbaDwwg2tTLPiQEL7WNzADiHNvaDgKTsMvCZtzvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737006354; c=relaxed/simple;
	bh=MbAiD/oVTamU+zXE8D3czRNwecKrOwu2S2aA/41nFQM=;
	h=To:Subject:From:Message-Id:Date; b=RqKJzMWSuQx6dp4ZMEuKqBr/DkwOzSbrqa8Q7/YIsVfaMBnmC57TWXNCNiJmqEzITexdLeRjoUl+XAI/Xr0DD7DJHL7wLS+TVrzj88OWH7Fnlfefwak9s3eoHmhRmMP+tDzvnI04PP49LwQzuPTgUpNBbMWtd48cqDgFJ1cvLg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCMrF9Al; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCMrF9Al"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB22FC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737006353;
	bh=MbAiD/oVTamU+zXE8D3czRNwecKrOwu2S2aA/41nFQM=;
	h=To:Subject:From:Date:From;
	b=JCMrF9Alp65AwsDtxfUZ67yYQi+2yvFRX4axMbWBZ5j2yar2Vfn9DeqTKYRkzefr0
	 hNtk/+DayvbmSRWRQZP3JJrWkbvdPPIfbLJ0z0vMh1WgeGU25aBw7PcDWPjVOWiKZS
	 /j2XrsIF9ALRUXIPkub/sMmYpIU+4abMFl44DFexQcQ2e3/t7dHjp/dcNvL9fhy5Ns
	 cpCIiuu23n4oe2tl0LJV0D7xWxBfg95z3IYOojHBV85WIr6BkCp8ZXrt341D4+gw/8
	 j4sMEEm8QPG0LUAT7VODOJHJh+VUJ6s0GwntgX+fO9m3aO3kUsNuMTodFsd/svnf/J
	 VTI/oVp/J1Ecg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97166E77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173700635359.14385.467506757822159196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf8422d512c07e97fd77cbe1da589cfe6de50b7bebdef526e2b325b902ec1c17
Date: Thu, 16 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737006353
