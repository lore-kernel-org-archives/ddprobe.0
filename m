Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388B01DDC35
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782386854; cv=none; b=npTvIjyzFhpWZMk7ImNITbIyE9BmsHunDS7zn52HmYsstaVCPy7Zqq8ii1inBVlAAoJDVZ6A/SzwxOpWj+vlu7neMfhL2usVzGI3GuxNw+cm/6FMrvjZRFiUbWRKQOSZ6mezbYeSVRBdrr260fB1aGRYoKxk2qHuieTEVfOLMuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782386854; c=relaxed/simple;
	bh=hlUAgSzudq2aSDrfM5zEqD1z9lxCDs1MV505LVvQB2E=;
	h=To:Subject:From:Message-Id:Date; b=AhkTYH4HIaWEPGKK6QbgbugPyZ7E2qT5w2TU4aC1zw7tag0ciOkUVkW3Cn4ENAEUghBCWbB5ee7uqcrc8AFSGKUc/z4jaiRK6Q+Hy/HuWtXJWh/diEdQ8cEf4Qj0PRu1y4qSWcE+heXVbP+1IqzRp3HSE8eNpWT7o+xQVsvSl0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzEZuIqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzEZuIqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBAEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782386853;
	bh=hlUAgSzudq2aSDrfM5zEqD1z9lxCDs1MV505LVvQB2E=;
	h=To:Subject:From:Date:From;
	b=LzEZuIqTp2ux7hSzZEIzSxL7BtLvySGkX4uKmZExo+eVsqJF35U+KDJja/O/YKz1q
	 nUXOvGny08lISpgBNdlcm8MvXdtAR898YMJvnJTc9stQM3C6jdCzxgd6C2NKUb3WiX
	 m3fVYPI9Gy0w3GjhnqkQJ417bqUNshtd3WqPbr1WMsbPsnytg/gZBjLTm9LTJCObka
	 jDAmqSWI9OD63Y2k9//iDwsBuwSzYPMJpeenhrxl0gJaELaJtYQNehIQ90EGYmwTMW
	 46fRvmrSMO6me0oJi0GMd4DES4Uyo7XLl1jkRhrQllfLBpIWUMZ4YTMCYN+lDUqyaG
	 WCDUIl9MKzLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB1FCDE008
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238685369.31447.11185814528262193316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073a33b03a25393a273daaa9dda49bff374d4ef025951f20652d242c1a81f8cc
Date: Thu, 25 Jun 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782386853
