Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA2B41C71
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776275254; cv=none; b=doWNfpXuRnHbqvIdjVIniLG+eB8EyejC53H+A/IXRRGarYz4jWOLS48qyZDToOOfCVuy+nQb+KQFUk6W8VB7G0iNzxyF8PcDhc+SRwS34fpx3XJxTVpgbuVzwQz055v/GoLyBLbkOL+5b1fwBTp00bMYZazGPINAbXwolqBuziU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776275254; c=relaxed/simple;
	bh=SFJg2zS/qW8bKh6hFWSWfxltRT/kzM6gcAr49gX3jKs=;
	h=To:Subject:From:Message-Id:Date; b=iY7P6debbR6iT52h9c49BwqnCW3dgWEq0pVM2ZJ5H1PmuQMPS1CXn9lc/UpNvT8GAXoKLUYdX/6QdLiVN7fwUI1jhnIWLBRzXPp97cQSIzKSyXU/OD+1A+Z/e7BM8FmwIAqmh6qTwSE5JGt6fqwC8gYugHaLZGN4iyUzt4kiE9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDfAt2zS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDfAt2zS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B838FC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776275253;
	bh=SFJg2zS/qW8bKh6hFWSWfxltRT/kzM6gcAr49gX3jKs=;
	h=To:Subject:From:Date:From;
	b=fDfAt2zSag31fG16ebWy2gdEyhYEqKMcfiwWjVlsAlhBk4S1SiZOAgx67yQolWZ2Y
	 JHHxScNWBmdJDITjuD8Yd1g5TlENl+oNkvsiwN8J+9jQqNbRDajPQR0gKzqg+RDXng
	 xDxijqi1D1mQedtqU5O9fVyNKDspD5LVVvO7J7RK3zWyssv6FJNKJOAewidbTB1WTh
	 vBPJvg3ynYSlj+2Fc0rzkF8SrCn4sLDTZT6huYjYCCsVfAKRo8knkGzISFv/1qp5J9
	 h/4g5tcGCaa94pKMF00aGJrmLx3+Wm+IoxNIffNaQvBkF46hRwm3aqIitmsrHgdTMm
	 +jGH6rQZy3o2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9916F419B9
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627525368.21409.16232548627111059439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7732e6a9a21ccc0e1177efe1d117cbba958ce56ae3c9ec730f9ffa745b7e7b13
Date: Wed, 15 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776275253
