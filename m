Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D7A38E5DF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774266893; cv=none; b=Zb+JvvOHuKk0TJ5uFyrFZT7XaDXtyYMdwqL87/TroIT4Dt+g68gnzv3eUvjE38MlAY0NTBkr+oUadRzGCTticlS1UiTTTG9soVV0yKHrhLoK7e3k6jP7EYU/LrYOnHEccE3GIxx4eRUlBwRRn6wSU3226zNbnaZhdb/ahAtvnvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774266893; c=relaxed/simple;
	bh=G+lxtJzVHO0GREXrI8bQULgPhpK+cQpUYi8LAUtN6FI=;
	h=To:Subject:From:Message-Id:Date; b=fX6t/xxkbojYPF2o1RHNvtfNu7AgyZfSO7cnYgJxWeWcFovv/UKiWSHtv5iihBHZ0HgJ6TeyQvKCecmpcka83JAXTDLg43gub7hFNVKNiAjoZFVCk2CxAYiavmac6O6LBcjzlP9YZrRlXHK04cMsf1GrkVPPwojgX+Kwtp1mw7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PH2W9nA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PH2W9nA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60FFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774266893;
	bh=G+lxtJzVHO0GREXrI8bQULgPhpK+cQpUYi8LAUtN6FI=;
	h=To:Subject:From:Date:From;
	b=PH2W9nA/TEEZ+np/gB/5kdADHsnIrYm9gU7V6bRsbu5V740ngPMxxswx/VUMttGW7
	 B7niRpeqH4YkR50qCrS0bHipaFukY/Xg8YPKmHtL/r5objO36kxIPeZkvj+SwhvLPo
	 Jd2PB8PKzkW0BaKkuPCFyGkBFbBqMD6+cIG9M8UxfCh3oVtBgNnu9VTjHLXUDYoiM1
	 u4XyU56HOy2iL0yMeu4E7FIxXrhI0yG3u0dzncfGJLVqpEWuOcgYoyfihlpkJNWKx3
	 ZnvkAtMAj90tyruG/das3JbK3CLMT10Qe5ZCsxRA3nzP+uI+Kl482bK4obohesme2v
	 jEq6Zp5dtLI3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947B1EC01D4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426689358.5281.14618305969761349869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117b291cf866d11c2268a66a0bd953872a6f25213dfadfb5d1c9ee43bc35a300
Date: Mon, 23 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774266893
