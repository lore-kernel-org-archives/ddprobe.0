Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C788528E
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706818697; cv=none; b=Eq/A9VyNhLkuKe4bM3qTNxWqyJgIrB9+xlV5W3CNYVv9tD65MQSbV5GYA391Td+ObZQsMsujaR7cdw40wSTfdLcN8GLxzXfd+X0qsaOT8c5N6MaZnZ84EGqKFj6V2irnMn+f1vTMI4oqamgHXvwZEuPYgWuV+PIgoL09OHe8JKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706818697; c=relaxed/simple;
	bh=XpLAWACR6/DJJvZcBGKhDYC49UGunB5e4JIbeWhqbpk=;
	h=To:Subject:From:Message-Id:Date; b=gNBItTDRRJPYDvbKba0c47rzwbWQ/zpU7lEnP1EwsUX7CcxmgKoDnikuCwxa4R3ep9iG+b7cM1U2UIXbgmE5VBDHvz5QFrrFGX8bi7ez0A1wnY2/Mjk4DPyJh3UFCQuS4MXKSSQWRzyUOixnPiXZfcy2O817BZXTYWetLVrPEjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYPkCRSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYPkCRSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95811C433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706818696;
	bh=XpLAWACR6/DJJvZcBGKhDYC49UGunB5e4JIbeWhqbpk=;
	h=To:Subject:From:Date:From;
	b=ZYPkCRSFAkgpgQfUUPHyF4/Q0zXbnvCup57B6MkMnnmTs/KHGmdcruOtOaUItaa/y
	 V3aegX38bXgz9oq6XNQmn7ORxwg0gFIZz665r2xvI/vp0BNVacqyyILa7tShX3BAvv
	 e2Lpm1TazjcloFMtk/qhmFu+EpbiE8D9VazyMViqfcWxLiCPCoi5MuIYOmobyxLc2l
	 B5bt/xooshuT4L8DNfXswHnNZpk0oK2wd3aA9rhJmI1kQnC5yAxfZUoGYYTjKYXBQF
	 IoR4rDjZ//TLsMtHPjOYMmXAaGdKnWCgSczedQc9CMyCoLA0Gxjr0wkXB1LGESAQnt
	 TPxpF4f/dKPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79798C4828D
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170681869649.29498.5375164370796388915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34af5668e7d9b9c7a6bf08b39e79692e24db66cc2e80aaea5f5b865b8b898d42
Date: Thu, 01 Feb 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706818696
