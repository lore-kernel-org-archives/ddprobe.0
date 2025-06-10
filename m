Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23C823BCFD
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749571793; cv=none; b=Jmt0ehW3H90YMyA6UkZl7REhxiFGOhKJ4mJxY0zsYD93C4YfrUy/hkVk2OfEONrcsN1vdKfUKC6dBHmHfEZKfv8waIhx4xYvdDDPorvf75Q7bmUE973R60fyeoftiu5pmOq4kLTafVrPIrzVK//zmcxF5oZKPDX25K+/MxdEaOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749571793; c=relaxed/simple;
	bh=GeQxdKhkwKfeREbLQZDrn+Ao3HDfVSs56AQYNtTztjo=;
	h=To:Subject:From:Message-Id:Date; b=sSpavb2skCxnLhtEFaWpvA4L4dCjIMqcyDCZYbIzkzcsUNAdyonv6ZznY8g1znCBxtt9q8Ry6y6HdBv+t0o6HKjfmGEd1WkrUtJh6FiDI4CrkKF4qBK0r12efMqJoci0EmVm/uwWWi1n3LGzIfPH6Kj/gGzDxkD41gS1zMRwTVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3csEEL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3csEEL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2776C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749571793;
	bh=GeQxdKhkwKfeREbLQZDrn+Ao3HDfVSs56AQYNtTztjo=;
	h=To:Subject:From:Date:From;
	b=t3csEEL9FLjXCBrZ5wZN92zFEGLQCSUjzVBjXCh6qcal6qPhx6fZosJmh0Yf/E0H/
	 pbEiD9y5dVCVkDE1iPu0tmh0XNxSpvLfMjpmRPt25l62cnHi3aDHI3QrVgFWBqBfz8
	 f0SPLY7/mAMMmMHOWBOug+cmVejFGOo3pjVYgyuPPzfiRYYEn53svPPePBgbwFFOVs
	 QEwHNE2fMous6wcLCs1KKE2lE8Ag6rPLGhLVW67JPSE27LiTmZ87gTpePvtiIH4P8R
	 a9f1rfjf5BPswCbbWcEbX0zTGV4mgyqocnY0jLHM2z/TnLZYkeOeYGXg/vK7X4pi41
	 k9u1cCIXJasgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DBBC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957179358.11217.13402336615420496222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b4961731106f83b5ad67a60e88e6001be74377f83ccc03cd8c28716c823328
Date: Tue, 10 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749571793
