Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47252213E9F
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761614994; cv=none; b=E9zetWhZf7sJs+Fl1vV8xvh+MHwETQDGbrBhOHOa1bKeOOkZN2mwAPECVjiKGXSRyku7TerqZD+hGHB+Wa81dA6hiKV2QYOPYFZZEBNpwicxXAccuGHqtsY+bLvZqwHRCuK7RE9ET/MsQ6qlekOyHwMKTYCCJxwIASIp47as7UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761614994; c=relaxed/simple;
	bh=ZqE3jjhC+UcS5qDl0GJedH1u14Eg1UouAVSniKSoUKA=;
	h=To:Subject:From:Message-Id:Date; b=H+cZI6yhstygscFUoDrVf/Kk8dKgmXax4bRIqEdjzCMrDJdNfyneNRxlo4jrhd6uawK978Wa9/88+WRUOe+eAwn/Aw2gYSa9N5W+DmziZrPP7xAxHw2roQD42G2kT8rlSBbTzl0iZsxCQ+97pOxSooBYttsI9px/RrcT7XpKaN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVCnjF+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVCnjF+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761614993;
	bh=ZqE3jjhC+UcS5qDl0GJedH1u14Eg1UouAVSniKSoUKA=;
	h=To:Subject:From:Date:From;
	b=iVCnjF+wZVssb5Ffi0aAIH2fHmChnglZr/hJQUXlPd5ffuum61x2LiOJWmbF/ZYIN
	 eW3XMb4sGtfijy/KiDw8PNvq+bQcU7Ax9fEKL51F3M5/NzJbfyHyZh+8ZcB2xD+jmd
	 UjJyy5648lwwblcuSyep8m/2PMUYmwnY3fo24eByLM114LfYqltldHnUTlCSw+WQ2C
	 Tsig6BM19pcKIkwOat2Ns5UhLwbbwzi01d92Kk6oOz93lfSN2JBWs2aUsXG52PrA25
	 7Qys1gXWbiRBYCHFXh3rUMfx3jqRHfetr5iwT9r5U0i9nD18fHriiqnnSN2XdVHXuD
	 FVkokmOKWiJdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F144CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161499357.11353.1354014327779002474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7c0f3136c226d1b995dbf78888eb9154f64c92d21089aad164067063a17312
Date: Tue, 28 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761614993
