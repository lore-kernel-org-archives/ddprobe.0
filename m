Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3752F3148D9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758293994; cv=none; b=tzj1RtRGMFau1NmNlysXKdkyRPepv+8RRnQBFZVgJW/da3C/gP5rH3XrzkE0Z+bjQojMHypc1nvEVGnkG8Jln0qgH5i2842RhwkdTyY+rbTTurp9dQ6hcGIp0QNACaN2dcoLV7xt7cpNf+xms5EdWKQl16JNgRiwdEs9QBFL2Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758293994; c=relaxed/simple;
	bh=5E6TAADyqDsFagMXs60PeyMIlvvfjCykFjIuqOcaTM8=;
	h=To:Subject:From:Message-Id:Date; b=snfkf12LbU9WkmKZvEXXUGLfutBCJeGau+7er6vCHrmm+Aj5TOTP/gw10SB/YY7BmLIz0CYBfGntL0qp/d98OhGiQATJ/5laUBq0VJif8sa8MQ+1g4UCnyerQn0UEnfKwSGM3Sn2j/+AegOgU3CpAYH4dE7lznKZmHS163Jb3Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2Sp90I6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2Sp90I6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9886C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758293993;
	bh=5E6TAADyqDsFagMXs60PeyMIlvvfjCykFjIuqOcaTM8=;
	h=To:Subject:From:Date:From;
	b=J2Sp90I6Qdm8hmzDMJFantAyCbFFjIISHI/oGqJZ7PvU8Xog2ypVbRY7M6IopqTlq
	 H1keNQA3J1/+VH9/ytc4Xqa0lM5B2JqgB3uBD/zCRvpmd8ppGEyec6qR+VTXnpK5e0
	 g53ha+m8l8a60/dYSABKPKWWqVgII/Y2YlUBB/w4KHCXiQXS66W88O+WxF62GX65Jl
	 MXVXByYc/A166YzEZZXSP6Z1jhBOljjxlHtHEW4XK2VocnuGMi4W8aChdLVNoSv/YU
	 FXqea2K0Un8775qIAm8CZNA6rKrqyp8iRKAFMZ4ymcyPKXGPy8OKi/TRNIHdwhlncs
	 uLvs+0HvaE0Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95912CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829399360.16454.12349679239284115936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74faa369b0bd37ecb196495e2dec1fc8840bbab4f03bbebfd50dedfd0caa55a3
Date: Fri, 19 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758293993
