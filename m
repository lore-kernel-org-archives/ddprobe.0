Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5289419F12A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767182634; cv=none; b=bIZc5lwsbOeR4Jzl2+QqeRW1QCdtUbA/CN5paBaYo6ZyJ/GLJ3ImXBXWlMqdNAYY+u+jSY8o7jhDMt68zfCwQRcW1e81cA54AGjRln1VjU5owvzBO/ahK5koGgsrmjZnciIm3Mlr5Mvuey8ZohwAoxuRUNG7ix+l24ZNIkYanA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767182634; c=relaxed/simple;
	bh=SZHQygWGbW0YFJH37Am6ZZkhO80XwXk/jjrBH9v+ZWk=;
	h=To:Subject:From:Message-Id:Date; b=WTdsDwEknPNznMEnGNjyim9DMZNzsYPp755/r2kkxF+ubsxa/wNroFA+tapJYx9d/i/r94ZV8wMfsiGtIx/VijmLVGu4RsqkjXq/ioJvYC7jPy/Q870egqDO+G4MDG0thomN4nMc22NhJDn+Kz2PHmiOdDGwwpVz49cXaDTMcmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYeXap/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYeXap/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1439C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767182633;
	bh=SZHQygWGbW0YFJH37Am6ZZkhO80XwXk/jjrBH9v+ZWk=;
	h=To:Subject:From:Date:From;
	b=AYeXap/geiL3Wrx8/EyhF1uhsFLC7tgwtA5TqfMuY0oCiYEKu4IHPqebQaa/hJHL7
	 IHtvQXwNL8oLr6yKdKsEo7wWVRvmBupNpLZzzJ/bX6Zx66CLVklNuWGlvfHQZ9rHXM
	 BV567pwENt+KM7WHmV8IB7pbIHQbyD2NPNPo/jhOn8s5bc25tBl9mCKEWA+VdXEb2n
	 Ljtn2rBQknD1KpIzmHUdio6YhkJumcY/QiXl0/e9Rw4w54ykGhUU/l0bMoYCY+hQyS
	 ZFCwdDKkXP/EfxCgTf/DvIwEEL4HS5CWaiOEOjBikeKxMDGGFF4ug3rgWLLCCzS/2P
	 REykvrM6lDN9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC97EE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718263358.12460.12946817977897524721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6e4fc1c14cffff52fd6bb7e0f480d409bb40f65a40bf32343d56c7d92ab7cd
Date: Wed, 31 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767182633
