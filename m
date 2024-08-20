Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3175518F2C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724154954; cv=none; b=u1UCUbFmN4TBrvJDIMn3Zzb5tbg/bM9758uP1pfCHMul2BZeASKLp/dRAAaMD5qaj8RhvvmfD9CJXzdb3R8Hj8AQfC8lqzGQ6fzlmyRQVBBvZ/SRrhHgFE34gsyQNF2F2Fnd9xE7x/gTQm1JDB+S+cJ1H3AtjGavctfR44JzN/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724154954; c=relaxed/simple;
	bh=95Yc1fhR3OvDSx8kiosXl2Lt3xQVBVwf2Co8eFEGwdE=;
	h=To:Subject:From:Message-Id:Date; b=swpgPsREMh5UHZg+WspxW6SFh83DvtwhsS9weOkzR5rN6NzdfbCsMh7VRARsL+YozTMDnCEnR0mEoyy+dNDq5YnBITmlIa2RgifvouQIG57hOynjHTZhPa85W+z9sXUpvlO+co2+Ne1iZY3bUpHJ0KbFPbY1t3V3SQHFo1+1Lp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAchnYwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAchnYwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8CAC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724154953;
	bh=95Yc1fhR3OvDSx8kiosXl2Lt3xQVBVwf2Co8eFEGwdE=;
	h=To:Subject:From:Date:From;
	b=oAchnYwuM3COi8b2iNo4BFi1CWoDxjJMn9pNvNLGdigQcr66/Yo7NX72oz7/YUR9X
	 2z4MzNMo64f3BMQjo+9REJUGPLSqoggLTdP+L1A1NMrl+J65mmg51BtEmKuk1ntv/H
	 FgBYU9hAH+Byb3YdZPLa6xlwPF53ScHXmSR0FGdIFmY5dyI41rbdyeZ2IZXL96cW8y
	 HEKPQX+DHNcXui6E4bG94jcpjo8uAofUnSbJ+mGMm8nDThYg3cNYGe/JxUFv/CkNlj
	 qM5cJG8acvdgplUYlpawm9DNWpFjsAC85JFhK3nhcwMVW3ZXv+2AGU2KUn8KhpdubD
	 7EZUlM4uaaGRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98332C531DF
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172415495360.25074.10301617958559458741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8553c3be2a1e9d3110513bd9398e844c9e99f3c923e10965cec95f85fad95ea0
Date: Tue, 20 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724154953
