Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32588283FCE
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789530634; cv=none; b=i6Al/e8jqNAcoYcHZmAmTELgwXhGWGEI0Vky2Iqhs8zdsV/2Vxbs6BuXuLM6bPy6P3/i4lfnOhSasgT3YEsMASaoaxYQkaU6g5PvsEPfKsnBVSkay1rh/+7J9ISQbGz/v/zHkFX3dwVFrqOc3+rU4FyQNrdBSlPG8yROoPMWEJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789530634; c=relaxed/simple;
	bh=DZJe9foT1hpOmDzyQ6Ne88ETtXQJNEV9brjVP3gynI8=;
	h=To:Subject:From:Message-Id:Date; b=KDC7fy9+QrbFGsIa3xk4MZ4hLfOYdA1duiwzGE+O8jShD3U/b/1x2Dw6J6EWTA0YGu3ETzm+hwg8/cqEq23+H3cGLbdGj0o7hBFISiLjtfHSwlFouNdcYHoiv+/dSBd3A2F/Y8CSZ6YARK+v3KKaQzCMLOSj2QKOrR6b8gc6suQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YW3BKBJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YW3BKBJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA00AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789530633;
	bh=DZJe9foT1hpOmDzyQ6Ne88ETtXQJNEV9brjVP3gynI8=;
	h=To:Subject:From:Date:From;
	b=YW3BKBJBMX4f9OZbZNvvwPtgetP890kFlxoxV3Ld8NJRWYzjEW2sG8xCQQfF9QZWP
	 K/OTZOgz8VkLeEiq2ixZEURKZfrlPfXrJAvbfn/Gdc7ao1DUkGn4BF9mQcQrPmwOrc
	 veU99Pj+03WuyaW14tVX9f6au3mdxOkVowLkvVdEpTK+1JsLA69sE4xy88E14n6YB5
	 97o1ImlY62X1i0OIiC/hSkmo8K0UpSs9bELFaj6YzWmw+DHLuQXfRCqA+Ra2B6sGcy
	 spzPJP/yV3z4mPWU9CJlnS5PAhXS3imOb609DH+1vLLpcptgJUU6ykO0Bve0tnbQkr
	 eLCKSSsW6MDZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3AAC88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953063369.32268.3197343961049222101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a97ef9def1a6a8b492f575c78f9896cdcfb147a97a969d5d0c8d89e66ed86ce
Date: Wed, 16 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789530633
