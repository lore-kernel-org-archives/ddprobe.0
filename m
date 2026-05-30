Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C3F23645D
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780109014; cv=none; b=JMrDuaUYxOHU6d53om+MwLdqKZ3i9b7phPkEq0hzy8yT40bb2gJ5+Sxt8moRvr8epMXp2/Z4CMXE8/gu7P8dki+ySHTn5t2/7+HRlsrBBf7dhyg6o/RuZLnFxxq1iWjAH8BMdZeSspapWEotxZ8lMUvHCbgGo+Fl3BxUdfuCk3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780109014; c=relaxed/simple;
	bh=V+O1Pxw8iikPsihh9b9+Nq8YpQ25e852Gu76+IlelG8=;
	h=To:Subject:From:Message-Id:Date; b=BZM5Sle7I5XFj/T6HKr1L+WIGVI9a0jmeq4WM3FxLMLUWXu+mEx8qhL0vONdB9cw04O1wHjPJ2eHBf9l+1bgGJA5+3/1nG8d+QA0ALlRjjAqZ14c4e7+KtL6uRPgdsxldiOQGopqOuVEPe0O/Pz5b20jzW1pp9DU2Xfzta8FR1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImFBbVjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImFBbVjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83CFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780109013;
	bh=V+O1Pxw8iikPsihh9b9+Nq8YpQ25e852Gu76+IlelG8=;
	h=To:Subject:From:Date:From;
	b=ImFBbVjOgqayVorFpBNBPPYo5gJ9H307ymnK/laDYUblDtYe/OYjnYRpTlDp1r+VE
	 iHp/mcfF37o/4xKpw2/C9RP8F832PGB3wvfKo4lmuPANAI9Ksfq3HnVp6Q7LQ3xAui
	 d2dmqYYymycna9YYymR8OhnO617cWyAMKjYIipP0G49hPfDuF3IzYUdPjKWtIwYjX+
	 KqPIJagoCvCNIpdpDyD5GJZhfeNgXsBECact/fvQRpCbGM4JZfiv2INy4jCXsd4BYP
	 V5DU055LEMEaMFtEoThKv0nT4V7OU6F0AsKDT1WgJRoVpHRWPXpeUxspeMZoZ0nBSf
	 PQQpzbLQtKUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF126CD6E52
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010901368.25526.8994251845580779868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078b2d803e0253e21605373ea4c588455d1367284a181e7bc0c5113a45ab154e
Date: Sat, 30 May 2026 02:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780109013
