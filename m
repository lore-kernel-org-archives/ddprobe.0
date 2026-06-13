Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6369B38837D
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781381794; cv=none; b=bhLMAd7VL3eIn6d5fTxGSVFZdF0IvNHd5R2SBMQetem9PxHzEMarkQX6sdIsy+wIPqRTuGH+vW6LScACrZnamWFv8Z2JDAWsGHxBUp9tt1qxwQSLzOJ6Y+fI4wtKuxua5xAnUcSHDYa8YysGIc0Ud3rlGH9IlhXvUGc4CCmMI7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781381794; c=relaxed/simple;
	bh=Xpmvq8WlBrK3uzEoEiDPxJ6hfPT/L3TcO7u+GWVIww4=;
	h=To:Subject:From:Message-Id:Date; b=e0EsBE6SS7JRTmL6P74vq7v5hQeA5qJDlL/a2JJlqhcZvLrhChPkeYOeoYjYkG4zDmrAtar0X25shKKvJOunhZ775nJ2dCKIjUCDAb6sOS0E/G5GnMflqElbY/dXuYvt1CMkOhDApvpbuTIvqOT0RRjwVMIytutS0domgdKSYRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfVQtJ/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfVQtJ/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C351BC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781381793;
	bh=Xpmvq8WlBrK3uzEoEiDPxJ6hfPT/L3TcO7u+GWVIww4=;
	h=To:Subject:From:Date:From;
	b=sfVQtJ/qKb3AYmTX3+R23yUFBsbS9/vtBWkoJ60u6SUJhkLVXG9TC4YA3HTAJEyVO
	 bQRLx7zR6cVgyuu0CaaoHLaMO7AgjnsuEIt/c10e2Sw4sgkvtuUz75K/2xL+hG0XHF
	 bM2PZyaSU5San5h33T3vNOcCHXVOUeVZwLN+1wQxZz77vu/dbAyVgqb1a3y2GcTwZa
	 SMZ1ah/Zpyd0YZSxjwD41zhIV+TQgXtukaavKEb9St4MKHenjZ5PG5hlgTyREsPEwQ
	 0rBr9snaaews00iMQK5qa3bozqhKK01fbnt1wj2fJPSnT3x2+zHcNqqHGFoi0b3id1
	 Ndkh4rWPJq26A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE6ECD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138179367.9706.2985855590962602585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cd0555d388c1d9d62f284d5543ea394552f5690841e2e4b2581791f69c9a9f
Date: Sat, 13 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781381793
