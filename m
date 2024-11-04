Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2492B1CF96
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730742354; cv=none; b=V717pW1DyZa/G25k2j9cUFeItor/E4NVEumtAcFxsTMevTrMzEMmMdKsE0nJe1ozK18PnuHqxj7o36nBnJk9BSLxy5qE+9iiR7HI94F+hOy5wQ4ttjZPZ6qBSByB4G2jsLjNaoq6YYYsrlHeBaJuUQAS3D5VRG5hUsugekDAnig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730742354; c=relaxed/simple;
	bh=c/iMh2WYEIFL5lzQDMXojvHnXa6EP0qw+hANpqnlfiA=;
	h=To:Subject:From:Message-Id:Date; b=IdjGAHIsrZTFLe4tkyRBpghfEjjsxdFaqAvyrFH73FDl+/cwr0JlDMy9Nb607VVDpVjLAjeV1fTsZXwLmYeXqJqnsBFIgn5HktZX2bUM0Ve/viQIA5dQgf7Iat9s70IcHvZz8mTncG+IrJWkPCiyjWYLJ7mHl2CFqX7bvHU08SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj9yUytX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj9yUytX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C94C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730742353;
	bh=c/iMh2WYEIFL5lzQDMXojvHnXa6EP0qw+hANpqnlfiA=;
	h=To:Subject:From:Date:From;
	b=gj9yUytXAw1yUdXUJV0EHcwLsyXX6DzfDWVMfosl0tXGkORDYVqM0KaYagKCy/S29
	 Q96qCqXjsk0sZp8pjRXKLDjk0rKpLrzFjITwRw8QGFd2/gakfLEx84b3qJg8a1wRwz
	 wvhSVDJHTe4BVBHOjhJHhgdpCbUYzqS0zq/QaqU/cmmk+xUU9HfYLkqRM3wQCZS6M2
	 HqYSicpsioHxUOq+Oy3oDvFeYPCcRnheHfuY0MB2KhDiJut0uY1FrkiC/+dNJfezoH
	 9TVCxN5QZuDtzgxIEduv/knTZzZ1YmScZMtsi7qTxDjhBg48lFjZwa9X1tBVs2Q/AQ
	 BkGT0/DkF9uaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96647D1BDD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173074235360.7015.12261057871201566519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d682313e8b97cb66631279fd8cc29c375ae00a06903d64fd90405aaf6f55bd29
Date: Mon, 04 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730742353
