Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D94524BBFD
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774809294; cv=none; b=Ik5cFtGEEkUpLhwzZBKYjnjwidcYxP6jMIQTZK4hGC/U3lXXt/M/wtTrSw2YMcs+hE9jSNqKokTzUgGQvnLf8N6jThZCfJ1CWFX88HreXtjGowqtx9rJx7jY5gCxbahRa2wdbFTK9SygigXMYmH3uvG0cfBXqp9C9R3rdoakQ3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774809294; c=relaxed/simple;
	bh=ElNoXWZ7o9VUjhH9GF3/pG2cLzct6CI8tfCq50VU15I=;
	h=To:Subject:From:Message-Id:Date; b=uaBPRBtIj4qIZ6q38kRdkj1XB8LY3mZurD0MTMEVVdOVob58xatTTn8w+9Yx9IxJAutoCUCI+dRda5lC1iMDcftqfunNmePT5PALYUvcTM8yVQ5Up5F9HcK1jXzaVkWm+cy+u5qBk9ekYyAiWTEmSmmjDy6EuiGYMl0FKFF080M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNzHdnWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNzHdnWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59C0C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774809293;
	bh=ElNoXWZ7o9VUjhH9GF3/pG2cLzct6CI8tfCq50VU15I=;
	h=To:Subject:From:Date:From;
	b=pNzHdnWUyGemBIQJsIZSJD7jfZnMtmgXjZ1j1IU1zIYfHjl/x42BI9DaptyDlcOUJ
	 eLNqneumnTQukPJMLq5FI4aPuuag1JnaJJ+05TEyYAqtdS6noc8HKFAALmH5sYHXY+
	 hyayvWFKZ5wT0ZhPOakSaTrN0fPpmP99QX91y+nDn0cwH1/wTiCONKx7jhQLObxul3
	 9QBxhPi35nQ98DufLkh8bF7ufnGE/fRJ0RM3o6Dbu95swoohRAXtORQXn+y28gm4z7
	 3IM0BxZnjg+dN/ClrVZ/elaG7rEN+fmMsXPIBqNwjGRW33ao2k4q3qg6KnmSSJyEFN
	 t+XQjxwz64acQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE58FC97E2
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480929358.10087.14796144634138283232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588fe7d732481bd5204c7fe993a5bf3db80c9ff368180ab1c603d5c322a186f7
Date: Sun, 29 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774809293
