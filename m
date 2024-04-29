Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F76A135A6B
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714416143; cv=none; b=RyTynzZIvwouNDfYP4462pW4iKUnd//qC8mJHvdrWBBohEhiIRjQOCZ+P0wS2MgmZz2+y7MD9EELc8DG+lZeAQageRXES9GGRaIsuLPGHBVw7Y8Lygd8bbNL7tw8EAtfdMFvzrKMVPByImN3kow3udlNz7GUKHP7BLtfmloioyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714416143; c=relaxed/simple;
	bh=jBjK0C1GsD+ckEHGogdAypIZ9elOTKmagRM1WTjXBgk=;
	h=To:Subject:From:Message-Id:Date; b=hWGYtU2ZehrYYiBQyWF0PgN0BBS9jCXfU5Dl3dchm4uOOgDVaPExZjvMt598yO5L+/Me+GVjStel5oIdfVhgdXU0lo7hatYorVVxFTRqyrFVc5253+ZJ5MTKj0dBpiayyrJoR80pl89nFyESAFcyoyqMUfKFxdPasX33eTOYJrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dz2zIWC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dz2zIWC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6579C4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714416142;
	bh=jBjK0C1GsD+ckEHGogdAypIZ9elOTKmagRM1WTjXBgk=;
	h=To:Subject:From:Date:From;
	b=Dz2zIWC857DHa4fADXOdmtAGq1/RBz6pYCwHxVBE1Cf0bAGNdEdpPbEp6TL6ERmW7
	 6DQG4WOVXXHZQWvtnhW7rsc+QSf48KGoVNOs685fh0FJ9oqBUI9sCFpDu6IjChIp4g
	 Hk/PvdIENnKF42NW6zp8HwJc5YCSEjLWjiReDS0UNiEqo/J9folfEl1vZUuQxO/u1x
	 gtoWhyO0cMSPkihBSHh4fgtT17NoBnrUZobIEzozro1LR3e+35ipjUxCYuMuWMGCaz
	 NG0TdMUBubcf/ONGO+jBJaeJSrD96xYfrM0LboLPbglEc3EbR1om4ddT6wHnrHjAT+
	 vITFVd0GcgbYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81FEC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441614281.14390.11043863264774493280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38dc455c38eb62b7dc5b4e97904007260192a590ffd602bf799f9de15a33eced
Date: Mon, 29 Apr 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714416142
