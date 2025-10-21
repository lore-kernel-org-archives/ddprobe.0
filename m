Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2247B4A35
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761011994; cv=none; b=PG6V2qLcEWCoovSWUSQcoUN2l1i4BsNcZprEZ6VWvLF/KMLq2z0EL0ELjZu7mkOvqXaH/fnagO+GYsdGg9EE2IVHz7i3dVdBlMq39wrxgH1TYurZlikjI/1qiqa9OvBQZAgKaiEPtcqlu5B+JW/aYD1p83Cp0rBDO6osCDgNGEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761011994; c=relaxed/simple;
	bh=1xgVI0Azuj6uuYgw9tTZ9I29SSlGnsQl4pNk7hfFF0Y=;
	h=To:Subject:From:Message-Id:Date; b=hHpyYoVk0NfJasijWb7dOa8eNwP4vi7paiM2PDcl4tURHjXwtUddlA8pkAnQE2wwnz3XdgrRNhs2M9rKT4IgpNCa5ohPlzDrDpjkjZBIb2GOco5C2rzxL5N2MKuzY1K1/lk0VsFtIsfXo7dJOyYr5DNU98/Aq4rLBIPy0kq54Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANyaau3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANyaau3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6DFC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761011993;
	bh=1xgVI0Azuj6uuYgw9tTZ9I29SSlGnsQl4pNk7hfFF0Y=;
	h=To:Subject:From:Date:From;
	b=ANyaau3rpGdwhBwCEfAAgotfk2EGI44kTg30eDn+XdswlLyWrvUFXQpQJ+0tuYVAm
	 mU978Nw78JlqrHtATHyneW548JtfgSAq5gkepbwEW9y5hutLtmuT4gw3EdyEfqGNPz
	 pBxDA9cx/oxRyVydXyScOwZScWJZOOut6gALcAXHzX/2swSyKIU/fcuI5kf2NjB1cA
	 G6dzf3rUMadtGNr+vApeLSd77eAMg1ECv1Wh02brM0ecTlKV0hkCcOePbmDEqUi+xq
	 KA2MhwE4XoTfgu6wyGb46Ood/xndzIw1GkZWwUA+fgYrl1VLklcvMWog3uV2r2rhwN
	 CyVcyTuPvzM0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9625BCCD1A2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101199359.15927.1166216782740755195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf0a775f8c7adbdb27641d483ba98582ca7b8a80aa8e295a44c9d867c6e71d0
Date: Tue, 21 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761011993
