Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCE11DE4FB
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743368994; cv=none; b=inaJKZm5wI2zGfd8kKiOaZIWhXoXB14jngor5QKUDTTm1nzVB8Rca7zD/Kz3oM8BSIC9ymwYD819BD/6bzHProyKnFrzlpnkoA57hJSk7JJIALdZJkSyofe6F/qotPokhdvNCpqKm9EQdBad9Qg3BWJzV8VwB2p6BguPDGNN1A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743368994; c=relaxed/simple;
	bh=I0eRXn3EWchhxDOYTM625NQHFzQyGGRCR9mHC+SOQSg=;
	h=To:Subject:From:Message-Id:Date; b=cFq6x11jbCnkbZTvcWbFr4U0HJGDSbHcdxoiTONw/dt5SK/sB7B5YVBw4Tsrn2sPw2GXN6VDtLIEzNKj5YUYN+GDPztrN3tSR8uA5RtkkLIfGNRt6/HIndTSPR/VLkOkuYVlrqRadyfSa3F67XuEbO92DReXf9Dcxly7en4DxqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D721T6K2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D721T6K2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7986C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743368993;
	bh=I0eRXn3EWchhxDOYTM625NQHFzQyGGRCR9mHC+SOQSg=;
	h=To:Subject:From:Date:From;
	b=D721T6K20U/P9DFftcZkBdiR9LfwwAcWuCSKfrOazq+HU9jkpCaxixQfn5iAJy1AJ
	 dgOcknTDWv076QzhzHxJQKBnPlDyhc1pxiKRFzXNqRpMlBQRfmR0YIBuXsT02H8WH+
	 lIzejrCzVVCVVQ1KkzrCllgVJYFncIAThavL4QsgxWLe78I24r1YPz/OwH7uqFARgi
	 yzHSROXM+sirJzK5MrusCKc8aKJnUg03JA9Iu0ysMC4fKxwDfSVlElQH6i1WA5wPtL
	 yuW7W1E78BQQhFVDFVsKy283vMz0DFOIaUbTihjlxGO2Fka47GcavrlozEmyA4tEn3
	 QVNUFTmUArJuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4F5C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336899364.30754.17032459652684529242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df7d1a3297dc1f231a065d979b0d06352a552e89ac045df97ccac6e152b20ae
Date: Sun, 30 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743368993
