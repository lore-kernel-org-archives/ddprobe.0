Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4F333CEBD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788311434; cv=none; b=sTywk8L4Iyg7Dz4IEBiJeZJ7ziPa+77+8NWgADKYAR8CVXG4mYYVfStiRe/+KmB0tI5x6f/cAZGyDfAE5lo4SLr3Dj43ilUcp9gCyvWr16p8g8esPQxxR2S8hXDHL5PpfOExSKI85keMx4HbqSuXrOf3+dwX366mKhXteOMqnVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788311434; c=relaxed/simple;
	bh=9oQR0qZpGKdkMi0ff6DPrhyYtQ7R8jEK9KUg3DWgWZk=;
	h=To:Subject:From:Message-Id:Date; b=EFH65u9PJTI1heXxu9eW1oRWKX19vw9HWd/f/0Pmp+gAjLzikruWv67IvThPqiGtUpOT6JGx/ptgpkBnXUguy9+4u3QEkKvncybbl6kJE10Ro844ZSwfj+HRByN7tiEIMPYb19yqz1TIa3DxFGmhA1VNpnb8lnNuK/U1BKGJOjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMhDSH8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMhDSH8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4720C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788311433;
	bh=9oQR0qZpGKdkMi0ff6DPrhyYtQ7R8jEK9KUg3DWgWZk=;
	h=To:Subject:From:Date:From;
	b=QMhDSH8IOGQHWTK9WDCGCg8XJstlS0+YghgWgQjg0zY5IdGxUBHNaAYelb2OV5rHI
	 rOlQ+B7hO2zkTvmWRAbyzanew3WEKJFXrFmvT2TNgiAVvkfRTPr8Z4aaC9AI5CIXNU
	 gXo5JfbOFGYmIGEMz8OsToCvKsNCeSgTUXoQSH+7zmfovs9HN0bL53fXtJeBo0tAeZ
	 w/v2n7zgquaUMrb1QwGSyYT1Ue5BjNNkjmax98Tc12sBZsXjrPQB7D83MkJMgMZkxM
	 lN/WYUmyx3hQx59T/pkdGJSyGyK5NvbdxnQdHBi9aDLRQLxBp0tRlS//N6mvGJJQJq
	 e2FuaKAXTwxmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1085C61DD3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831143368.11591.8050061706644792684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77464fce01d0f4db1a3bdb42facc3f32e5f51f30a25f4f923dc621059c2f2eae
Date: Wed, 02 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788311433
