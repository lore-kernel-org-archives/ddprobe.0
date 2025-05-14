Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366C84C9F
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747219794; cv=none; b=in89dAhkEjmBn9YcxfJhyqy842zBu4Cx3QlmXBkaq/yX76iSwHB8FpL3lwN1igTFTgenmSjW0MoQk2rYsDfLNnuRH4S/Gw4JYs7G0cYO/+P75JoMl74RGzfvnQY6bORkucRhplSwBrCBKGyaBYymIzLQeh9QX/gnau/U25/zy+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747219794; c=relaxed/simple;
	bh=d2QboaiznnBI7tiDAVNDUHZ2GeFiFzq/Z3ems+38j30=;
	h=To:Subject:From:Message-Id:Date; b=nZqOCOyApBXel6vmwkbyupeSxzcnhYs/p72+r+i7rTu7papx7y0UvUQvUc0kWFb7Vj76G4M2Tzji72Xv6NXFXV0BPBZUcKLfAk4nglOaWxGYIRgBfwJ2jhFZ5BIscLrG/bbVa27/Hp+rkaOQUX0o78foQ09zesXAFD1bK/7Safg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCsx1+TQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCsx1+TQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FADC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747219793;
	bh=d2QboaiznnBI7tiDAVNDUHZ2GeFiFzq/Z3ems+38j30=;
	h=To:Subject:From:Date:From;
	b=SCsx1+TQNFA3C2PyA44m0Fl2oN7D3N2SWbRBgI/p5lfQ0uACM0z/yNDsQO03gOrpZ
	 YNHRJN5h47hwVg+H+8DGn8Q89+XNdmidzueZXfmkMLMjw9RiH6c8qeA+Iy+6ZoQlDF
	 wFsjYoMVqpNm6PHPF+xI7bZST29fr4P4CxI5fIqzFrtrXAAT/ctQW7fuZGX/roj8xo
	 AM5mAw+QTwfvLAVERNtJ6GN/8/8KY22vyXi43T5qMTG7Eaq4DhD/9tP8MMOd2YxiJS
	 NqbloGNJ7DhmeBF/MPn1fLYcXgWBsZS9KxRn+RLoY1wtMkxL4L+g/lH7jVoHhAxeGc
	 ME0a4aqCPjc6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6ABC3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721979357.16566.4359209820816494139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59eb8ff8da7db298f77cc4abc701796b59f5121d14cdc9a2e8bb77929a27a7aa
Date: Wed, 14 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747219793
