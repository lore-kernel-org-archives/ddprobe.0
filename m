Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36609136E3F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728254754; cv=none; b=MgNmPSd0ou7OuXyedrA3RHHqiWusATGGh+j85Tra3f6FctrcfXtfiJwEKD7EU2M3ompMjZnqIHaDlzqb7+qiVATs+Ic/ns5ooUlO5kBymQ1q/AU43m7eVRzCr7BEEsg0a+8w25kaGqs0R+sQqJMEp8/gSJAK4Y8t6n6r1fwwpJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728254754; c=relaxed/simple;
	bh=dIkJNk3YGJvzAYTnIkqJBnhHoaYH7i61APk20gBMbIs=;
	h=To:Subject:From:Message-Id:Date; b=nX43Qjtat08z0sY9fnXwxQuSc2PBELGqtuxeYiKtOsi8O0eDkLpCuxzFOzHuzJbkGnO5EZyyk4yKc3HIaibI3j7bDjPSilOdJXHE0eSsk9//38pYG1VcNzHMfWfojOYZgWSTKbGP2DJTCB6EL988MP6apKeolVgwTQMyXgVZNjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDD4SZp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDD4SZp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4467C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728254753;
	bh=dIkJNk3YGJvzAYTnIkqJBnhHoaYH7i61APk20gBMbIs=;
	h=To:Subject:From:Date:From;
	b=BDD4SZp67UfHURk4vlA0pgRl5AVMmcmSoWI7aRx/5NHpv0buc8pXw946xGAUf08aS
	 twUUe/C08XoqlerTBfyzQbfFREqwEu2xhXAQaLHnKHnn6DW1CX5cT5cdofHxX2zmKr
	 ehUUHiVhnNwryOCTEqad689ycl0xNMhPGrMsrovLkLoTUkDZcyNuQsDE9EtIXdQlPB
	 WTOrkH8l8iNZmCsuJDT90q/ZgD7N/hv+eTE5plHJ8e1JRD4e7kIVQ8q/4EE/FbVn0c
	 n0bZd8zo+G88lPYBRs/a0RQbDyMifoYCPal0cmAXl4/2d/t+fp7d/GkrKmU11hEmSB
	 IykX7rakJAsHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91524CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825475358.26813.9197730460877639880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef373987c3980dbe1bf2db5e77e0b35878129b6ad541a6ba53179f1ebb5ef9a
Date: Sun, 06 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728254753
