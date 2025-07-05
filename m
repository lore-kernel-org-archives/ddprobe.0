Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E74B1922F4
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751706594; cv=none; b=XYdUwiKN62NDr8TfhllnH9V26y5Na2N4IwNLbQTjiZJDoVXWmNJlfaCNmtVT1eBcQDGVkqiCpxLb3oXP9FcqWbfBedDvU5eBfk9cQxaeyqPl/yezPBG+ERoHvGYK2xzO5DXGJsahCYLuPB5xPnhFLNn6Td7OpFMVA38NW6xmlTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751706594; c=relaxed/simple;
	bh=SwYoNG2829JFuTceJ0E5LjDd+Z6pnHMRdhXt1mc7HVY=;
	h=To:Subject:From:Message-Id:Date; b=Lrd/KL7ddmR2OdtjK/aVH93tFXRdXdtr/FFDusVvNwv5z01AnbAG0M1OCzzF8zlTSW8xuo2UA/QA9XoWS88vtdKQ1pm3ZCOaKTshB+SvnzMfTbzmNsAb3qEUeoaAn/vJB63oFpQDNbaHqGmcx3vVWHRubfy5RCSp1qyDvznmS78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJB3uj/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJB3uj/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63ABC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751706593;
	bh=SwYoNG2829JFuTceJ0E5LjDd+Z6pnHMRdhXt1mc7HVY=;
	h=To:Subject:From:Date:From;
	b=MJB3uj/3OhrziDWSsKX4LkvOxJUWtFdiAPA4ALlvOr1ZdIpQP+nypyPhevf6Sn668
	 /RMGnDZEvboa65B06RzVAsp+PPCJ7TIfqTK8Dv9sxwR3Y86Mrb/9t2r4TNWMVo2+xf
	 +i1RJFRouGZeNXwRZzp0jNF9JMBkh1yoAhskpbhMxsTCWxdR9BxGAKFhKTtRIfz+0U
	 VJTO/3cqmhqdF2njvWmjkQgO2jpaymDB+4T5ine8OBXsHIKSwZXOw4Kwn/WGYqddWv
	 4QHrcx0adVfE33L6/3zJL9y6fwKJKJJP5JDHlHB94HQYwAA4RRUYcCiY7yxzryonPF
	 EKlRRRSnvmqfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9121DC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170659357.12508.11993161534238748736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b23dc1e05da73fe93dea379e95e8cdfe753998d5f49a9a8301a089f63ec5f56
Date: Sat, 05 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751706593
