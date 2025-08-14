Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FE01C84DF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755136193; cv=none; b=mHsYK9C3Ls9ZHZys9sFMBNoByVkZSd5W86vi6O2mtKuVsHwuGQ25HaPIiF0LspVMUCxziyX016AsVG9G5iURjOTbyp49orrPuhMoP40yOcFa9UZx7W8o8aaGPAwbTSnfOrlcTHHsxdy/rcIaFicf8YLRfeYmqYBcwAIWwYyyDUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755136193; c=relaxed/simple;
	bh=YUT3DOe7SdVtAn6QDiSN5Ek0cJhV6iyXl52XNuVAD1c=;
	h=To:Subject:From:Message-Id:Date; b=XiPqcoHEGoC4mlLwhffiOaLmaFWoYroBYarU+q0IpGst6H8khu6HA9kiBzleZWjkOuzqrcZSkIk457B8xpfSHqykwmhjlJ4x03dmUKE2JqdTZYGVpK/Y1duUyzzHPtqQ9lJ3+QiYu2rFyElOopVcCheFnMhSvRV+lafAMK8ATfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZ3avAD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZ3avAD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1328C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755136193;
	bh=YUT3DOe7SdVtAn6QDiSN5Ek0cJhV6iyXl52XNuVAD1c=;
	h=To:Subject:From:Date:From;
	b=qZ3avAD/XnUUPhDWDzk/UXh2t1j/+H7sGxNCzPDc68NoNhlB6KkRroHhf2G28BMd4
	 2BGxi+2nSrYjRkmsHUzPMKL1JC9aR6zq6+3+Pk2tIG89ivvHsEdCcKqkHWlQOgZ2p9
	 kxBAaQ/hmj9PLBz+i9iyulu8D4erVJ7gd56NC2snYnYPhjSq30WkK78fLDFaTUD4av
	 wu+fzoPx7Moy4GpkkzIb9wW/oMdRVs5GhJRYpBsvu/aw48A42CX7TgjmF9l/A/OUUK
	 1gb8ZJf2DDr8MPrSKeRxSiNsidCNJ/r06t2jTHCGEDsgU9LenMszabZch39Q0XYp0p
	 LE+9PvvRU3gqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922F3CA0EE0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513619357.11844.15006993362333790462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cfceabba826cbfe4a8118f14d355c70a6a3c3c58fcdf982081238e46f63824
Date: Thu, 14 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755136193
