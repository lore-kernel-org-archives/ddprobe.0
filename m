Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CCC440A02
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789404634; cv=none; b=i6VXzeWZJI9Z/XbqNnkj6bLaZVKCbPh/PkpIavSy4qhQfuiMciAq5OYMjQ4P9q53HW6GiiDhmlCr2TBcGGeP8FOm/n+oS+5Iy0Z0B2K/SWzn9OxwiGtLcc9iZonuNN6o7S97ZKn2WHZauL6OQobkQUkOmZ7rN5CmRkP2qF/xtv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789404634; c=relaxed/simple;
	bh=tERP2bCS2uDcl4vl/udUHHni2RI6eTYSxtE/Y6LPbhg=;
	h=To:Subject:From:Message-Id:Date; b=hL6B1Tnepkyu8Gnw17pnsOMsLMK9yrn1D1lM1INhlIr31X+SpSNAQRmW033tYXqCkkEFAwvT60n+Dbt1JpEzGg6bZJtUHfStRbUIEk9BCMy5uurVQf8LOFLbdwaNRxhITtSJH/tsZdETp+gjx6/DjbJNdBLQ97uFdiI9i/y42Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiMYr68Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiMYr68Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB11AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789404633;
	bh=tERP2bCS2uDcl4vl/udUHHni2RI6eTYSxtE/Y6LPbhg=;
	h=To:Subject:From:Date:From;
	b=WiMYr68YL7yzedKHUhDzlIBwvD/QZvUCp9/7ekFpfzg0ZTi1AVcuAiZc4zlqnj/Td
	 OaI+jjkJQIuxFO3oTJxaop0MQYOxDFZKRfGTq9RxSMY1uGbXPzVVQeglc1ip+lNwIo
	 kGi5fWgJAQPBZZ0xD+GgN3NqG/By8I2UKi9H+q0A/vkIITvAdqLDnDxdMmU3AM4Ol/
	 MfuddITur8XUxw6aK1HSqkaklVlm14r/vnO+a+3ZU/YdZEsOxowQi3Ps9mhK7Y4qtP
	 g8YnrXjJtj0v/XOdaNhdYDlu0B94XPz15kZNQvLKSU+S9WcriAPwlGDePk8jRKDULF
	 2HmMcKzUuBq9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F01C88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940463370.19230.11669877026135922098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f5e6a0dfc08dbe0051ccd769aa19a11b19bf569c380b256b7e3f6644d58853
Date: Mon, 14 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789404633
