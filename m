Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2E43FC3
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743862194; cv=none; b=GAhh65n6Ari2lVDk4L9+gXkUIvzzzJr/LjZPHVhkdWRJ87WJy6O1nq8OAVnFHYXSyRP51MQ0lKJT7mDn9mqzmrt18n5vHrZHh6Ouf1SXbdBty7xqMHBDoQmIa4Di7xx7bYPJDsPyEphkPQLyMGNcA/ithGy4MYchqu7K4KruCA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743862194; c=relaxed/simple;
	bh=lzpvGkolx/Kah82rvVfBMzKLJGjJJ686N9xmc7TG6ZM=;
	h=To:Subject:From:Message-Id:Date; b=mpgHI2Ggrp3gXIeHOla+x6stagUGbwTgseTCQyA8R3PCIopvQI71CfQF73pPVd3iOPjrn8ACrLOI1mN72UMbnGpkHVtmVOvtoZjJqFLI5WJ/3JoY23QeC4+6yyWOfQOSbgfvL7qn+fADvX+HZ/f2Q3ZswzwiGWES5bKxg4GIZV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZTbNQJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZTbNQJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC276C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743862193;
	bh=lzpvGkolx/Kah82rvVfBMzKLJGjJJ686N9xmc7TG6ZM=;
	h=To:Subject:From:Date:From;
	b=SZTbNQJb7+/9hXFSY745cv8K93Mh8VD0yxuId0ZVT2q4QEM+YFQlpzcLNpVG/zkTc
	 5qoLBE1Iu5n4PbtU96gc3SO5tL10yMVb+49xNaumTj9dfKif6DQ6tBiRk9aNE7sfpT
	 pLOp/+X37s1DcArDjosRhJMi25yhRfszuB1xX8+UOVnc9JfR+TgiHIsoBFndsi4Wea
	 h4Rlkuoi0AVZ07RpoqIm2nC1Ib+gqHz+n7YFDxXmNpktfEBqOVTi3vF6eCDzRbtexS
	 NrnLvEdsGU9wVul2asDM4RIzwrjANJCkRQsVy0IFZaK2IKQVetLk3uJYEHyl18xMrO
	 OUNuu8otENSjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FEBC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386219358.810.15551874435101014307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7907a01fd2036ebf48cc2102537356183ac125fdda674d2eea3e742cdf2c71dc
Date: Sat, 05 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743862193
