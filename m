Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9F54BF949
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791996634; cv=none; b=lIBvvKSgqejDuMna+DLLNjTilijHSnhRWX9kdSPpCEv+P29kTVl1MueEr3n7LQybBS7QauiRaglsLY4ryvWneMX45oSNeQz70/ulZzKOzTrQT1/nJ5CLELH3OXOKNmaDZAYGL8NJ8h4cSuclkM/c02iTGBSB0yXbzxVLGZm+dh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791996634; c=relaxed/simple;
	bh=e66xQZJPhX7GBkWGCiTzQhIKyjwD14g9VCW19VpgLY4=;
	h=To:Subject:From:Message-Id:Date; b=YjsuxrbRngmuEypzfVCC3jZdlwFyfxSrY6l/FtWl9IPK9rb2Wm/iq8uaStqxVzRWVlDAUD7uHEHgA7QteW4E+JnQu2Tuer4Sv6053dzqsc9ExFef6QMKFydH1OT9iVaYG0m+JvPTg7B4UUP8NME3yg4ePeW07lRMZy4yznhZ+ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyRvNDR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyRvNDR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1E8C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791996633;
	bh=e66xQZJPhX7GBkWGCiTzQhIKyjwD14g9VCW19VpgLY4=;
	h=To:Subject:From:Date:From;
	b=QyRvNDR/Xf0eBY8bKR8XdQhV+q6ete3VXrdqF0SiPuldV/bmcvP39SoUEz3VTMgy2
	 VqyynOhT721MxgrUcO3sRNvj94X6hogDlNGYJ4ae9Eq2MZlEqZx3F4sVqNJnyrwoih
	 heKeE0W85IvM3L3xFIRUrL0YIOM/AapWb6my+3GdsJTWb9q2XvYNMtELQDapqBEX1M
	 60slsxfEKOzn+/bSo2VqDKYOBR5uEHRdQ6fBF15BH67wWBB+A0fjxlOFEnxRWQihPE
	 PE030/6U2TGmQC26JdZjQwoOyHA8Bva00wBxWJBhzcwU9suWN1vyC9O6+hPyVG9gNN
	 KcfbWM67KBpDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB38ACC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199663369.14600.154583590063602753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2f60dc24c55a09cef2127effde4623ec646307a2981e72f97eda992ef25487
Date: Wed, 14 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791996633
