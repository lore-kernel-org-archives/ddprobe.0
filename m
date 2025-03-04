Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379D61E9907
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741064934; cv=none; b=rCWWyBBD2KwDM01iRo6XiW3GlNAf1JnJS1UihNKp/by4QDTMXJRGzzxRxC6HX3eqaONiI4eRxEzOT/Z/a09d9s1kR2QBuIzUoYF6d1gc3FiH9hdQs83FiSX7GN8C7eunGA0No5uEmPAGwD6MZpxzGxZY2yVDwQbUA/pOvjYAlNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741064934; c=relaxed/simple;
	bh=VCaFeR6g+ibzdHsojtZ2LBRvxYEltUGeftDFv3fROt4=;
	h=To:Subject:From:Message-Id:Date; b=oPW5wme8Sf2/Cb69sujUXX6X7FGudYSRZKuist0eebmrKuKzzIs+f1ViYVEUibbSjCDCsyetNYYF1OlTNfW7GU6wkQgvp/PKxurCOO0Wq6extq8XldkL8DF9tcFrgkXmK4nrP7Dp97q50nCEyPtKLK6EwNSoeJk7a9pNSPNzIiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p87zRf9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p87zRf9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9B0C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741064933;
	bh=VCaFeR6g+ibzdHsojtZ2LBRvxYEltUGeftDFv3fROt4=;
	h=To:Subject:From:Date:From;
	b=p87zRf9aASouwGTEDH5ffVglkwiIsmPkQ2n8P+gPHlCNxOyV7nPRtjdkUEdDBSja/
	 jsq2tzmxcHgxCZ+sGm/5H6666kymrioRFALXWJ/hNY42RS20EXr8bvK6fDjcTrQpQV
	 H2GDB6ZQc4i2DU8D4RsSouNobuFJ5JT6LypvG5M8EBCJ/YbTjT+acpmDfctCtj9tNZ
	 EnCze2zjiIWv7hO9Yn0srWZmb806H9Kvpg3vF6+v4bkxTImnosDKB3XPaqL+qrEHqr
	 rWwVY3cd04Qk4uTM5O//K3bsSsvgE7kulMBV3WPQHramYf4LcGIEX2lpVIZKaRh9GW
	 AUQ9RkknVz+SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C4FC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174106493359.18677.4544366076659881397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132a25bd16853b30d4ab03ceaffb2ed199c4561cef9340a36982bb1b07c63e3a
Date: Tue, 04 Mar 2025 05:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741064933
