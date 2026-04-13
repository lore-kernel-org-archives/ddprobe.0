Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB60392C5A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776072454; cv=none; b=dG0oHsJphMcjAWRpeXkRkZdWl5JIJgQ2BgPVA14P7iQatro+B3wiUcISrIAmN2u2n8joIZ09P8ndQDTVyX0cE9KT5oQ77poVExrZsq2NTYHqRT/8valfLOw+Efq5YXJceJOz+jCLdHWsdDynCjXR2Z7HOm6TfNNpfQpfsFeLrBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776072454; c=relaxed/simple;
	bh=qyRt4LkL57QEODzvRl9Tu46JXKIVletAthb8r8fA7WU=;
	h=To:Subject:From:Message-Id:Date; b=lgtLFwn16kfGDuBzJFyaFH2iihbFuze4x7o0lDJkV8o86pzRn8ZlC7NcaqvJWadgoDTqoagnpONHinZYn5GLOCzE6giF80Z4+RX+eY1Y2TlPmbm8eQC3wY3xNDM9JjgCGiNiuTUjr6lDzamNrpU+ehF3qkfrfDKZl7HLk1aWjKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkGK3HkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkGK3HkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AA8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776072453;
	bh=qyRt4LkL57QEODzvRl9Tu46JXKIVletAthb8r8fA7WU=;
	h=To:Subject:From:Date:From;
	b=CkGK3HkWBmptDzhEJKx5/M+/JtGLX4KhapSAl8eGEfANsZYHENXoIOGnNPlL36szz
	 SETjg4r6T9+jVNHrHQtkJAogyLAOY/v71INcMXLh6GnwseWOWACB4B/+YCfajM8ZW6
	 d8+37mNw37StwAu4eQkhz97H5lIVsq7XeTTnSthpb6QBKlP5dT/ZRMu2BAQpqVOkxM
	 j8YoemYVi7bqn6iwaaPAQDtd9FuLnQhqOXSNfJO9N+A9GrW+bDylts6LYVQaMMyaCR
	 ugv9kIy/l/yHlyNmpIxSpLP03OStc57wSYUiB/MSWX2n/tRZxj30oTgmV3aQKks8Wm
	 mUlpaBtlNupmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9766EBFD21
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607245368.14465.13093851047872175648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c76b3590383de1cb28d303aa1649cd8197d0037722dbb5777dc15ead3840747
Date: Mon, 13 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776072453
