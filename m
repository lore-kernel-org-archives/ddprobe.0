Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704B84F649C
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790775034; cv=none; b=Dl3Kq9lV83g9kDYJXoFL3Pb3eQASXTI90a29/mxrT+ex8k5F4BJzEtlLYKMW1fynipogoEvjv+L1VF88g8DmmflkXCycaMqFqDZw1x5hWQ5Kk7+owPfQuGWCmUmqF434YXDLxJML3L+UgUBCQDtsiZiIEBqJ8TbW/M/la/f9oQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790775034; c=relaxed/simple;
	bh=k9KsE2JLTtVuautJVclz0GTJ6mhAFLXCYH+pKvfqbqw=;
	h=To:Subject:From:Message-Id:Date; b=CnQVLY09DOc4915HU1Dr4U4BJG7KJ2yhXZWLI9r8pGRB5FlkkeLwDg8r+ka4GuIhivsD/XdDG/zA0czvkQqM5KyXTW1Q7GECyhf9IyQrY4QzjG8KJeeakH9QoYNUEgpPEY9EcemJ00ggYgUM2tm67DoIDzi7XTBaCB2PAiYCnks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5Oap2/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5Oap2/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC190C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790775033;
	bh=k9KsE2JLTtVuautJVclz0GTJ6mhAFLXCYH+pKvfqbqw=;
	h=To:Subject:From:Date:From;
	b=Q5Oap2/+uQ2LgM16Xz0+H49elLXcT8rvB8iAMaHjixqdzSk0cU4SUZRUN9UHcoy6O
	 Fw2XfPq/jPnZCwofomzp5T4T00vgZU9Nbq8G/so7WOVDa+IZC0STeuQPQ7XK43F3dX
	 bFNgocO6aVFVEGice8txdhYtgMwGT8ponpgDl1aGzFgOfhppZEZ6Eu5VYfK6k3QyH9
	 iMvTGvJut0LDin+vbmNuIbdt7H4rr4m0joZln57NdJIgxoetGbKT+xd7AafSmG6eg0
	 LJ97MHxA9DBsd9eSQi2KYi53zwCqSKimk09CygeWBswONJxw6dd6iNhzqmZOOv5QT2
	 +gN6zViScw9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A10CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077503368.17690.15329175852153229662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a056137e06ba7b2db33d4a930c851d54f32df14829d8d54b7637894afd37e49a
Date: Wed, 30 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790775033
