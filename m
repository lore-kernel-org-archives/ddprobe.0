Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDDF347FD1
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772747694; cv=none; b=R1Gj9Yz6y25OO7SIbldIaU7twmUVjflIFTm3HvHNYd7ixU2zGifaMENizDU7ND7h2Quxzq//k4b7ybztffmzAOCHdDidIxTDjIc4TqJMiJPuB4ICrRgSkQ9wICimj5I+dqA9vD08SxUAngtqvjnrEBho9AmVNbbDqV9Rm0JCFf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772747694; c=relaxed/simple;
	bh=qMoWy8RYZhxxUf39r04zgZPXYIdv2CPOYa4huatcwRU=;
	h=To:Subject:From:Message-Id:Date; b=Tvkyyqw6yODfy3+fBdBitH92poI8iwarbFpjew4WHBvIto/vz1e+9m9HpH/4DRBFN0e8L+jatQYaayIoon0w0lPwD+VZOZDos2E4Fc4gqPJAPuPfhOCPxCsT4Z1s19DincgDY3klN6mnXb9V8JrZHtDMllyyRgisOI5u5cAeoAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=St/5dwCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="St/5dwCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1B9C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772747693;
	bh=qMoWy8RYZhxxUf39r04zgZPXYIdv2CPOYa4huatcwRU=;
	h=To:Subject:From:Date:From;
	b=St/5dwCs8vOiTqE+SQm+3HoofOn2Cp1/1zfyZ+WZxARxeQ6hki8Uzxe1Dnm8GZlcJ
	 Vnnrng0TmzaJU1JW7q5OvxwXKNupkFt2KfmCsWs08NOWMMDIhnCuBXmZbqPhsHZ8hi
	 mnCBJ0Eylz68Di7d0BE8dq/SpfM+JAQn583SCfBpfMPNrCUdlKK3bRo5x7gdOwy2Ny
	 YM5zorkts5ikuWiIBSotk2LgQ1I0Blvpw6rldcZTSVd9ND0O+h7zXjyCAZih2YzhCN
	 RYdOuk05FJhD8ccWr2+mExlQ3CkNktRopmNinSKohl+qs8odOybqQXi7h1pJqQh3Gb
	 Ba8eQ//7x8/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986CAF513E2
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274769359.10099.5260092127610003093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c8a0833cfb5a6a8660867f6ac4b15fa46095f21db903bc89ff48e6820c9d56
Date: Thu, 05 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772747693
