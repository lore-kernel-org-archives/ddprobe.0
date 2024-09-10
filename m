Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C38817BB08
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725956754; cv=none; b=igJVbn6eiVNmaqfHXw4KlTt9fwe+pEzQtlNLYrxInRP80ewAKcFPwFYm5xnqLUpMrnnN58Ihp1dm+lPlt7MkIsKYV3x8fnIXXMCzrWvqOMo3StQQw9tM6IGKssqkcaELN3sv3Z3q7JjQNmRU3AX/0Jk8ExFh2abRsBP5HuMhWSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725956754; c=relaxed/simple;
	bh=JWgM5flftpGsRasZstrskDe+blAplr80pjHCOPfFv/I=;
	h=To:Subject:From:Message-Id:Date; b=mlfDqMwyNuOksCXgCprtlFeodrtzHqeayECr6rDKmzeJHCzRFc72IBnt0EBm94AA8flziKmpae1lzCoLN+YGWJX0EffzB7UhEl2YuWzTSVMHrhGbHQJBqsKhxraQKmtrq5mxrMZMhh2CP8nG+8Dj1kLTur62yO447X8HEjKnrBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEApg/cu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEApg/cu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6F5C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725956753;
	bh=JWgM5flftpGsRasZstrskDe+blAplr80pjHCOPfFv/I=;
	h=To:Subject:From:Date:From;
	b=lEApg/cuPQV0R+VMJoR16OvTl2WQzmVjqZXFXvxv6QUtgUIf85LhY7Ni2BNqch1J0
	 omNTuXr8COZxeGmQj+QN/FvOdz+vCRJ7JoxSC19JpufgfOr9gZZD7umhU0sB5goI7a
	 sCWHNUagGWt5fZPWs+jrMPRfNtDiqBZY9XnYnUV84Lw/yaYJ81GyM8x0dTVo0Bh4uk
	 qLzkU+XAcd62E0Uc7WAja0LBHI122F1OcchFfQu0UHFaYCDjp7gOfAVyEHqkFd+Pgk
	 S0PivcPI5YsQN+LXIRWDszSB/e5k74sH8NGmQORUdVSkd4+EzQRWUYgIzMVJeUfo3Q
	 bP2t7q/X3IRbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E7ECE582
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172595675359.28732.14514684779375307688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68780c84200659d43407cd29278a3ec515c8bd376cdf5561309118d0db77d3ac
Date: Tue, 10 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725956753
