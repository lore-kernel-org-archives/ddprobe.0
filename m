Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E9E3BADB7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786643434; cv=none; b=fUuS2p/UAuDatwE/VqslkcfphmDCezEXcBq6bOYONaaBB3BHJKByr8dBBpId7xERyZ2Fmh823BE+1YB6YO/+WctXKdSDV9efI/nVPLsALNJy7QoHY6R+BmyGXBMzahz4LE4S92ifnKKiU4mP5mmEQ6xutbFsFMbtm1aSgEaBRfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786643434; c=relaxed/simple;
	bh=IRXAkBy3pdL1UTvQldMexf8q5MP+RHjeVSsZvf/dKHA=;
	h=To:Subject:From:Message-Id:Date; b=fwEvE6ZoPBsPNA+NC9pOdPdwazw714lRGN8D4JubgKVvofEels/zIvc1q4sOr7jjuRJyAK8UGK+X6MSWovP+rGxMjuqyo8Nbobvj6qvZVxl2k/bGXyHE2cyrxwPuctC6VyIt+Hvls4/1kzHdWJpzf7p+F+zxUE+utTCn9WckdK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWkIWO2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWkIWO2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0EFC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786643433;
	bh=IRXAkBy3pdL1UTvQldMexf8q5MP+RHjeVSsZvf/dKHA=;
	h=To:Subject:From:Date:From;
	b=LWkIWO2w+2PJWZsk2E4lX98qFx6cemyvQYyHoSlKA02KtuiqM1ROAtW32hRm55k2A
	 w/GTvviuKbEKnViRFEmVupeoSGXxJYu+qmwn1lje+94hUmzUXP0dq/rqilRip7+5QQ
	 9FPNCrhGIbggeFFPWGENzBgnIEcREeU9l2qEpT0qxL8Hl7Vph8h60pVg5QOPPMlWBr
	 NL0j2DU5vqkHmxKJfCnY9l4M+3bWGSpPP0/qQ33jZ9jFiI+BFbWDlduTnakCy/t5py
	 ZG93CJ9ZmPyzZsRIeif+tLKN5PXmhIHRWm16wvemLdTzHEBGaWiWPyJi2uHNJAXGCd
	 ksNuRDtszGcHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79A4C5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664343367.5974.2239464650721724458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08c89c2a8fd0a48e1ff0e2cf182342a722406ee714bce3801f3b93ea8a0a83e
Date: Thu, 13 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786643433
