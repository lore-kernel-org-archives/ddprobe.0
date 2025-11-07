Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C025030EF81
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762502393; cv=none; b=kCSF3c4Tv8FWw4/SbH9wvmPLUOujppydyjoLrdGg8xSxQ15HzmhxgdCsmseBKc2ECkaWtdrwep46IKvJzzf8eSMTtqODaACNVCITzWFIfNekQWVA/IO8BEprtOFKgtHg9Y0sS/vao8TmFCE07KFuUnj0otGsoAbunUCjYTVLVZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762502393; c=relaxed/simple;
	bh=SL+m1Lfo3pfoRPFAtlH6nM+EaGMAPJmNmUzJ9wU9ByY=;
	h=To:Subject:From:Message-Id:Date; b=sukZnTxSNJuoBg8YymRzxrLv+WHtrt/olthBeOgCTq8YvvHYtb/i3auB1VBuBJ8V/z8oP63xMyEkMV5giGVWbv/N1U0LN3N9JjROTtkDkEFDGSfgiUE9yJRrT55AKcuh7jjRHX6p3TS5laXXI5DD4zNskkczrGjyllE1z1+cUB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSGUa9F+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSGUa9F+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD79C116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762502393;
	bh=SL+m1Lfo3pfoRPFAtlH6nM+EaGMAPJmNmUzJ9wU9ByY=;
	h=To:Subject:From:Date:From;
	b=YSGUa9F+PcPzr+LU5AMjn/ggoeTvK6+b1ljlunoRT+S4K5WLIc6wlSSWMh/w8mIpc
	 keBUthmsJKALw7MG1az6sW9CzoTKzmm4h/HOXKAfi3CfE77jf7ZdxC1ry5tLJU4HIz
	 QnuCw3lra7N5Z+XjyqVtsWwwAZUhNclYVb5QZ1jVKGXT+Lk78T0TnVAMtM6KmimEIv
	 0Pv2Ycr0GFT5phfzbI6VkyFaDoKoaKfzJSbW1nS+ynmN55bbX0CU+uIivxfBIFkvsi
	 52M+YxEAS/WAMDs8lr9QHqqEiw6/VfF6SVzshijVFUVbIgARBXASs+HXZ/Xux76KK7
	 h9Z4wIjmqHBCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACECCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250239358.17784.368728182102396379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507331b46b2b1ad678a9511e67d516d4f68867e96995d47362044d373174275c
Date: Fri, 07 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762502393
