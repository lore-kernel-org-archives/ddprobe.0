Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B00A202987
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751650194; cv=none; b=RNhVGx36vSJJ+lop38mCqGIAbkt9dYK1i3UCoiT14gFAENMG4JpXNBAs2morJ7RVVu7x6Z9oWaGNjC+b5g7PMMhqY38TiPA77wlpgjLg4dHdmmMVk3AeovYXMxChOyUSREuom9NvxS7J7rrmrOH9xX4qssl/bVT2dMBzukjaF0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751650194; c=relaxed/simple;
	bh=K8he+8h4NgH1qu1fqolj8dhxNiT4U2IKOyqGi063qTI=;
	h=To:Subject:From:Message-Id:Date; b=AyfDNWIg3/lxYw7Fkb2J0FGfsY6rF+iNJMPYQfiqTLr1uxo21vD3Tf2JOYTY85cPZx2UvL5ognqs8Qe+hHH0Mg7QLOCbwUTDvh6c8sudCEft9yqZZihWEAud2Kwbz8Vsg0n1BhcX0GJbLNridB+9dL0FjJL0GGvEc40ACAKMH8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bH3EEG+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bH3EEG+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EB9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751650193;
	bh=K8he+8h4NgH1qu1fqolj8dhxNiT4U2IKOyqGi063qTI=;
	h=To:Subject:From:Date:From;
	b=bH3EEG+0KRtjg4wLsnWh7rb+SpU0QFDEYZUtM8GvxgQbNKzOhbhJBhxDnBdV9K/Vw
	 80qi6OvJV5LEhEmfy70luArYMv//yfW8tETVhhTQHid/t9vP2krCyES5AyXV2yM/Nt
	 eugPJWV1RW/xD9YXpGOP18wGSB3lQJbKU6L1Hl6cGoEYFLcK5T3cFlkQSQkCuT/tH6
	 lofPVAzEKx4mT3qRB6u8H2fypgLG4gwhUjMAiP7w2nfpsi/QkBmkNZ8U/3SXlwvHOg
	 4zptDrDUVrD01k/o/br7OxPZS6IMMSqMeLEAP2GtWv1xoUpXhKkWYFmK4a+eoy6y2V
	 zqghsz3Gpy9lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF33C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165019357.18076.3094888455926911915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4269f40e18784230522921b1c631b9c90ae45a415e30ae6150b8c02a16fc9a42
Date: Fri, 04 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751650193
