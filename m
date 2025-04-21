Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E1B3D81
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745221194; cv=none; b=h0s8XQdykq6sLN4PwwSwdGkkJwsNIWQ4s20O4gsKhgDthgZLrUCq3RT6YgCdI6ht39rvFKF0uYtUmJat2KoctHaKvJv2xh7a0+CvXfmiSTM9OGFFvHqSMUB6v6RzwxQ57pbaFQtGyiNbtd6c7LC0nCM8zMR7mHIAOITDScHjlX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745221194; c=relaxed/simple;
	bh=zKRuSjipHIoBNB66SE5bfFlrUrYwU6R7xrfrr3vdRZA=;
	h=To:Subject:From:Message-Id:Date; b=j9HBW/vLAUuR4QTcaXFQdNXrP4Uo0uNJ6O50ndDsV3GkpavWJ3SDjElcTSsj8mIn6v9WqTjSQLr5ujO6fm/A8iFWfAMnaRAmDwQ6G1+u0H8uswWfGKPh8/yNWp5ukBxkpgVtHGOz8poxnvZCed4cbq9t6Odmyi7DOgDoS9SFZjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIbn/MD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIbn/MD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA681C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745221193;
	bh=zKRuSjipHIoBNB66SE5bfFlrUrYwU6R7xrfrr3vdRZA=;
	h=To:Subject:From:Date:From;
	b=vIbn/MD1yLHXN/DtCUGYpTV1JPl9ZtMrSZOTkJM1DfWRJMO+P0liwGBwWucybRSoa
	 K4IlVS2FI/r1Ci0V0x2WXRwgoM88MAJJGCU4L8BmVXA98KeifH2HdXEDh8Rd/uRkv7
	 7fFQkmGFX+++OqlIazLT1/bqsEfGAXfClf8YlQU5eJQMHFhhz2JQ+euJ7T6wezgMnM
	 wmo7l7ct7uk7KPkXRxzctR1dz/5OeMwHQTkqH0AzRwM2V0F58+ae1ZKwCN/W3ljdqf
	 6mWb6TuDHvqEYRR++axPa8ce8ospK7+sHu6SEg/fxKWQg5SFW8qzU+yOYe2dx1L2QE
	 74PyK25zl8aVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973CBC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522119360.28047.13862247286852101110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1baae8daeae185790b97b496bc92959019f9d4c7857591d5f504bd7d449a00
Date: Mon, 21 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745221193
