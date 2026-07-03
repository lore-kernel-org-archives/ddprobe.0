Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8812236F2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783042114; cv=none; b=ng1FGycKI2dVgt9vCcxRoha5vkVqUxzq7aT5sULVYUBmR8aZXDzmF6nsiQraPYP3qdiw44KwPuXhjvGijvxfHUFfOdxiPv3PUjZ4pTkFCkZKYtg40pIbeLpSy0smaZ3p5UqXYdFIT2P7sol14sIAXaFoKhki2gQ6kgwZ/gF2fBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783042114; c=relaxed/simple;
	bh=uV6rG+0nO/klQ3METIdV/nDEBXh0vd0kf9539o8tymQ=;
	h=To:Subject:From:Message-Id:Date; b=ba/arzVz85Sz1FcOjurTvju9l/cX3R463pkBNVkTX3CXfHmwx0LeKeOXJRaFJzNH04XS6kTh5/sBoeHscdKzQ4h+O4MEQ168Qlv/wS7lLxu6hNkj1txNDjlbAjXvu/0Csbx4Jgl4GdpxVVEpyALxyBZmh75MQTPnrgNLcS+oKoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkJflPnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkJflPnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCB1C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783042113;
	bh=uV6rG+0nO/klQ3METIdV/nDEBXh0vd0kf9539o8tymQ=;
	h=To:Subject:From:Date:From;
	b=GkJflPncSw789ecOUlmpoVM7lopLE9Ts7CkaSof2GhZ40S5am0JYP+LLuBob8W3h7
	 79gifoq91jN5NtKi3zYbXGaz15okT+4YOnzRf4JEcJ9ELy3k/VPNsuiB65mtO0M43h
	 K6yvHjvhGwLMhUxA8ZoPFLb08J57waAaoCu7K4XF0R4jveoburdkMkqxgzhP9RO06p
	 v6KQlzBob24wd1lHFtpXvS24/B7gQFN4yfL05ttcgXez38elN0vEP+mtoOJjbkBPgD
	 QIFTJdNj/BJsxSXK8caIQTfbWXDhAIjPaXYNG1P4369Z6j8Z2BucdD6gwuCqgPBDTX
	 D0hS7FRu7pYdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99FFC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304211368.21278.3505415418547107633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944463ae2ce4cd624f1e398af1c206b363110626175f94fbc22ed2697e21d6c3
Date: Fri, 03 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783042113
