Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397DF2DC782
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746086395; cv=none; b=b7GEaBOPaNR6k6Zo4X4QWQkK5WCXDHLOndFzn1v8DiK0vL7tQoBPJUHY6u3t4WXgqThF+Snhu9M73F9MCiBlrHCdBdYx8l2WUIOsNL4MnEYhbe88iJdA9yo0vMzgjT1Lb39REOiVqVwy3VDZ4IJmZpiOmJ5iPxoTvLqSJ33E4ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746086395; c=relaxed/simple;
	bh=00tEsibF92LP7VMyckJcH//JhHE/6Fc8xrXuvIgdx3U=;
	h=To:Subject:From:Message-Id:Date; b=Oes1E+yFffzjeCVDkmAQxXlpLIs5AGj2KwtTvGmlivXvoZ4Gj6CgPPqD5ODh1WOcf9OcE9PtVvD3awFXXHiul8aSkzW5OhUZ0Az+/kqAxU2q26a5eJby2Jial6moWJ7qF+pm6oSgPBngZBP9tuk1WO+6Zk4+BLHcKXP75DhxEr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3ZiCwW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3ZiCwW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A109BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746086393;
	bh=00tEsibF92LP7VMyckJcH//JhHE/6Fc8xrXuvIgdx3U=;
	h=To:Subject:From:Date:From;
	b=c3ZiCwW2DlrSn//PuKQjKUd5OIMmpLtKTyK4JTdOfF6YorxHWWFu/5alPCio99tfH
	 Od64o8zMVuhrxv23MXUuQ/0MtN8fV7z1ty/O807gq6d1kt8i0dbatS/o5aM61OudNj
	 f6V1sdMoFne1f61B2OrAQVwhot3Q34vQu3SNp0XSyps9RP2BQnROhyUWI+qzMN+5I6
	 v0hjzbcqSkFE74jmgxsY4xxyTxMgEkY+s9WAgfvm7lQl5Ah4+1mJTk406gEzLZZf3y
	 9vyYJD0rA7+kPys81/OPi1o6P4ojZXUxWuDEREZYn9VBw8YXNFHUCDc5XBKyIOTB1w
	 jdsFUmfaO4Bpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F7C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608639359.7230.18275575604091689455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c43ccf0839fd2216efa15446222409fdab7561bd3aa2cfea07a8b5d1962880
Date: Thu, 01 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746086393
