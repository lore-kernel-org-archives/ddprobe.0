Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D6A270553
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755544794; cv=none; b=YuFTVKZyZycTiMkAgGWVBiQbBGfoZ40bbo+BYMBNFJq5fcimJ9OIsFJc0aKfS8UJJ0xkGmR06/HFYG1FmyukLmj7fOfAvFu/V7TP6RApaEJ5iMPs3m06D5EYCuPIuDiKJmf4oIW49KP9sfAjLrgRl5M5dEy0ZrF/csZ9bIyCjCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755544794; c=relaxed/simple;
	bh=NAisSr3NyZpFe19iB30fIKAYRK4X0eIZvGc8pEKb9sI=;
	h=To:Subject:From:Message-Id:Date; b=orOg2T1ZafMb/fBZ68S9YtxgusGNrl4Mdn4mC+B+bPs6dGBjMViRIwAkXqkAiHncywF8M9F7AoS0GF5d5QcFgLLRP0u0TcCkgngCe/U2owlameb6RjXAcG+8Q0oKxJPjvt+Zu/GuDDHgMKjMgEeNfz+dGKNTY10THN6ZPoYH0Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkZYQeO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkZYQeO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D18C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755544793;
	bh=NAisSr3NyZpFe19iB30fIKAYRK4X0eIZvGc8pEKb9sI=;
	h=To:Subject:From:Date:From;
	b=LkZYQeO1zTqoG8i+3c8HsM0He2s54WsDlZi4+r7V7tYvY9QurQCyg5lQ7l3M2K17P
	 2e4vrZbUfktJIgUxr7CjLgvpoAiOVWu+W5/znkpJKhg6jZM6WGnyxaptrqUczzYIJd
	 S+KHuSHf0AYp/jh+oYNgHXTJ5eAOI7GZBUUfZFojD/aXh/8VACDoQDqust2wUwbNER
	 GTtD4tl/Yk8m6YWPotyStYPfj5RyQZb/sY8Tg/4BcKli8BNkeK2XRY1+EJXIB7ArQc
	 0ldxA0iXGLEOCGNXmGFWbNIY9t+AtZe+8dpNm0KyNzpk0HIXgskphHSwarqPBXUgt1
	 B27pNjkqrOWxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DDACA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554479360.10997.1376876606478849842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77d2f2be0244b3a17a134858aa1a7d5eb64ce1621359e34f4b541c2c34fb083
Date: Mon, 18 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755544793
