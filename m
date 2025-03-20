Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526331DDA39
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742503194; cv=none; b=YpEWQ0mXA/w46tsuT0DZcGO2dvlpJWymqhbNS+xtqdH5Jg2lKvaqmS5HWpUPVVnPG8Eq3YkSiI1zD7QfjUwY6iz7EJcw2O0wXHj/2f1kAfK8LgSC+uh5OPKgO2ZFwt8AMrokS6u+anxU3E2AO68gcIEEC8PYSPtU/angFMT7B8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742503194; c=relaxed/simple;
	bh=mxYSxCjYPMEZFxHUjHvLgHQfGheNY4VUDwTXDgwIFAo=;
	h=To:Subject:From:Message-Id:Date; b=By7d4uc2hFNSvyGEv6uS/h89TlcLRkzEX3PLpHNnAVjIzHsYkyrPnX7JH5JPN1oC1jg9TMpoxsEdTF7FgCtJsYv2IQMxZVRay7fJx/k/RB6x3l333rIe4NyyMiiyiou9oRX1j5uhtABtDrxzVSol22Lf1T8tOC60wueVWwHFKa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSV8Etcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSV8Etcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AE9C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742503193;
	bh=mxYSxCjYPMEZFxHUjHvLgHQfGheNY4VUDwTXDgwIFAo=;
	h=To:Subject:From:Date:From;
	b=CSV8EtcsC+cuxDCnkZve5sWfWeMmVBd60zWcpW0YIwWw9pwm/uWgG8y6nAuZfnG3/
	 38rMYrjIljSAKJdSJYyXlqvvTIo2d/NJwcPkvhq1M2ZG2kXWM6CbR15YicX6bXME/g
	 yRKAuNnVBQJjJcCpmBTOSXFDnC7MIL/eFTQQe5el/xj/HpeOXiCoeC1UcaWPp3gI5T
	 B/J+J/xwN/sA/o8JOIeuRBGu9La7Yj1uAHpgNgq+R4vHlomwA9MYXtRxpi8449aXOw
	 vbFTQuhVIoiPwksWG3/4brV5gVY9zczFxZ51j1K4POU7vp3E+GluCNxoIgi11jzgtV
	 OjGoxA4AHkBKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A647BC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250319366.11587.13359022660228750976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e69c7ae39247542e66189216d80c61a6ed6048aae4bdf9c88552737fdec92d8
Date: Thu, 20 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742503193
