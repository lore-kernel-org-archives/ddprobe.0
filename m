Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F18A1E89C
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766828034; cv=none; b=Ix9CyfbxK1i0gR18DH5ojhL7HlWpRZZBd4mrdQFJJUq5MVmJ7Ky/VcIIxPiyZmlUFrU6te4wETiPJ79LCSaIAFhNnaFD0/9XAUTuZ59Zn8qtcoG84X2WLEFQfx08sdmzqp2/mtgrM10ZM37C49GfyxV3iXI+cRGUahnK06Tl8sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766828034; c=relaxed/simple;
	bh=cERf7uPnofOkjNJle9lg3EB4w6MJuOVvbaBVOvw/o9w=;
	h=To:Subject:From:Message-Id:Date; b=tUnfaSBn+7a2KAEc5EH0uol+EgnkYPb/oIBSJOQL/cs4pqW6rP/dFh2CKtR2dSRLLnXt10+NoNhMuWhPPAlNH6N95YlY4js3L5LIu/ZeoZR4Fk9EnnUQboKp0k6akkp6/lPcDoSt5BgVWNd17epDQJzWW7NVAR37cMfWA5V2iis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHBZMl3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHBZMl3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A76C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766828033;
	bh=cERf7uPnofOkjNJle9lg3EB4w6MJuOVvbaBVOvw/o9w=;
	h=To:Subject:From:Date:From;
	b=aHBZMl3a5nSSCjFf9+EbYlXj/NAflSk6zfZ59eAAFJm1Jh2rXpmOPkfnC/N9V6HCQ
	 tcpENR1FPg705hj0NrVSERfB1IvqFGBKLdq/bicxyAyNFpC4TuB9tnuSN5g5Vh69y1
	 PpYCmzxknB12zH+WzF6wg0hGRzSrzNvxsmdBuEBElihQMwIxekYp2estz+vnL4gnlL
	 sdvqCTknRp5/bJ98bo2C77F9Ju6XdjLMUe6BDearlet0oINp44yocJfP8H3xPPPz/8
	 3Sdq5G3CDk6ZeshCG97WNkhZB28CDRkj+YuMZzYd0NZXQ/IxvuROH0+QlzMb4Nqu7i
	 OxoUquD87h69g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DE5E8FDD6
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682803359.24781.4528964007804452642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33de7199a3daf254b4312db90d315af7ff5d19a5ba9f5c0b1a0d3a149a234e7a
Date: Sat, 27 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766828033
