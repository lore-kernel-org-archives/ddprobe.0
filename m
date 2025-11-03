Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8F727A465
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762203594; cv=none; b=QF1ermBNgPgcDLZx8lhIFuCM3iHBCupi0Zudo9tSXBLWA7GpEUboQIjNKsEI29iAs7ScyK6BA1uxgTKItpHESMuf1VPk9T0KAK4h/oTIvx5W2tE7dbYl7FFncZVuIMfoVfNV2sfXHXKY3KCKAg/IxxvJz1RVsTHr7zM7kmgL1o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762203594; c=relaxed/simple;
	bh=F4HqIh/x0Wk+WVeMYs7PiGi182qS2eumt+AQ4f9jC7Q=;
	h=To:Subject:From:Message-Id:Date; b=U1erFQo41JDIbNAcAJpfnGTdhEvJ/imm6+KAidplx6+EIkl4VkTARPohdnwzeeCDBBGLO7kG6ruL6jJTXhFxuMDAD9UL7VGd+t+qyHZcra+iKZmW7eDN4NOjwUI3lBuFHa0IpshuqrYsQ6nRJ1WC1NjEyD6HXLEtj5Ohe6TEjNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndSr77Ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndSr77Ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2FDC113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762203593;
	bh=F4HqIh/x0Wk+WVeMYs7PiGi182qS2eumt+AQ4f9jC7Q=;
	h=To:Subject:From:Date:From;
	b=ndSr77IkQoCJoN/xBdPoFUnhTyBldAvqewcF4ZvvsvWmA7SGc4xajGXLd/LR+CeEv
	 QkuSGIAZ5QNav0GI7wRqrecyvMjDgXMzHKz+oHtYADtK45NCQqV3QA72JBnK6E675G
	 8S+1HYzxVzTOxXsbRVW/OX2Cs8+bwAoQOcxCdXWoDlONk4Hiu6RzlXNXnQ3e6ghMCH
	 pf5HJ69QCxTizfVO3iLpKIS23dRIiSbiO4iaTYlwYkwM4bZJNaLy8M75+JIPeKwcAt
	 O7KPLTQP66O7ZBhsUxD6g4d85d76ZV6PZxu2ypipxv6gPuhIDOD4FT4F6X74AZUKVr
	 /xy9WveurrZJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD36CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220359357.3828.1018094394526782794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095ac091df5f023b96c2b6636ec9257bd274a66a7ce79d7a8a5a8f65c9a99633
Date: Mon, 03 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762203593
