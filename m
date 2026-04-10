Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268C1253950
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775780254; cv=none; b=RwL0lOcJoPJlF9FoN+TFNpaNtWacvOkFdvhTpS3iaTcLlC7F84zK9so2ZbxMQICmG5JEavD/42h9Upn8r74thWJhSb8e589BJdoAJiPtBOpOGQ5xpZBxZkSlcQPo9d9vrmc8I1EJ9cZNr/RIoxD8zsyv9+c5ZPmVBlJ1aHWxOag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775780254; c=relaxed/simple;
	bh=ssMKD/XYa5xOu2NGeuC0fdXqkfKq+CqRZNoPkbSPC4A=;
	h=To:Subject:From:Message-Id:Date; b=h4gHqSVDkX95RVZIfeDEvWW7ccPdsBtJMw9ovYbv077HlllA001vwSaiiQTa5O5tpnrjPKcvkWtPX5K1aOtva4do0Ys96ykEYElvLAbMWSG3UWPs6a65IRSb9WV8byQfBgLUsMlM6qeav7z8rm3lUhL1Y2YCDr8MZEYMnwI/Y1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knNxWNnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knNxWNnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8ADEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775780253;
	bh=ssMKD/XYa5xOu2NGeuC0fdXqkfKq+CqRZNoPkbSPC4A=;
	h=To:Subject:From:Date:From;
	b=knNxWNnxVvr9ExsrDSZdah0UOqd4rX2hO6+KdU6QQx1ThsQMF6OiMucBHf9emjlWR
	 LEuKao90c1NpTZvYuWgNxXLJShrs15qWwBR6mlxtwNTMfW4FWlpgSLLqLQsoeNRh3l
	 OvhckwCBqC5RttSVGmHwOTZZ4yrJ10mR7JRIps8rbziG7iAECZ+cuDeKeK2+OzBTnw
	 xYWsWx/6TztzOdhy6geQTVsTw9WgmJyps4Euyl5a3I8eYtHdIp0t3hBCng4MK+6I2z
	 9EdANZxw9k17VpfdUuSJdAoElVpVH3dc3Zyw14+B2KPDmQw/KZpbM3O0cNV2ZxwrJg
	 zo6WOovD11OiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93AFF36B96
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578025368.19789.4704122208428902534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617178690e0850b8a244308e4c2946624ffb5434e8e9edafebc40e68d761c0b0
Date: Fri, 10 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775780253
