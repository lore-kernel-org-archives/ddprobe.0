Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C3718872A
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760176194; cv=none; b=m4XGjaSHzSnETparbsLbNWOZ86C0fNl9+MAN6eHIy4fFGebdKaqkn3szpWKPq4HP3CXzJ8jzjf+inoYfEw91ydkAwKK4x40dSDa9Dd9oD3CFcZ2dIdci5Geehh+nn1XpUyfdAbBSOAquRCL5S/bvZhYCm9VuZq+ScNfkLr7v3zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760176194; c=relaxed/simple;
	bh=WXy7ke2pj6lDgBqRdIyG3Kv2aY+wbn775BM6mmDqZyQ=;
	h=To:Subject:From:Message-Id:Date; b=cS0AX9lJdsRWjtH0rv3hm8JWJte6I69BS5P7baFY8I1ml02/PHGCrf0XdlyOktY/6dfggXMTm5Sq4BnZZfxZv/7L24qViWkSchXG9HEOZ4uF00piw5ICHVf+sbD7jf2C+hrH6Of+DSWNbEg0hB4U+11fY5lZpJWW+gTvTobl3Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2QRHCst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2QRHCst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0657C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760176193;
	bh=WXy7ke2pj6lDgBqRdIyG3Kv2aY+wbn775BM6mmDqZyQ=;
	h=To:Subject:From:Date:From;
	b=H2QRHCstyYJGRhtC1oSgdHNVZwjVVq5uE6tow7Gyz0ti1QpVJEECZAx3rdnBAiFJe
	 KkJEldphy+Z4OrV946Bsj2rTpC+uDnvD1b4qgVm/nW7S2dyUXlDX0yGap2JI6pqYkD
	 SArHMWsSIYvIVglQum9bAzik9pZkzFbGhAtiO48HwtS5M4rDDLdvkNEDQxzk6KlpZD
	 J1n9aane79VoNZS2MLXQ+xGtmyVxhVrzDZ9hOO35xdj+EcU7sCGk16BmxzKK8llYSU
	 MHYwIcezZ/RhmryXaJC67FY3H9vw3CO89rTQiL/mNPLA/nhBm2VH7w3ay5pKq3socK
	 az1fxL3rEPAdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F003CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017619357.1809.3302096813579761220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba74f3735de6b807355736bed57bd52b155ede4fe040e84eae2c699de480f133
Date: Sat, 11 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760176193
