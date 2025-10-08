Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE0F1E7C12
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759955994; cv=none; b=jBXLg6SOUrvbTJqqJBlzhg52uffvEOpEkMPSqPUXWR0tr9FEN96emZdaYGGfFmCecomEqgY+931I2tJKRsPAzKlH27af7DuSBv6U5dJCAunw31Gd0YbRfgvCHHyrK9VvG3950ihsvWsfSzCgCJSZVTjz2Uj20cuAW6ubSspVFVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759955994; c=relaxed/simple;
	bh=iuZZw1jHF4d90kFq95EV+/zS33vHKyTnGXjKXIykMc0=;
	h=To:Subject:From:Message-Id:Date; b=DFx4UWYvPcIdEyhncwAg3AiSraIdxU34hdA5wvRGhzpjGUSkIFmLx5uZyho4QTK1lQtV4DWXrEqBmRVkRfY0IIaT7Ivfp+4TeMIEETGlZlNMgbpD8F1a85dlLfUzMHlltXRYXOU5YzqYsWoQ71Ga5dJnvySFhye7Grr1GudvVT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8KhsExr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8KhsExr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A334DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759955993;
	bh=iuZZw1jHF4d90kFq95EV+/zS33vHKyTnGXjKXIykMc0=;
	h=To:Subject:From:Date:From;
	b=i8KhsExr78cTLNmLxvGk0ErGsyAPgZJDOjgOBazQBu/X6NBhn8oVL7YOpYQDpg43A
	 vH8GE6rJGvwJHl9vhwdoGFWaNug3AsnmwKQrbiO+lJLvEvw+e+Yk42aVt9f+vT9I3H
	 vUHeQLtwnDijHcRYlWAq21nfXehv/q/ip3vNTkG0MdhJpRWYssvAnF1pr0tiWT4fUc
	 EoAirSHOsAuDh6/1YPuyic2vj8B1Dtq2eHD220nyi5U3jVEzw1MkvihKaO2fhlc+hD
	 ZZMRM9NH2hC3S0AughUv7I94p3FSUwykgfudmDo7Ct6LeTwsIAIEe5sTto7VWiXh/7
	 QkZS5QN7rL+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9264CCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995599358.23167.17241411986276855695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ad65ec3706d22f16b868e64728f009f5b68a73068e9a14fa64a5e2711dfd76
Date: Wed, 08 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759955993
