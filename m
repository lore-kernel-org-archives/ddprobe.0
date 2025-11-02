Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D554163
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762064994; cv=none; b=KdujhQuNLNTfbNVLNPmsK9z5D83dmssurAE/5ZDtrgnweNPd8rjK3KojXV+aT3SE4T0YjEoT0BhQKY0o5VIzjyRdQHevqH3gy2Hcons/8Cf5aFvgajks1FkvjlMzjzEDdWtqp9bSy5tVKS/OEATxBoT60o+scJBr3X2La0FokNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762064994; c=relaxed/simple;
	bh=8Rla1f8ET1fKzpauqxUO9rUHtCeVf6ipAUXLWQY3HlQ=;
	h=To:Subject:From:Message-Id:Date; b=hzctfKCCP+9P2mckIDizCBVxjiG1Z3hzQ9aBlUC+nbz1o1z921nxbAjBYtrmmmvWl/vlSDPBeiAXXIXoBRxrafutP8ydtzs/UMo539BbjCRm2JtbAi7/yjjuMm2phudoZtssejyBkxn9HuPMIfooW/YG4d5ZUVXtfGcFOOzXoZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edvWTh5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edvWTh5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A08C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762064993;
	bh=8Rla1f8ET1fKzpauqxUO9rUHtCeVf6ipAUXLWQY3HlQ=;
	h=To:Subject:From:Date:From;
	b=edvWTh5iPIKBK4DFO5T0RKGXBlUpJ8Kx4SGzu9tCxOJENuhKVu+t054mpCRUKlyjT
	 qeT1cXKGqEw4/Jfm3gNAFxfmI/1cEEe3ATaz9+7LddaOZZjk33ZauXPACBMf/LlCZo
	 pgV26UoqvyvF1X3fOoINFOBaGZ18burkd1uj2237ZkEkDxnuBs5TlSR4Fm93ACuUKU
	 mlu/X/z21re9huw7azhHecvnDxHxLDOchaQ/lhLyyCyd9O8xNqUjtXaJKAw10JQmQ9
	 X9ezsKsimj9rSbzR9+GHC5mtU+l2V+zQoS732wzbmUb6H/uW7rM6A1pdQg7tIO1fUx
	 5NTnvb3zSexhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33ABCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206499363.21381.16271920077032339920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96fb32854b2a0808b91c2db7054f18ce9ff23b54534da9f32ad410b3f17670ff
Date: Sun, 02 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762064993
