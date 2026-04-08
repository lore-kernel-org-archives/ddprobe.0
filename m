Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5BB3D3D07
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775657734; cv=none; b=cEvc6oCfz++D1zLyeqir7769UKEmdR54kZfVukNWe6Uy0bmcuTp6o2y5r+u0iEXVqMDEqdzgExbsbtlXXFFRRDaczYbn6Rdiirhk8r81webZeWNqFlebGPvhVTCRrIADgrsHL68Aw2IUGpDmiBU740ZnAU6WH7dp+/GhAhPNxzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775657734; c=relaxed/simple;
	bh=YrXxUqtbxsIGXGLRv8wuX0Q7vVJcLpnyeKXjRSUyDYY=;
	h=To:Subject:From:Message-Id:Date; b=kiswejYTmLGOAK8f7Na/NIGBhpi/UfECm3dsWaKpIHHEc7biKD/GOGzmLD1UzLwkOtnpeYWCI06l5NdpKSvEHk7kWyy15kzugvqYEmVhg6hKsdXnGuFhAWCl058t1WdSX5vNf1+e7mJg0YHiZkiTYk1aoTfEbkZovgdXMhUk+D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvOK5hyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvOK5hyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B2FC2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775657733;
	bh=YrXxUqtbxsIGXGLRv8wuX0Q7vVJcLpnyeKXjRSUyDYY=;
	h=To:Subject:From:Date:From;
	b=BvOK5hyU6ouIOyLFSwfO88vmgvcMn4zGqX7+/Z1RqyZW1/HCt9UAgxIREb1HcEIPb
	 dLiMtAsKw9LLYo+AZu12Sp/+D2fXVwCv0GW0eRR5ZLpx29VrB8eEhcIRbjp8lYkQpf
	 jhWHuDZONDONXwxnKVZW5axnpIvzDQrqqVeMJ3UvljIxTQBdno4ugC5wj9fXysUsml
	 /WdpCHaucS993Tn/gaBZ+RrI29JNENvSXbeVxfhrlRuh5iMddOx85H6Ige6gDc2tzV
	 V2fK5Bdg+zEzBzDMRxR2GgR4HWndP+sKLc2FLDfo9iVusv/wPS2cmb4l/jdqTAtuzB
	 c0u8e72G84zLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA795105D9B5
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565773368.2863.8297179872475825532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a15b3c0ef0d1819bfbb3e9a90fdb21c2f21f2fb3fed4a8a0bcb77610b6dc4b
Date: Wed, 08 Apr 2026 14:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775657733
