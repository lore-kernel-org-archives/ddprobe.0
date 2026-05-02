Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C34175A92
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777721854; cv=none; b=PM5YA1qld4OXEKVe3DuRU5gkPZQaja6ALb4PvvHYMxDPPUo5WIubavDucp+qXS8r238qxuNNiN0UBiCFIw3QazBSEn5GDc68xC74EWgP2nPMyeCpuwwsvGojclwkT2AT62k8WPyERIMkf6LpC6SMgh/KPOLlMbeow+1RIhy6pT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777721854; c=relaxed/simple;
	bh=XUs601a3VdWN4a+HW85D1VLT+NFhI9monxBUIxZz8gc=;
	h=To:Subject:From:Message-Id:Date; b=kHB/2+4mxT30fdDvZuTOXjpo22wKETvw6PC8hJlDy3C0fhApm0rsdxlZZy6b94jK53FVv83qcf3cM5k5Tt/hNB/p3vL7Tkan01a22a1KMowCB/YGRrhQhkfYyqMncnbuAGAuK6YYCMw9+N/4yvNdhx4qgxfzHfd7pcJMYFKv/fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvKz4cQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvKz4cQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF2FC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777721853;
	bh=XUs601a3VdWN4a+HW85D1VLT+NFhI9monxBUIxZz8gc=;
	h=To:Subject:From:Date:From;
	b=nvKz4cQH9iCdeLNL/tY/YgQGwpnfpRdCo6i+RpP0erDgtTxTeOqFsy00vvo3YEzKi
	 p+VOfCR+BNn25pD8scqeUfDNhj+yUupKIJ5/mSzW8wLjyynsTnQW9KFjNNLa0UaGLr
	 837pao1B2Pg1bn72qvOk3t/j6P8EU+uvWL6MiBQ5emsEn+3cn8h/D1iQDm4fsWPw1b
	 QYeHE5Uzk3FFRV0OMu79090qVOBLBS7zkxOnCfMf/qdrG5vA+2uqWQ+nKf5kjIwyBf
	 KWC4rwmCGQJIHqkG2TE5/4YQjaMrF25Wua2IKQBfzYj6ZkS2FZWPyj2smB1ee7W8ih
	 3q3+TVnGJYD2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB3FCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772185368.29272.2875436629111441784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b0353327f94c06cf977210044b5e3eac4138151d12216cd1777e16a9a94ee6
Date: Sat, 02 May 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777721853
