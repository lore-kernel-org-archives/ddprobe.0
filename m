Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D521213E71
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747257595; cv=none; b=f2pbBxVzXZiqr37cKpa9Row0SHNh4RwWulHkLfZ4IwJ9K5ZUmFuzenJvBNxIDHl/FJFgyPD80UuGcOL2QKWqGvkxNGlXdKQSnSkYadZkQgy4iE9MSNbjqs6jB11g6BuIcUsx99dfmQUF1QRZIWMb+MrPEWLLzmxMC+sFi60NnTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747257595; c=relaxed/simple;
	bh=urMOnG+0UYtjWGu/myrJafyCuiE36mtbW4dE/ahlCF0=;
	h=To:Subject:From:Message-Id:Date; b=BalmVCmoc+Plv8XBC2Jd2x52bZVPhdOr6Znp8yRPV8LgSyWnEj1m4MlIiS2T6De2cx8qG0xUcAGKoWC3wFIZNI24DN1fJv27Z9VaFF6pF0XLxpktRLJn62cVXyGYvn1N+BHKURYRHPw7KhMoxv9lAlHamPtBm8cMe5FDUg7Bqt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzNw2mN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzNw2mN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2565C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747257593;
	bh=urMOnG+0UYtjWGu/myrJafyCuiE36mtbW4dE/ahlCF0=;
	h=To:Subject:From:Date:From;
	b=RzNw2mN3SPc2DjwGtCvMd0nOV7S4ThLGuSmcHw5UbbnYzvdrXRmt5W4JpCTiZjnhx
	 PLdi5pn4iPfTOnrNhY4/fGgJZW8FM182fP+XCTBtgrmycySn9EsqYQwFhXbUj9Jerp
	 0gy6968JSGodEGrDbkPaIjAVHX1Z9A6pFzl8Hm0jtEVlSEyYfLbL92ImRUCC8USlm9
	 ZIjkceUNUULz7Z26N7V5dmMveIUB/6L9S6x8BQ776LdpMvD+TMZKs3dGpiLobl1WqO
	 L0Upuda1T94WwnrBDItQhnqNmLWb+1OJq4+2FhMy6m7/ptoa+7k3M4VzY9TyJ7Vuv4
	 HBHjGjBQA6Eow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90568C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725759358.12045.11202942437651585236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17671a1d945c405c36b78ebb361bab80d57f647c5e7a628f8d39d07e8bac79d
Date: Wed, 14 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747257593
