Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA9113AD18
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738029354; cv=none; b=EuaIeYRYO37LXS5/bOxY1wB6FyPJaAxG2sG4d73ZcqFTD9VnQZkxv5MWLEg6RObxmKQMzAWdrGEBhAdO78tav6yKfRyfbE+ODzwoRd8YGHmbzTevZ70IMDFjJ0Ce7w65sFzAZ0VUphr+ES9A1YMVRKEe6nEwVgTj6A3S4iTmW18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738029354; c=relaxed/simple;
	bh=aD30iwgVM4iKzqI3boDCptOdok5+AA4LFG/WkOnpXIY=;
	h=To:Subject:From:Message-Id:Date; b=fXsY8/OVjxaAqaVCXlg71RMblY+x7M+edV/ELe8adi9FL6vvW7xBAZpQU8RcFhkOsgqyM+CuylwGbfM2bxNCdNzPwV9kjEfPOalEZ+iIPERqwR8ASPmVSoZmrCJfeBzzyb+hLTUXm5lISRDaIOU4syXoc/9NnN9dF/Qac2BYG6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5J/Jv1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5J/Jv1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9F0C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738029353;
	bh=aD30iwgVM4iKzqI3boDCptOdok5+AA4LFG/WkOnpXIY=;
	h=To:Subject:From:Date:From;
	b=m5J/Jv1zxH+rI2JoI+xPdOFFklwB8F46y45BAZreurdP6n/vkq+N8XLhZ9m0Fxgrf
	 Fzw4kcYACSh7xSkOsCw22niIibgDg4T+/1Fm6HDHZC9g2xSlP69bUAflbuypYfhH8/
	 CCDTLI6bNcAFEfXptLQRXvXk4ZVDDqhHD8P+dUzedhlXZPe+tlKVLIZHola/bcPo0c
	 UMFAp0rI7iYBIZDu1eYcrK+VQyJUEo3/QvZQuIRy0iNrFKYGALvMVWr9lZFZoDPaNS
	 YjgApIkh3gnQttlkOHOURkLe1z+40E6TtzTnPqFh/plDfeRYDojq/lRStsLuzwdBmQ
	 CuK9JkYmNUYlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4AFC02188
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802935361.14415.14112616964328906655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2b8173571efd33996ebc1298c8e74b763449a8729d05bfabb7a315ee698058
Date: Tue, 28 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738029353
