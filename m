Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331C084FB7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717454123; cv=none; b=Fu9z9Nw3CkG/Ls8TfJQxTKbjCJ9wKaHM5xj+LJwA52ppm2v+c/rOPGJE7thGyG0sagJB+bjFVtc4GwB44wnfyAmnXrvm3U7Zl4ehs7SgWhanUwXnn/lSuv+D7S7HxjUrxQ1XefnGMb0V9Cb799IGxVBWvmJnvFrxWgp8lsNB7Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717454123; c=relaxed/simple;
	bh=tQ73FM1H5xxMLEGlfGkgbD1TNxUkrHfbj3rmFb1KE3M=;
	h=To:Subject:From:Message-Id:Date; b=HsEbmFfQp6yB2UPhItcLA4yyj9s/ikZ+v58b5rspaSHt6qF/Nz0Q1tQ7N0GsgMd7s6/KvOseWJ6oc093u6+J8uH7pfFsTykLmRgGjsmFZVQC22OxAQOc+cz4erfwKJR5VCkoiEO1nPClDwatIWrKlmw6Tj6+QUF5qFIgCX57npo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cv4wsZnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cv4wsZnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D528EC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717454122;
	bh=tQ73FM1H5xxMLEGlfGkgbD1TNxUkrHfbj3rmFb1KE3M=;
	h=To:Subject:From:Date:From;
	b=cv4wsZnr5TpdxDYAYcWVVR9ETje7/Y1cnGWM/NSbM2E6cq6YTZ0WD/cLZzh2+c3jH
	 cxYUSHGnKLpBhSxyDR6zL/5Vb9vuQndwGmy1AxB7091nSUyeAER4CHcbbJv7jnG57U
	 bCeeoV26mOB8Ki8cFAU5tYntV5cTski/4/mxo/rmRXtF3TYWcSIDxebn0Z15a1kSOo
	 IBQ0AOicWtAVNVIlhVX+hkhD5mT6B9A5+S41478MvC2YWUXvfhtmi4syytNhB+bfJR
	 9BrxTcwjMRca9gGiC4buRl5b5FDk2vS5Eii3kERiZJeFkUw1HpHaEX7lsvtDsFregg
	 dEx6hiZzxEmzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05EBC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745412277.22441.11123526241221565169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6c0f89b5c0a39d5913733e83df50df8fb381ad3abee04c6f9ed0efe2d85f5a
Date: Mon, 03 Jun 2024 22:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717454122
