Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FFA121E098
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763551914; cv=none; b=LBQZ9UVNeZw4y0DU0BVrx++pJaEtO+X1vKZeX1ijOrN1hX4R0yAmeyGD++tGl07zYpxUuvAFxNFBEAgg3zfHEwcxmQc9GN/0QN+iOSAWYHNQX/Wa+NPahfYV4002uP2hZkhtWtkbmr9okxx5ZXCUAogMFDNv437roOCS17qFXWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763551914; c=relaxed/simple;
	bh=/QrodMED97N7J/gjLFSBm4/MFedFiAKaD+osIvc7d7k=;
	h=To:Subject:From:Message-Id:Date; b=oAz8s6N7yFvhGJbItSqUGJ8/38xKFG0PJ7JtC0Tgpys00IoKt3DOnYBUYrps0jWyqCZLOnFQF7CGWO/TsxdF2U7QcejUumLQx+uXTqz7D9sYm+t/FFi3bmUlXhHZdq+GUFy9J1camyZd+XnJPgRf8w6rE3ZDRT2CNcmM5YBhxpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSTDFSI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSTDFSI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED365C19424
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763551914;
	bh=/QrodMED97N7J/gjLFSBm4/MFedFiAKaD+osIvc7d7k=;
	h=To:Subject:From:Date:From;
	b=tSTDFSI8muxY1YtUEOn9yrPQH8o9dw9hZpboB8DdX1a12Z1C1aUqCYcKSpBQoTsAS
	 kYPl7Bx3RgqNtnHzWAyRpdu5/HE5vdkQ+yXaBsJ4K8eqSOHWkroY9ZeU8qYbMqlyXa
	 YaX04EDpyajDMa28Ji/cQJaSn4mlu0khhqTFzMUJLPTvQ5Za64U2HZSNM55Q5HyFAr
	 KJ48t7HHvybDobA5adEmqelKuI6W8QLhPOLgLzcIZQTz2uXmB3E/IpuRMM+URMQszx
	 N2roj86Pk8HSNNjcB+nV08XsoBi2WzQ0tRntXeLXqqquxHr6ME635qpQJeElSJG+fC
	 ++fUsZ+SfDSjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CCCF31A5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355191358.24373.15761298670600053083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3bb88fcada9163c5cd8d69f54ac8316f629239d7973b8a081e742ef5880d7a
Date: Wed, 19 Nov 2025 11:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763551913
