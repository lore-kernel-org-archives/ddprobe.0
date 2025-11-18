Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B532727381E
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763445714; cv=none; b=qYHySKHozJAZaTKS9tLXu8OEkZHzW+P4WdomdBaZoS3CsRwsamoWzQbipABssh6G6fU8KlBu4mb6O4CItFTtwarfCGG9R22hVLNLv3uzBPGi3KUcLp3PMNuAfYOUC+hXXByCLaig4hb3ZgE/s8igixoKS4a3kl/oKkTVQgrxYQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763445714; c=relaxed/simple;
	bh=kEctHXUFlSzRoZI6n1q1/VvQTHDScFsYN+g1TwKXKSg=;
	h=To:Subject:From:Message-Id:Date; b=XC8z8/yXfxDoU4fCLrEsmHgsQBdEZ4V/khaCbc71d8fZqjCL/xJ3jdq59i0RVVQcBfwnH+3U7VmP38icSUpWcfOm0eJ6WO1+ZgQgkFtUCmmXmOqHFKpZpo4VkRv2eE8lo6kTEbnIonGxlmPceo/trRzx+VQszYheUafuoCyeGc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GT911I/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GT911I/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4950C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763445713;
	bh=kEctHXUFlSzRoZI6n1q1/VvQTHDScFsYN+g1TwKXKSg=;
	h=To:Subject:From:Date:From;
	b=GT911I/FZc3GQPFZfR19klW8BlRSHh2louhiWiNaPouC0BRw8hjqHbuNvq2W6B7xh
	 qun32WkIWiEjom4PLvS+aGGlLFqcZ0Hl0DKaPYMzEq6Qy5cFAYP2WkSCzLA2glBYBh
	 u5FQP81mW6Gl3NE/QeTrH486pw+1mOdl99hEAewnIXmyPUAR45npfwfgxVuTP0e8UU
	 /VXDa+rtADOYgfMi632Dl+Y0wdHeqH2NM5CUdnNsKQDVLuCZsZpEi0JWakuwA93VcR
	 dQUGa+xgIRH/+tnCwze4AIvjlXzOxeEBr5uQqW0/BUb890kxJiLObLefDwIi4fSBch
	 dPO0YuVUsp9MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119FCEBF97
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344571358.9377.5357567229871472181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c447bbe000c3d7359b9538d89864ab5888cc1b9fa83c00d39f32d2a66415c43f
Date: Tue, 18 Nov 2025 06:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763445713
