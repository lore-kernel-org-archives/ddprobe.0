Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292E646BF
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731556554; cv=none; b=WVgmSF6jiEUimRUYLFa/maj2+BZjVNd3GNwGRmsjLDYHwaUN0RZkbB/fogQBQM3A4NSD0HZucPTpOA61bDmoZh76egWu5cTucyWO1U0IYGHmj20V0jS5ewM4yqbtS9w7EZ0UBHXNSe+T/uhNZNmUIgxfGV3vNhZHrPZI05RuEnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731556554; c=relaxed/simple;
	bh=kruSY9e+nR3sGVPKwoHli+d1ljZPCQtY3rioCO4Fyl0=;
	h=To:Subject:From:Message-Id:Date; b=WmLgjIFrqmelT3vjX2f4jUXR+ZcmJVfVdBZw3rWagllEow99Zcl6aGidA9Ce4xaeUjHVVBoUu+JUMQOL0HBDi2i+jxbVcoqUEt1GJfmORjyWk9zuupTzuWcOBq1Eaga7zDirJ1+IbHLBHd1ctjzl0dVXSsK8JSJC4fQ7uadUA1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDT+UWnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDT+UWnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CDCC4CED0
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731556553;
	bh=kruSY9e+nR3sGVPKwoHli+d1ljZPCQtY3rioCO4Fyl0=;
	h=To:Subject:From:Date:From;
	b=MDT+UWnwNvaBJMnaubBuU+hJkF8s5p1iIauJD4cg45+XbvGS2GCetPc7UXJz1d/FA
	 ZD5xq88oh9AkI/ELcry/HaaZ8Lq3E5fGn64704DzxY9WF9eCoxvv84ulP38QfUvhDo
	 5waZFoGKSzYRbYAnQb2AhcR34lndaSvPMKcKSa4QhTvQapC7dafmEUYa1o6Tzj1dUk
	 wmC9/sFwXuvAPPzATeQPBzsQOhRcs79Mjt9YpwUB98v+c67VA3UKysK/5FNTML3jmI
	 MzfU0Dvp8NTnLY47WPxi5Sl6W7rGjPXn+v8twIJ8Imb/qWBoh1s+LNS7FGUFJzhC0s
	 +akhrwrf3HsUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94850D41C00
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173155655360.13305.17265916400586073873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71a5896a1ca795eea205c25a84639e69f812ef9133dd60be4615fe78ca2dd0d
Date: Thu, 14 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731556553
