Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C6235C6B3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787029834; cv=none; b=ZJCrtzamn4OPbZ4MNF4YfXZybopTIfraFw8Bjdh5iPVgIwy/XLSqCW8WwoiFs42OODgo0gbKuOaYKDwWoD6wD+QJZFdb6oIZAk4uK69C2S7+9xrpQCDqKVklFTMJlt9c4U8qoJfHwQxOR+W0LuiS7C54OBmuExi7GXHdFlyWUdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787029834; c=relaxed/simple;
	bh=jo0d0vHXJMUoN7JNDX28186NEFQNeySbnxWorQvnulE=;
	h=To:Subject:From:Message-Id:Date; b=c6orczW/aYBJbxPEQsxJVQV1J7Ospf+DwDVQS9l5Egh8t2NuC/mU+yGb6dvGDzM/8h+EQpDAiszLirdqIeV5gV1E1uCKjs1h5HVBOCW+z9mpbKlDHAHMb/GkKGGwtuEvmMCsHzD20MpvFVOTLITyf+fQdu6dw5S1LPrWPYZYx6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+36d8Ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+36d8Ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9157C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787029833;
	bh=jo0d0vHXJMUoN7JNDX28186NEFQNeySbnxWorQvnulE=;
	h=To:Subject:From:Date:From;
	b=k+36d8EivfdibRNRA8tIFHV7GEB1McyHGfyeTe+nAJjqNoFrsSr6p5NVR/B9/SMnX
	 mpEDYe7Qw0b7M3zWAlaWaOlmb2Bg3XHIgLn5gdnmM9hbCoKTrzf3Vu3Hfnfx7L5ab+
	 wNNySCvoMohK2xsTT2+5ZCcJHdOjK1hJrCTjUZl68QThHtYWeDz450vQDrHavsbqkX
	 uw61ANkjL6RzY1CQzW5cwZU4hnBM8HXbmXtqQO9zSv1qlF+px1x7fdQdXQwVQ61DbQ
	 zXnDHHLQ/7fhmD+MPE6lmzuyuLSM3Q/7aMKveSFVlx3NPTfvZbVz8bsWMROF5pQBd+
	 3XYZI4BDrLNow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44D7C5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702983369.15864.8039668420267578786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ab921a62f088cfd84e3c56d509fc413f3a0dfb470e26819eefe0cb73a544cf
Date: Tue, 18 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787029833
