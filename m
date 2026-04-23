Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F023624BA
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776956254; cv=none; b=DR+zdYZk9NFF+4I1CNojQM3Cy1yYXWOeZqv7Sv8TX89ST4R8zp6oVo3LXUxw8WAZya5ngDiDa2Wr+wMRq8KzJ+/GMh8iAEX7Jv56duCVW1cOTvQE2c3ax4273ev6oPRNmbmsgx5WlOFR60Z322l91SImPbjdbapW7NkahhDzne8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776956254; c=relaxed/simple;
	bh=qeEC4IdzvBaJ2wnZhNkwTSJtZY+hlCyQh8q0Qso+KCw=;
	h=To:Subject:From:Message-Id:Date; b=t8WbxFTso9GMkB0qPiMaye+tLSEzoJUzH/j5dmA5WxZptydpk4GP7aX4tL+OPAxBXlbkYVOmziPVYrfCYuMxCb/uEu7x/OroLsKOFqYqux01RzeXQ1LSSlUgj3JXohUol6WJ3WvzwUlysW65D7tDKSQn/v7IvD5pKtKyHwKdKEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Egq6VtEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Egq6VtEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B41C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776956253;
	bh=qeEC4IdzvBaJ2wnZhNkwTSJtZY+hlCyQh8q0Qso+KCw=;
	h=To:Subject:From:Date:From;
	b=Egq6VtEgwANlTZu4lXeAydvGQJ09Oyux2UnAVJ5NEJkStBZZs/fekUqOl0tLdxcVj
	 p2u8QSbgvLe5zqhHrjxVg61GA1jHGL6963eGJhhKV4RBkjDSlpufxBc6L/gdUtIeUK
	 9JPQl+29bjXEfI5oUs42ecdatdeswVQha3Uzol5hjEARCag/59dJovAoBX4qhQhVKW
	 eUJsjS5f8CUJmB9myimTPMzZ1EgHEDNbWOXs0tLcsIIN8lFAzayaBpGOaeGMuXNAQz
	 v22OUJW7OeZ8leWGmxHjIkrw1I0FRz4qZAtUORVrCKbqMYz5MuffH+VKXb6/Wn0s8w
	 Bwe2ZBbA+6b3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB444FC0340
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695625369.12948.17956414397102519648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede2f92764649048e4dc303cd7bc691b212e67b0ffa0c3bb862c9be6a2db3606
Date: Thu, 23 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776956253
