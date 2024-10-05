Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5117949625
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728119754; cv=none; b=tF51IbGuVeiDv28SVnJVPdrCIPXJEvJfBZusyj0CrzML7YlcDpHB/RNp5cW2vsRN6tFnybomLsEeCKTvmpMvdaIjD3dRfecoCgD/ACrzMWvH4lMMzLSqWds0jsEUmBbdVONQRNmLsojUvUKFNPke7lARK5zsYftkB4UZJg9j+QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728119754; c=relaxed/simple;
	bh=XoGIse1sDdy3I4dVyzMfNpHoZIcXUrP6F1mhfp0hNiY=;
	h=To:Subject:From:Message-Id:Date; b=UUfLF9zr5sVT86xegmDPwHiuH4zvM0IulMdD49B7N114bxAe+wYX0N6vxch7d9jsTL/q4lr8qYXkxJ6lDrKRIetUDJxDJ9PjHgCnlBNpw8AJjeUca+BN5YrQuHmRcjvSiE6ymwVPCByiZTTJThvkDGgJKV1gUIgxuE3c+7hr5fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4z4GkhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4z4GkhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB389C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728119753;
	bh=XoGIse1sDdy3I4dVyzMfNpHoZIcXUrP6F1mhfp0hNiY=;
	h=To:Subject:From:Date:From;
	b=f4z4GkhJ2omz4Pmw52fsXsubRFrzZqzZkdyRCve/pYpfpdda+mwywkC4hS/hJAXa1
	 /5FMJLsCRsSqd/i3oKesdjW6VAyz7E6Wqhlx9zTNFox3wRFCtFHsix8lrkVu8zO366
	 ay8uHTzMt80id1JnWpClRnwehuAPrYTNlkwkpA982gB0ueoxPj2XpPB8pWjCzt9fz/
	 MUeCqxIlBD7rGaLSTGweAxSmNbhGyooJhNhci3bmOXsbs7PRuakmvK5ljbOrpV9qxZ
	 zBwFtxn+O4eUl0NrSnss+szDvDWzl0k18iJNj9g/mhtZ1UbjIDBWcR2jA6qn6AcHB4
	 7Bg8nSY7mOVsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA20ECF887B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811975365.12777.5887040141182802790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e1b52bfeb076d1b63186f433518339513f4f04a3c1eab0440e5dcdae21d9f8
Date: Sat, 05 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728119753
