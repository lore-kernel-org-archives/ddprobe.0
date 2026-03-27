Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3121214A8E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774569894; cv=none; b=UXv8tRyErM/1C0FEoWFgJUEiYNKAgyxRfcFpMBxO+yONTDW6AdvMZ2mnNP0HbwKYUKULj6/iRdcdb9S+56YHUFJkS5uWEfL0DGGmD4I1IVUsdd9yM2U+4QYdQJIVEg7/pWAgUQiQ1SZ74MJhiDe3oum0GKpEBNtwpt2vxLfX05o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774569894; c=relaxed/simple;
	bh=uCLZK0Us4/Z9d+83AKd3wx3pgFpT8MImjM1OU7HQaJ0=;
	h=To:Subject:From:Message-Id:Date; b=aR+RGPM6XjzR/DCm6Gchb66d6TJseEOyg8KNTToUKa95lAVEgaSyKD2b30w6Gch3i64p3M9ZjCXlWGBEMAvVthPgKR9JgZ2hpoV8uOLFS7vQBIiUjR+5z4QXiD9lC4zi+o/1SdFadR5zx6sVZ/ehgmOOaGm5f7IAqrjYGismrH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htgR8rFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htgR8rFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF267C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774569893;
	bh=uCLZK0Us4/Z9d+83AKd3wx3pgFpT8MImjM1OU7HQaJ0=;
	h=To:Subject:From:Date:From;
	b=htgR8rFnkBz5+CBq+V7rpD+MxfVDHGIDqMefsM8wamozZL1zQEU1JPi1gVsuy9fJv
	 5pjZ1vr5u7PIEPacE7pI8DnkWH3tMr9qGZ1S7waZjq5HricExLH/GtKQ7QXEJN4f+1
	 zNGAnW4jk43v1B3/Pl8incVjCr7UQczeTwtIKP/7sbeikFVIyzKdim7LTfGZMOzlkl
	 ySPMLGFkvPd/bUbkSAkQMtk7044XqITwEt41Dj0fGpGySVrZ9viDitTPckuLqLYu+e
	 26Yo2sZannHRD9lwrbGMBI+NLwiUJi3VYnicNXSD8PJ3XEqJDgxDnTn0KFhdCnD7ML
	 +Y+TjWC2O45XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAF310AB832
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456989361.12190.6746825469528225370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51c83cfa6025d2a85e020b62d53b908d0c97d1be3370a9c416fcaf3089ce978
Date: Fri, 27 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774569893
