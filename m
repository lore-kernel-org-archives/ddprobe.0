Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56441A8F6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734954953; cv=none; b=L1d9YVH9xjMXfndamTcGeUFX8JgHracyZtQ98GOj2SnNKksVTgEDpq9nFRiFVXHh478aTybv5Y+LZ564Ct6RmkGytusPb3fx/jQoT8pIg9uYsUC2MR+8OpcGj4EUZroX662PJHbJHRlE0hA4QgVQbVoWhGzONUuAJkCXr7bLV+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734954953; c=relaxed/simple;
	bh=+XcViOC8zEXy9/MkRz9s734KxI4SfQa6JzFPg6p/tOk=;
	h=To:Subject:From:Message-Id:Date; b=G9dRoXbbygeUpOgnCzq7JTnZCKqXyLkC4Mtr6ti79xLiw9zaTt6Wq2dAKzCGrBZHDAPTZkP4uE5vVzRLXui0Kz5ht0Jb9XZo9q021WgDp/xUk0lebXiyTdRa41LC2wFkSiVLnS4DuFyx42FXgR1R9Fmz1u3ZbraG05yWvYJl3Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbyKfaxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbyKfaxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC8C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734954953;
	bh=+XcViOC8zEXy9/MkRz9s734KxI4SfQa6JzFPg6p/tOk=;
	h=To:Subject:From:Date:From;
	b=PbyKfaxLQdss/c2DPvNOjRRzITSG880TwSdziXH8JSEsrB52uVOCnIspWrJ5OhIKy
	 OhSuvC2pEjg0bhdDM5OFSlrdCku5E7VAXWImCCIOiZMtIzHo8KqJs8pynPE+vW4il7
	 mlw84CRn3QHQmvad0KABjnEhU8QccigTn93gpIReJSfgFRRGqqJ3KqO0bZusc6Yuvu
	 wprrU/sgMTChwmr4hFZQE+VxsMFpw9CfRlAok5YWoE4FgmdPPIK0nnbXEtCDwLAGpo
	 uneCmL8ixEYlAPVtPu+/0byOznanM2T+TpM937KQ6NT16gYkxCss5DUmewSNmA9yLX
	 I81+Cpu0T5vzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A0E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173495495359.30845.16793614923791587401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c66ec93880bb6c5bd2bcbb409d46767822fbf846e672913a17dfb1fbb241f96
Date: Mon, 23 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734954953
