Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128E328136F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766526834; cv=none; b=uXxACkc4ZQVCBj/fKwViE6V/ARCnTpywDYMLFNJy0Opc3a0i6AjKIjs4H4XR3LSYjRNgSVu4BP7uHzlLF/KtfkL20D3AFdRBg0vyaeO2TmnDxgLJSqptYplgxjjhBYSy3z84SZK7ccKSgJdDQ1CD002b0CuRiQerXuAuWIfaMCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766526834; c=relaxed/simple;
	bh=WQuzjkJi6qnpfyGZ9YaKPbC3ppIK74b/CWcV9eqbPDY=;
	h=To:Subject:From:Message-Id:Date; b=b7XwM/yvQnKB51/7jrtl3Y1UiRA24J+wrh/51bEsKDGfieI7puKgk1hIOmql3L+h+FgrKbaY4htvRd+HE9jgzTXbEjt1fWoYN7/B5Fqxl1hlhvf26W1/Umt2FqXPcDlYjluaDz5eC/lkT4iN9Al/Kz3fqgJVEdVnpf5OEHcox+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxJApqxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxJApqxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C713C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766526833;
	bh=WQuzjkJi6qnpfyGZ9YaKPbC3ppIK74b/CWcV9eqbPDY=;
	h=To:Subject:From:Date:From;
	b=QxJApqxq1EfczMuP1hJrVuPVCNk92Gl90VV4bc+A+uOkbrNY8gkGyW9FqygLBn9TE
	 Rz7UpNAS31ddTDGC5rfkFOj/Ai/ePByW7mPmUFxg6q6vO80XRkVh61BfV4c7UxCmCK
	 kBYJGrm6zfEnFLpqF6rg353BDjs4yUVIVFpLnY32IrY3W9+OmgMxTvJm9jM0awpo9w
	 PvYfHwj1WUAFybC5aJ0xqmDX3o8BrXUeqgAvrvCAxA7gaA2rH9JX2gBZ50dt8JcvgR
	 tRSLdKBLX6cXeSceO29JNSlfyO6RNwbi36Huv7zIxvGIM7VQdnsBNrDbEbKYstrdpo
	 44duzcAbMgpUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB1EE6FE51
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652683357.12529.326451014239511879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f5f7350e1f369694e01376d2633e9d72bad616dc8b0a1b8647aa851971a88bd
Date: Tue, 23 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766526833
