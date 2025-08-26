Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E533A1F4CA9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756215594; cv=none; b=HEQdFtEVtVaFH0ctMmDhaQSDof0vhsG1Vr1+/FLgZbfIm5IOsnyjOA7agf5Tb2kjHIZOxXeJ60l4iaMIN8+GjWHPbpyl1wbKIZVYjs2hNNP9hmU/JZLjPbCs8nS/WSY3VM9QyLT1BVeAEn8Udq/QLzc5kRwMBOQNz+5RyFKpmgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756215594; c=relaxed/simple;
	bh=PHTW/3PlvVG24shzAkn/yJyysYoLkC6adHMYakxy7E0=;
	h=To:Subject:From:Message-Id:Date; b=hSyAg7cWhFUo6Xn67DNln35C7XJFCE8nr9H0jrRN3gskFTzuygGxDF1vmGc1I9ach/D48viSdfvGjoaOeCh+kN5xsSzV0ZVeCi24rndt9lQkI1DLpwq8stAzMN2i3AzeaWwxbkSOdWhJjk0YbjG7dDFN+1r15kzhEy9o0bDG/c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlqYgwje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlqYgwje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF3BC113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756215593;
	bh=PHTW/3PlvVG24shzAkn/yJyysYoLkC6adHMYakxy7E0=;
	h=To:Subject:From:Date:From;
	b=HlqYgwjesHjyRrqXN8WzDltzIY/zzCoBjXrBHGmrFYCmcOdaGV18BmxaWnG2KU2pd
	 AdKWCEOaiiptM8poYBql8BFEkQ36InDBZ7HkRddVYF7rz/kaLV+JVW6joYqEQkbGzB
	 7PWW/A5KrJViZ3Gl6VAzUXYRXBaTVpyqZWmRhY+vf2QyNnJEmadA4FRVDLQpZ2pUJZ
	 E+Lij1NCi+6yD+CU2W0WZ9pSsxyRWHbOmv5pBwTNTpXEZMiq88d77ri8fOqixHr+DH
	 dwE2E2+QVRjd/flOg0TWbqtG8HiqZd/pFN/ZE6Jd/htSxPLdtH0EcYM5BWRkSpAcag
	 eHXTtlLWVtIGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED95CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621559357.6152.4059983361910004575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b56043921a98f33de7b16bf840fe577e108fa5794eda170a4b334af20a02019
Date: Tue, 26 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756215593
