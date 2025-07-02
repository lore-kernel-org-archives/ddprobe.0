Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1C61E8348
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751437194; cv=none; b=qXXtQSzM+5qe4tuoKmKprq6oUGxkGVoTY2NNPixDDm1xOhraXNIxyXw0deEr5XOgyLsXCbDqsj9tzsTmUAIH2HelUNqPDileNJt2rkZ3EhxBS7YViQbu1K9gc5+auvU4sUbUHIy14ACOk8tIbKh/vxRp6Yw4O/0ADEqhnEdNDJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751437194; c=relaxed/simple;
	bh=4xq0OHxMC8R7Kv2jVw35dEPyO+QxWLQcfrovqy/BoTI=;
	h=To:Subject:From:Message-Id:Date; b=C9NzJoR1rTZhII1YB/FkFwWrgrVnNKMMug5g+gBdfbTDeXM08BlD1PvPdH58eU+KUMRa1+dZPdgjnybG0nj4egKo5c5JYtD7W8Bd/1ms7ZLNRXprl9G/yP5LeD3oOZkPCgMyCJjc8ZdxwNv91z6jm94pzR1BQVEf56vB7ZCtSM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGGK5ubN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGGK5ubN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A112CC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751437193;
	bh=4xq0OHxMC8R7Kv2jVw35dEPyO+QxWLQcfrovqy/BoTI=;
	h=To:Subject:From:Date:From;
	b=AGGK5ubNmF0R+UvI1QdJ4R4fT8f9pZeco63vrYeRZeb6yhXstlUBYcMso+QIDld7Z
	 k+OXsUifAA/+G3W+UywnAwC/URQgxz5xWzSwranOdsaGfKLj3q/TPvkboQs40mS01Q
	 +bBxVtB8on9VCJLOxeWMAynbk+RuddOlpzPBfKctBI22TGXzy355rA8R8t8UV0YziP
	 4S+7k1NbzskaHPyey2vwWXg0b2+jTodTWbwkQlIa8X4el7F7zccf4SrjlLRosvC9jt
	 gWdBX7fanzU7auv7fE32EOoiFXxU3is2t24s5WKdwK45AL2uzTbmHSG+hgwJL3JJ02
	 8NGxcg9lNwx5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA16C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143719357.11310.13948309363081475789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f15ec9914332554666842ac9a4c0e2de339a646db0a779e8c113c9e52a15dd
Date: Wed, 02 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751437193
