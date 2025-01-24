Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5096213AC1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737683754; cv=none; b=C88/rLyIR6TvxfGcwCUVTtucGUU4nNrVhwKeHmGq0guOlwlB2BjjCdrtlL7tQwpz6ukDjv8U1alEVMIu1Wuaa0+OqIv+Qsz8Jc2bxsjxvmOjuUnajwSULJNU6anu5NVB+LkBLowiWUiQbvLysy3iESrsUGxjjk8U142+avrhFLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737683754; c=relaxed/simple;
	bh=KvYx/GSwgEmwE/iMNm5DGizzj0/uou4zkYv7kCAFwIc=;
	h=To:Subject:From:Message-Id:Date; b=HhJdq5AdZXMhfuHLfXvTuR6lYhGwvWrAuPa1TUJnHnZkqiczJL7EhYJvHCxd1zThLIOVMi8vyKKIIjgZr11tu10uLWgpauNZsdubraA3AthpDU6q1P3qzx98Ivm/PJeQaxHDBEJDp8x1ZVaS12DwxhwObUuGRyzUsTspYKeP0D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfUPYiJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfUPYiJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9116C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737683753;
	bh=KvYx/GSwgEmwE/iMNm5DGizzj0/uou4zkYv7kCAFwIc=;
	h=To:Subject:From:Date:From;
	b=mfUPYiJWOgspfH7VW0d+AgH1X1mmDRM2fHkEXgZZj/535Ux9gJJpzg9SGfpcMo45s
	 kxmoRblDkwZ1iYU/LaQq1oBGMgD7VnbkYnPtayIn3QSgnTODRyKOqFRTcLXLqjGczg
	 PjgzhUOOHzKxcXeo3atvYIoWuesNtjtIMihiJuoGbNcSx5wPVffIZU91tVYpQT0asz
	 b8P1D0P7RgKLgla2aDiyiKI2WGH5Qz2KVuc/Lt/gsM8OXaMZnNvy3wUA3pkJTIS2Ms
	 LHCf8oY4nz+3uF0GhJ0jGa5ccHT0yEBHStHgaNY42q75u76a91Rio8jjTa3CCcCFey
	 HXjxN/z3oUVkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F94DC02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768375364.8642.6364926218212351702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b26eafabf608c7c0c78014c79a8eb2c65b61add1264c5e5151e83a20aea90e
Date: Fri, 24 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737683753
