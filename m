Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27165749C
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760527795; cv=none; b=RNlxlz1BHwClu58Hc5HIY6zqd2A4PLAE2mgX0tXAsrryClscod7VxrgRgqv7/77Z7YPSQ1xGnir8Smam0CHqUYI/IZLMrdRUbkInlcDF+FShlHuruyS1F39sDilOGbmpco1we4XzJonXg6rYVfpx2TG1iAmJwAitZvNtPR4w8iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760527795; c=relaxed/simple;
	bh=uNoRVCVsOKVk2IIgMhWAwChojQsLAxlAXK0pgnsDPfE=;
	h=To:Subject:From:Message-Id:Date; b=o6A3+uO/aTz8LsmEQJ3zl/CtdZTi8Fy0qVw3t2oxNi3DYIUWLD8MOY9O8L59Wk0M99uJ0y27JrPDTJCq7DREIlwobNpLp28Qk2/kEu6W96+Uux6EHv4wfd2ULca6jF0pZun/GIL0thA+Cr9i5xwC2YzAWUEHaRiY0DGJzL91cL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geO/8ns+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geO/8ns+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDC2C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760527793;
	bh=uNoRVCVsOKVk2IIgMhWAwChojQsLAxlAXK0pgnsDPfE=;
	h=To:Subject:From:Date:From;
	b=geO/8ns+rgJOg08E9w+1zME9+ik+/9W4EBy+na2OwMp7/rkvnN1k6ONqHmzhdweFp
	 A5WHjqI4IZpA+1dVTJtNY+yXh9izfZB5HGPU5ozLP4MpepXvyG065cvelyZYAmk/E6
	 W1jfL9RVGPrcpw0zK08SfRHUEXIFm+lX/Vgdo3hxfw9Q4EPrZJBZyLKhq1PGoC398N
	 1BXf/B3TMJfZxq/3CIbYC3uXLSNHrhDBC/9nuNKewgJHFwXvd+uNA6aZ34zETb90fi
	 Q2HC5E02du3XyD9Uic824iSrayEYUc97kxF5nQqx+BBRUHuRFiCJFKspPw/yaYOdnv
	 o1WodkP6/UB+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F158CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052779357.7924.14839630428316044841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58cde6223bcb04278394b6cfc043f442f039d27a670bd6fd9e2d70a7aaca12ed
Date: Wed, 15 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760527793
