Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557CA2E3E5
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720772843; cv=none; b=Ttdi0xi8I9BxwMFzsExXWtta94jsfdTPNzkQ36XI93k3fp+X/tfQ4ucefT/7tOqTec9UFVA1uSUmjhNqupWU7fWWKsyCm78pC1Lti/PXBsOn8FgktDIrpU5JLqMv2MUDkxD9pG0z4M1nX2aZGgSKsAWNgNWBQBQ5JktLuqjjDU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720772843; c=relaxed/simple;
	bh=Qb1lr9WPqRFsLtohgS7OtHMj0mxknZWOh4xgBiH2xt0=;
	h=To:Subject:From:Message-Id:Date; b=lugwP4ahqYSKl+hFeSAX8SQg+9ujOr2VezmRA+DKpAYaYoAp2MFv7O211xD9kKEGvYhmayTroW4sJrtna9cVCDvhGIVrCbTzlAFRm/SYrb8tJmseoZzRiGXo8yWzUwy5VU2nt3+1Ad6mMDDj3053KXXTNwfys665d2KPj6IJkyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChMjf2VO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChMjf2VO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1143C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720772842;
	bh=Qb1lr9WPqRFsLtohgS7OtHMj0mxknZWOh4xgBiH2xt0=;
	h=To:Subject:From:Date:From;
	b=ChMjf2VOO5YhIjemuYHkNIURo5drnrbYbNXmV/EHyomGGDXwSISjgPcRFdVq1B+EA
	 NXw7WkRZc80iCO6J6M4cDT+csNF1XH0RBCaP1XOoaYgnTwnIahs5gLpmOEZ86btM6P
	 Vn50Fal+TesQKVw4cWq7ALPrOIa2E/D7iSb08olXSk5rlixoBk30MA4ByBjj6bfZtT
	 n0odQGhuvP/B4CwOWhUWAXEiH6Jh4lj3/qklghPBlV9a4D0rm+BvTj5pm1QWcjA0oj
	 5S2kLCWvTkbNLQzkdelO7NnBTrZzb1D7/092yGObLXMafWshIMh5v2Y9vAxluuHuWh
	 zdsNqJzpWcT2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8FCC3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077284276.14778.4856474375720462047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c432ba24434309615c5c78f28bd9572c4e17e23c0b4980a24026571344bf88
Date: Fri, 12 Jul 2024 08:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720772842
