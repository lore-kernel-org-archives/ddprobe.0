Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A9A219FC
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766635434; cv=none; b=Rp5erNuMPAILbVUmpN08wswBudy8NwzUlJWurwLEgvV6wWg4OiyYVExSYZZFN0IyuziTNYkOvzaFcLk0N1xbhnnf0J74/o6GsPPfkHHWqfu9xwaViV72WeLYgHrkfCPLDwo4yaPa4Qq+n9qi7ZxhwsJ0+PhARiZG4uH3FDF+dfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766635434; c=relaxed/simple;
	bh=Aosv/259FowGCx6vcTHB+lCjdrhaQfl+FXyAGklgraA=;
	h=To:Subject:From:Message-Id:Date; b=MxxVIwuyH9gJ/D0E5q4jQeDI6J+NiS6Jg9sn1Y2po2HK5N7+suwA9m1BQedCIyGvD9IayVrc6WMn8mI8bKYowuwdYkBDNu/61NXJcFCJM9aga3H+EF0DSlhcQn5bfIydTOs1Y7zhfM5Ip4rCZDu6PhQsT+flODvNTiBKs78d6/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vqku928n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vqku928n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0704C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766635433;
	bh=Aosv/259FowGCx6vcTHB+lCjdrhaQfl+FXyAGklgraA=;
	h=To:Subject:From:Date:From;
	b=Vqku928nP1uB5DPpC01FkJlRRQlPtbzoCdA3KU+TnCnbi5192zGzuFil8nUNaYkKj
	 FKQpUJtfhmtv9kr4eHi4bwoXQdjBiy0vK63pSkfG0XdNU4oqKI1ZIXTyFWXcyLD8hs
	 Hlb17cuyIX+QCc7fZ8ma2YTCiNFOnZeczlVYGB7XdXj9IP5TFnbi42u0vkAIjeHqWr
	 0DUbWCM8hyQUC4uHiB9NLcmV4/Mo16cl34DVz8VxQ6iAf36Od3LvrM/RPiiwqXQmF+
	 CPQw06iaSul5d7KCATAiHwGOqwO0Vhf7Noo/k7aSHXR9hEhNSF8q3FP9actyOEsDRc
	 PRxAv86iTR8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EED68BD5
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663543357.4362.12291036338052108500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60a5829a99062f2dc076b50d799173ebdf0991a5a57d77af365d0e16d68f141
Date: Thu, 25 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766635433
