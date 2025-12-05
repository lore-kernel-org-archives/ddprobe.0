Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377D41922F5
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764918774; cv=none; b=U1RCsmx1wumzKl9rdrnaPhrPnswnCbwoCR1FapUn/WYZ4YhScojxXzWgtpsuc4gk2xINbhejYC+KpotZIRwbhh49xXHZKqgzlXy3qbZH8Mge9xjIixglTfCRyKGAIycbi+qe4rOqc3COs2OG20Ly1YHoUpn7iqO0zPsMwGt1310=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764918774; c=relaxed/simple;
	bh=0b32qbQQ28VVoo/cQJI3NIivUFovp9c48op1uWJE/BQ=;
	h=To:Subject:From:Message-Id:Date; b=O/SHZIyQXxsDmWwMACAlXsfYA+6vMP9WDcxVwedBkHK2idBlhUrEoqC64Chmvcfdb7zIvJtlglh3taz/N8fchtlmVmaEg3m4gLdtGsc2q2w41thshhrA6K9dStsF1walm0+SJFCGyhxAGnMq/gLKZ3ew370VRtfR9chxU2rPOlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MybErtdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MybErtdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A452AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764918773;
	bh=0b32qbQQ28VVoo/cQJI3NIivUFovp9c48op1uWJE/BQ=;
	h=To:Subject:From:Date:From;
	b=MybErtdyOm0sABiBziFItC/rX9wI9vqsjMHlwpZz8G9efWkqfL9/ZkKi7+OYpysBC
	 VmuzLrOBPqU3OAGfhcgvUKaV4LGIbJ1e9h5CEG0MKR8F0WwERSNeKMx00lwtI/H2Mj
	 e9b6HNMThY6n3HHVkQV5QApaxPuPqASsqQrDSckBpu1YrLWQAIRxBmiXEWbmLIW4WF
	 YwwgoG+3Pq0urjaRwQs+QxypWCfJBqHj28I7iQAV7SwaALdqRTOcLTRu5DIkJ/GNlX
	 vnHapXJgKVufM1q8A6pXMhr1K0z0oDgeoRiMup3wnEoupsxof6n+NdQCNYR/djup5K
	 CW5R80x2dj7Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910CED2E00E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491877358.725.7941507504088295146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d235b497ccfbe306324c93d3022deffb247d4cabc6b4593a5310a7bea3c113bd
Date: Fri, 05 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764918773
