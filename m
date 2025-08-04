Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B19616F8E9
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754344794; cv=none; b=APGg0FCmvCTwac/accthbcu1rxBO9EDLfhS97W60iRMZg0wZA4/uMzjf7u/5Bxf67TRzuyNWWXRYh3fec83OgysLVoHMlAXPQcGcCROePOJLobnaWZj9OjEuePUGTa1KpWBJgHe0/ppYpYe+T86hA/UqGUO5jkFj6G/Rz6sr4mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754344794; c=relaxed/simple;
	bh=wrtH/RUZ1CTiOVPM8apZKYFbkoa+TG5boayGu1OY1rI=;
	h=To:Subject:From:Message-Id:Date; b=cPS8LeAY6gCaF7fOISp1F4VpPWh2dxL1oLwZgOiSX9hHjeKjdM+VjmbBHUubFenF+fwxWcGtkghYNWQTM0lyGa4jKZWk58pp9foLhoF2wPS4sQsE148L1JpadIkZ7cjH1ALatZ0ngMjmvR/Di/G4f500gISx9rRJBulCj0HzxEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfSwNwqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfSwNwqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4225C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754344793;
	bh=wrtH/RUZ1CTiOVPM8apZKYFbkoa+TG5boayGu1OY1rI=;
	h=To:Subject:From:Date:From;
	b=VfSwNwqhuNDmhVXZX8h0qi4h90EmuAfpLNUB9UePsjDnhlzbx0hxp0zZkZI8tsj1g
	 7QlAjtPFMvUxwXrSrPMfrUXVUu3fysb8/0AQ3qlyW6kGC/exWPXcQaQUgC3Ts/Ppb3
	 1Sz4T1zeBiDIEXPvmRaJjkBo72CektgfttikKtFXla8GdW/tubFtoctVviBNgL7XuK
	 S/JhlEhWZcSELBNRADYL0fwU8OplQLe997iQldkWEasiMnNhFu4SmXNdNXvSZn9vmL
	 drKyhOIj9Shxm1MiC8/g5YCrhmK7TH8iKCmP86+5BiVHQXTWpmrq9AkleUsj41wcfB
	 +4F5J1p/wwzhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92150C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434479358.28676.656413802739772271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211296ab1c835a55abf2f026bdef337ac70ce716ccd1abd8d9adca4eb68f957e
Date: Mon, 04 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754344793
