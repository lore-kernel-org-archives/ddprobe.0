Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FBE313E05
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772754894; cv=none; b=ALj4RijPEG3h4yqMA9hCEraF3jwdz/roS8oKveCObOkPQ424+ULSTKxo7riaUCs8af82ONeVRt9sRJu3fjpe2+h7CFgwDscNIULjAoKNL9nUiyr4kor0H1cEWwYLXeMegNJMQPNk1JV+w5IqN0Gli6KW4jlD2sxeNcfDWeZQxOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772754894; c=relaxed/simple;
	bh=MKLvpUZBOgjIf14Jsb8AeFZWbV87VG8MqcE08hn55EM=;
	h=To:Subject:From:Message-Id:Date; b=oV2Tq/lHa8u/0zHjbLnso4Q+iUc6L3HTJdD+JXkzqLc/pY2WGzq3PCaf5M74PDbk0+M5oLZbphBdx0r/XlUaD195PpREVpvtUteGn5YX0ctbgeSY5Cuhn9BRE+devbmaneZdDhp24Xq1MiZBXo8PWf/5nNAEb7sj13Y0rUJcPQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/OgRUX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/OgRUX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A469BC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772754893;
	bh=MKLvpUZBOgjIf14Jsb8AeFZWbV87VG8MqcE08hn55EM=;
	h=To:Subject:From:Date:From;
	b=p/OgRUX+QiedJmOE5IVtPy0F345vgwFYp65zI842RZgIUt0lK0ep7X+3oWikH9k1G
	 DXLFa4bUAD4BNmJwCAlUm+4QZsQmNAt01gwsUSKDLDC63kr0y5Zqpt7JoYLvoRCoRS
	 UlOMUOzvw4yi1k87jR1cm66JZ92Vo82nVznzBIslgUjIIicPIQlMVSwZYZMyB0DpP6
	 IDs4/V2cLbueoroJy0/WDQcwdt51uCqB3F4TrG8Hn4tQJAoOZbpoj5o+XYqmgvk1pD
	 nrXJSlcN+J6+C8SKM9La2FeBsdIscTaLxvT5qhBSrNf0DwYwd1LtNB0WNe2NoLtYgm
	 B0gwt047khHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC9F513EB
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275489358.19965.3181631837326015752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83999a42677dfb89c9ef81bf53bc440920c2a099f85e9f661c5860f3516f8b3
Date: Thu, 05 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772754893
