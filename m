Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044C1135A47
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706132297; cv=none; b=cUH0Zu9OjtT41zXBL2kfJbopG4zMZK+w7pBUatWbikk7dIAQlE5Qu2EWNTFPT0ufGsl+uT0QqgLBqu67xK7GdfckB4GX7cAq7OVCGwE4pHowoeCHqlUa7wD5ClcuRMr2iYTlv+wTZAkWCsJ66pjqwq90PZp/Ls2gdlC9A1WVJfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706132297; c=relaxed/simple;
	bh=2LKuJVFWuBzKfkHODx+EnBHWfSamCVpk9sRwoKFDbj0=;
	h=To:Subject:From:Message-Id:Date; b=IkRKKYFDhXhzghAcuAG923Qh7NQfluvXRpehBJNiGup8v5rR0AJqpL5dg8MGzHF3aBgfnnSjofm1CDB6iCH0S7FP9uoXQkeILsvd+JOK9S+l0ETcV2VVgU8dHrD2Fc3QkW/o0xP3OJxasb+61aodeQGLGE3gBuOoD0FyxUAxWmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fo29f/oi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fo29f/oi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F9BAC433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706132296;
	bh=2LKuJVFWuBzKfkHODx+EnBHWfSamCVpk9sRwoKFDbj0=;
	h=To:Subject:From:Date:From;
	b=fo29f/oi5UomZl0DWo08yLY5dKcxzWnGCm6wRuo4z8K/xcq7MAcwaewdGZgPLSqZZ
	 /MO+40loWw4zQji1BuC8vVVgOdb3cFl/WhTBxetWazuVIfy1IoyiHWY6jiXkQw6dae
	 YymXe1fEZrNenckjENJzlDPfP5sUnk1DdXbik0ADZnrkdBaLKR9EXMyF8agVqoi2rT
	 1GpLXKpEPtNLRBbV+qeYYBwxywm0UWBX2vsFHa3OZDKsKD05EqNNxZHJ1rpUwZoAsS
	 1ioHl9qd2/PZoTlv/xXCb6THn9NGD9lNzmvtiqXcnY06YvCqRWomBW9KqudyDa0U62
	 ZzeHa189iAh1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 682F3C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170613229641.21991.4368364820255432328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f902822f5026a1c9a2b6d6d545827a58eacfce0b540ef8a3301fe2327bc9a8b
Date: Wed, 24 Jan 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706132296
