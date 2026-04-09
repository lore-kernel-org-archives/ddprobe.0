Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CB3194C98
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775693734; cv=none; b=i1Q10yA6PSIMlPYQIfWz2vj+Xvgc4nuoF2sUzPbpYpZK+fipta7W28bpticmvUou341YV2Z040UxzLUmzszFY/8cYH9Zs8WKmOhg8InnlGyEPhl5NgMR46UpCssG3CQeH89j7VsydGru4IwVCK9iQSrQ3HUoKgpr5wbq4zAOGhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775693734; c=relaxed/simple;
	bh=jqEYSnPNB/jOvp6Z6PoOYpMztp6xyHuTJL/uvTYB79c=;
	h=To:Subject:From:Message-Id:Date; b=IcLKDJDwWLlCxJ1kOfSZrmTB0WKSVuUub8Ov4QYzphLqCqvCOOJdXXpqrkNhITOJ+tfGjdqY6yXaMR5MFUWlYorZRpcWdPaLkzr/G1fUxyxRrj6RgLFioP2AqtPOwPVOaNwJ6NeVAzYKUOrvg6qXMhtYew5ll2Xk10Fnukg6eA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Occn8FcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Occn8FcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0FAC19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775693733;
	bh=jqEYSnPNB/jOvp6Z6PoOYpMztp6xyHuTJL/uvTYB79c=;
	h=To:Subject:From:Date:From;
	b=Occn8FcPKQ7jgIZimTYIV/wcvYgvl4rJYi2Omo1fTk4iCCthOFo9HMUGzHNL7O6yd
	 DM6SwmWdW8l+NiSOFxKFVvXcsuPvJ1RTyvzgMERuOozx7vowHr9X/T75q21bsvlpHj
	 AYQY7/fv15spghZZv3/0BTMiEHLjTleKfWuVnTKw/fPE7CD2t8x3WSG1DnSF6xtrPo
	 qF2x8gyTrvYO0olsU0BIfqrebUXWVwclWEJOK3yoXHWjUQ7/ncBrGiEsrx5FRa72PB
	 7ugfQfslKFgHflgtpyWNigUcqclEGd2ZJRy/f2S/vV+ZuUu0BhBPSoVB8RSqewhGFI
	 5/jUao0yOA1TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE0A10FC460
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569373368.15666.15017457631138567411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403d521dd130f395574892a78e838445f8fcb6a4d6a04c3e9581e372e05a21d1
Date: Thu, 09 Apr 2026 00:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775693733
