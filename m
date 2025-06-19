Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2740B28B51F
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750348194; cv=none; b=hWn2FJT/gELCJ3ksFeRdZm36saheqtV+TiGdwchCzlrgjaWrmKhXTORPERkYj+ad3KlbzewJN72wrOeY34yTD9PTEE00zyqcK6qIC7Fo8iflCY2lF4gxQbFoOSuBfW1M3AGP5oV+kK1GEeO+wa640FtamZl9L3JMcbtW9NWQUiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750348194; c=relaxed/simple;
	bh=OtpRQcb1ztSjARSsqSc5oHobtGVg3K8qCkq81C/76gU=;
	h=To:Subject:From:Message-Id:Date; b=AEb45bgY380KktrtiDagZ7iXmjhv79cQoymq/k/gKgYX0xq53RhIWH3QnZywlGXKub+P3LEpYd+kIx6g1eY2VYfl5ckqogejCWddtAhRSCVK0dTAyW+ceEz/aPtIWrP66zMYUtHGFydZEpuiecok6kZ19neWtVRTU6F4dTvx6Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xo/h6lAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xo/h6lAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61D5C4CEF2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750348193;
	bh=OtpRQcb1ztSjARSsqSc5oHobtGVg3K8qCkq81C/76gU=;
	h=To:Subject:From:Date:From;
	b=Xo/h6lAW/YB8K9EwOC2nH+XzZX8Lnqv3DIPbMO8OYm3pRWbJaBh4HQ7kRGtDVCoEr
	 +LUif0DnOvKRZx1jdFm4OA4u1LjheOFzp7XKEdEWT8Rynds5fe//XXGkiOCNmbR7Kg
	 +hU9oa61RHYlTggG1PMBfegOQTQpvJBmGLXz0kXJJIXYsyB+Qf7HOm0C3yE5Ipb0s8
	 5t6UAdh6i5jOA8uF8WjHQKrpC8L5/cSuzgeA+01eatcF5Yr6JMk/hY3sSAPdiBD6Cf
	 /DWljWUGcZdYRgPv9ZaYP6EyANcX80Z3CqOJyMtQeIblyVQn5/udgQgjgYZt8tHdxB
	 0NXgJvLwo2erQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943ABC7115C
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034819359.16635.9078647147916201687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9f5a125e9d3b2a41ee065fa31a5d2b236c2107aebc34b034bad8206da7af1a
Date: Thu, 19 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750348193
