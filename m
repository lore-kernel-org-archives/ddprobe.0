Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA7C239E62
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754780394; cv=none; b=sZfpU4mpV5wZg+cjFkYrMQBX8bxYAF/RisHQZjJpWgk+MCwUiJvM0K/c5nTeBrIyI8y1w19h7TQ2WErvkZVTCwgTDpcb7xexXUZRGUCBqTG/ET6cSbl5RzIf+/j/MOvpn8mOB+7f//DU+ZagK7xGY+Lyy4etnd/t7hS55vSalLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754780394; c=relaxed/simple;
	bh=PO8E0UjPsNDxUuhfMPCME/UycEf97fsPBPyI3lZsoOQ=;
	h=To:Subject:From:Message-Id:Date; b=rMJXAlKg+WdD1lavg86WoFecH78lrfqGzvOHs9fcx8UGMNV1llfQY+KXMOcC7Uctl/YE67S+2gVYmjXluIZdnwcMaAsuCxjPNUtHe2T/2XJYj8y4p12pj8yTC5cxmG+XxtdaWRd5Ub3WwMUxHhn1ROTSaf1FZfmYQnGdT3QRs94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gG7vkMtM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gG7vkMtM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A773AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754780393;
	bh=PO8E0UjPsNDxUuhfMPCME/UycEf97fsPBPyI3lZsoOQ=;
	h=To:Subject:From:Date:From;
	b=gG7vkMtMs5KWwlYXtNuxrsnsBUQQ+qfAyY/TMkg1fbnxxkqdBIzJJqE93Nl0eM7wq
	 GpBgRHNJIt4w1gFtkAk03h0IVxflvz9rptsknvtmTXBqWsHw4pWCb37kGpCDYFoMNX
	 29Qt4p8QPVJ6460NarshkRlyisDL9pPWvSHJly6XyEzfgpW6h+03el72m09o4Qrg72
	 X//sy6xnam4WxFDzFJ6pvY9njXekXj9Bylu+5cLfgqMEOxiwdAfygZL85rFmZwBbKW
	 rUpflGXqDEHoid/CWLWgKAOwooV+tRmQItf0Ew3gbQmwN03UP+GwfKXC/vwynSpNZH
	 j4Mes8DMPcCNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A9EC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478039357.20887.9624767422439107291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edc75df98cd50d5c09b41ec573c893fb1e88edd2f15a75cf7f099fee94eda41
Date: Sat, 09 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754780393
