Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1323E2FCBF0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769159034; cv=none; b=thB/doF8I8I3KRTztRUgBZyT/M74NGmHi6OcdIJ/tWUEMM4/x1N/ZPu6d8Y02KDz4aQhjkR+SRyd6dPOPb7bFvY29QO7sP/7qXq9G80PSRZNxUlC+VDMoRPa7McBwbjPYOdMm3CGmEfmb0zgjRwGqg1SAylpDvu+8dH5mkgD0lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769159034; c=relaxed/simple;
	bh=HbjPBp4aoBDHKjlWJJ0q/ylA9Vhn37W8l3H20sfcGKU=;
	h=To:Subject:From:Message-Id:Date; b=M9gKxFrVU2GdVlsx1wgxRiSrqt1/jg6dq4ws3McfTJcAS1jBPEohJg4GY8gIRg3dKCTjD+orPRFM7u48JYlHveCO8C86B3QZ2Wz/JKgr2WyZE8+qXqr7SuRedQwpcJ7Jv9H+fOse/2eJQurehI8LXWUvanF4Pj4UBCWsmXqAdMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4+hKo4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4+hKo4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA029C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769159033;
	bh=HbjPBp4aoBDHKjlWJJ0q/ylA9Vhn37W8l3H20sfcGKU=;
	h=To:Subject:From:Date:From;
	b=J4+hKo4ghRVjojN4HD2FL4Yt0IzqGAKwHUrd+T40k2NHBBWvzkyDw2XH3hDZtSjDU
	 WEQzJSS6DTYo4V/2lKHDfUyrLGPrLDJSkFIcHlTiZn5dkWdSeQUy+GGUkMLJxcQams
	 t+faG/GcCVZHbrX9jPisLzbfoLdQbZ1q048T+kkhghqIU7CW4DzUbIdepV8xwIyzKU
	 STpZnOjRF62+DL1JUd5HgfKRImllzwFiOLaBELHnhfhTAa/DqfyqWqz6AKn0EhWoHu
	 2dQWXLgqxQIWEvgLq6hDZrE7urTAwcqLVuN4IEdXRX6iBcmwmXks+d8SQ2NPIpYZ/9
	 paD+nPDuY8ztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981DCD72361
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915903361.11418.10214269554714572076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7cab5d2b651700c1a0055942b384d6c0298d4cda893f174d5a3069900f55c83
Date: Fri, 23 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769159033
