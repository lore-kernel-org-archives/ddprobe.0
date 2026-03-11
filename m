Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B64E13B58C
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773191694; cv=none; b=MSnoqzKRIfkYyN5/rD+aHuYMsReItOLP4WARacvfi4KsoTSRG7xItUqabD5buSdX7qQ51qNmKBGd5FbMz54BuIJZDARrgIDtzAwj9uHPqRoOSiNfefU4OqusVisWB/9l6rFcE+KjQP3UKFpCwAt2hpFYj0Wbvk6/KdsYO9ZEgB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773191694; c=relaxed/simple;
	bh=XHXFqAV6POL//kLGavf6pGvQGonZAAKKD1xy+iYeFmc=;
	h=To:Subject:From:Message-Id:Date; b=dCova5kDVm9SJ+wjLbOuetjG2VY+k5TB3O+0PAlTs/kkezsw2li8cZZvtI4a+3TImSwF5MlCgzL2smtUHSpOvBe4BYRlTVcxOSqByWEbZiHFA6x45Rces40IIiC++f/hIWTJd4HSQedYLGZ2EF5iIt6uvM65N2EKOoNr3w8WNyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo1kU4FX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo1kU4FX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A624EC19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773191693;
	bh=XHXFqAV6POL//kLGavf6pGvQGonZAAKKD1xy+iYeFmc=;
	h=To:Subject:From:Date:From;
	b=qo1kU4FXb15jBh9szgTptIzcQHdVHA5ymXk4APW2aSkc55NG6p4w5B3K/KOZevhV6
	 by7U9Q7SGg0VKtN1UQmubUD1olRtJQuwVs/G/4jy9Xefu6dztH52GplqL4pvBlXlOM
	 ARKZxGybBmulRn9rq/NTpbAolFfmipXwyXqS0q1Mxsbm5dYIQwWnYgwUWJBoGTGQvI
	 wUOfQOyYooRKg/ivswtMczoABFZoqGEAY3g054KDsXbHgLzyrFongiJx4CkYtbX0rz
	 8zWPw+Lb8a5sswDrAJIAspRni9nF8RXBTEWgGdBbgqQqzVZezI59c9EaVYHG65VnFp
	 uqtjNYY0Ve0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909CDFD88D4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319169358.27930.17934779727140129864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c491cc9fd28c037c7a0c644b8f3a065571274318c9c5b813b2978392e43bfa9
Date: Wed, 11 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773191693
