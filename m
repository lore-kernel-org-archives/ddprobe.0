Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BD742B33D
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788342634; cv=none; b=bsczHKsuX5LBFV47UV5tq8xZCwHfcCEkdKvXGPHwQGgPmZOtv2BPnF2HJMHV7OVo1d/Akb1AV4tkCBYc7hZMeOs4M45JbKsK0jUlz/PK5VSOGp5uSMofPXRbgvpaBU/wMUZKUaoG/7en4613lgRPfgqfpXxGBf+mqeDW+HRtA6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788342634; c=relaxed/simple;
	bh=KBIv0FPU2C9rw0s0q4KIKR6fd8fHJkNwAJCMCWoqf/w=;
	h=To:Subject:From:Message-Id:Date; b=BumVj+Qe1RY1jNtt2dXgk78jy02WnXTzjUkts6nXqKVTCuqrwiDTOauh9ojVfqXuT16DwfEerBGUavb7UY4Md6SzYrqSwHz4+GiVeUnpZfVEGF9apJHy56tUq3jyUvlFo+K7ehLulBokqXBPu8x3UfLmVqs7Ki8tqrobPet0maU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/xEdu5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/xEdu5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4246C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788342633;
	bh=KBIv0FPU2C9rw0s0q4KIKR6fd8fHJkNwAJCMCWoqf/w=;
	h=To:Subject:From:Date:From;
	b=T/xEdu5A0yvqCldW0i+aLMhuFjm41Dh8eCHPF+p9PpmIq1Pk2fx3rwiwO4oafKpha
	 fP9C5X3dqzm7XtFEkfCvFzKZaaoH3BU4FCdVICm/PRq2lLHLYsfhuR7dqquYOCawzN
	 U8PpXMORfAxumJDae5/Yqed8R0AmILnTxyHIxwyxzz2njlQMV4NsDroCbgjg8jptCd
	 Oe45AOA2P4DSDqmTYlMD+bTH7P9HTYbnz95vYEMVCUKQ3KFl5Uws4kma8qOp55uR9R
	 oz+CcjXQLh7MEu+BBXrlF/YQ2C/+8C+FnqhafW+50PsXAEebDBn7cOVUTq5mSRK7ZZ
	 vZExn589kaITA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA5C624D5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834263368.23773.17634430924279723499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fcc0b40ecd2a1f621696dc11f10d7f7e6656c8d5d11d0717be13d288196477a
Date: Wed, 02 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788342633
