Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F7E2E63C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767576234; cv=none; b=oeFo0EP5ClXYbawxO3Kq3B61KGnmQizIDjT414xaFsloo94SVXuliEIU82smuasqlUYajXne35bCd4N6CoE7Pbi3eQJIgGMyzXYlXXcgdgEKFAu7/vbbaccX+4eDc5h/iNNTj0FbovVmcmssQiL2Y41+hKz7oyI3j9oKS7E9FZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767576234; c=relaxed/simple;
	bh=co3wYJ2BYIH6KMU3a4bjODXr4KQKB1X4ymihtaZS4xs=;
	h=To:Subject:From:Message-Id:Date; b=uuD3fy+5DafKviN4UkB6LZ8v40Vd8Gzz/bSepQ6K+Rx4mt5G2GvLsueM9CKv8yT4kq3pp2OdAGfOwY0/LPQwKyE6tVHAZDztUAvaS0roPE0uaW+UXPk0kx14EDyQW3udNo4zscSg/tYMKvN/YXj2UIblhXvcTBua+xJBKPmy2S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+KE6e8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+KE6e8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1CBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767576233;
	bh=co3wYJ2BYIH6KMU3a4bjODXr4KQKB1X4ymihtaZS4xs=;
	h=To:Subject:From:Date:From;
	b=t+KE6e8v/PndBkeCioViy+A1W6bpy/dBjo8l6Wt03B7UvdvACrilHyMefWpJpCX+g
	 5QeDIWD6+MWUxlGpP8VsgnAUpmh9gno+LSoVeoWswLFd6cKPgdDpaTnq/1tI8ypmMc
	 p5DnAXEPVKns0I/GpnYUim9gtcsOv1IDKXjPDx1ONg+pLAxy91Ry/y2wsAzAG53E6H
	 jevv7tC2nZW4FGPgsyp4o0561hFtmuAYBXKkuUGbXn+lsGGcDgZcJ+tLegEeDdwSNc
	 mheoBT/IT+KLfNNxNNUOJKsIi2K7vvPg7HZuI/LZb1u2Yy/VjJ8fcFcmxxJj+bFC5B
	 X/52Uw6A3Oi0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954C5C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757623357.3268.15214335868005732027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b767494f654c485f1426b753b6dca97cf0d2907421bff54dc1ad20cb460ce61
Date: Mon, 05 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767576233
