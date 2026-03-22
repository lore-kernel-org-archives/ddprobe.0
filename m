Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF593264D6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774139094; cv=none; b=pemwyukVc5PoMEdxXdjujH9T0vAn7Qb1yVQxpwvCcZkjjgV4I4cWMbV0v3Z/+zNe0MGDnhQsfmwjFm4dCAOObMlojoBPUCPw0RD1O3IZir8wR1UoIInYn8exohS9XAuIQwS8AKjFyiJSZb/Pc/nvqbDbEMvgrtrUPffMbLMpYLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774139094; c=relaxed/simple;
	bh=2oOIUI4oKc2JjRZk5fOV6OLdqluLnHeAuFzrmHVpCUs=;
	h=To:Subject:From:Message-Id:Date; b=ojXY3eQEOmmRqW2JlqfVycIvbJg4/ff1VXP3+qXcwHui0x0UDhthr1X1qj8/BWaL5P7SJzt/ZGGQPc2q9trPItbzELGuVJtIsXRs4pOqll7Z0VWEj0kwaBvYry/7c6guPAbnwbJ8J07ScFjRZe3TSypXXFWlTkMzxQUaIaH0sOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDjIek9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDjIek9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5066C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774139093;
	bh=2oOIUI4oKc2JjRZk5fOV6OLdqluLnHeAuFzrmHVpCUs=;
	h=To:Subject:From:Date:From;
	b=KDjIek9v00mcYZPaBewPlfgwmgd4F0+L6zTZefxBzcm+j8cjd49FE6pQQVTJ1E8zu
	 Y27PRE11OrEFh74Ih0TAtU993geEolKibpzGso464sGjfZa7UMQMD07rdZt7vumBtB
	 kUwSMP4HFJRcxem6oDB4T9xwEidbQKSEKM0lDnw70th19Qae2o+aS9ccWAaeyscBmc
	 KbpKbuA8N88zH0U/ZVfUpa2QPp+dju6JBoatUwEJ9+RY4jVX7qn+wDQLEei2LYOqos
	 RNAGrP48DZ7wTyt6gt52OpQcX0k9jxLckZVZvpYuKrmJ+0H/8hkIiV19ZttWk1SiHy
	 mz0lOa9CvFeAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93917109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413909357.785.17037703381796104627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4452b852792636ae35054efff4e22db33b3f834f0a42f4bb602dab7ca2df9cc
Date: Sun, 22 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774139093
