Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3481E1D130E
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779972754; cv=none; b=UQn5Z2x9xzXCLrlDN6dk5BmEMnUj+tEg/ED1VRifjWUlDFfAIBPsy3+fZxxsYGAbXwUmxyW01+EK7X2dqbDdbQ94U9GKqTfl7Au3bUFcku8bGaHQscLQTCpS1grit/DUo8Pt3Neu3gWYSO9PicEW+uAHgNBbxUW9hLsZYVlzTQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779972754; c=relaxed/simple;
	bh=qjZMDoeKUeHGSXgmqc3x1uoIYJ58wFx6RTVbJVx5wUQ=;
	h=To:Subject:From:Message-Id:Date; b=QTrhGu3PE3nmG0ZQdCLPJd7MSTxxT6sZUSOsoAHCFOzA3JxZ3IXNlQ1ODeE3mTyqMouKF1S1jDw3fhybd0lh9qHQtOR/wSChJPjDzjUVY63JVtSfKYqJRnANeFBgrxoqueZcqqmXD7wwDj8qdvqxK/iJNCaObPuijsLE8QY+q4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5ACul5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5ACul5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E33C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779972753;
	bh=qjZMDoeKUeHGSXgmqc3x1uoIYJ58wFx6RTVbJVx5wUQ=;
	h=To:Subject:From:Date:From;
	b=A5ACul5W2SAU2jssXtBRcwoIKEwoPVXINNe39l/HCpaiFmBjzGyf4A9PcBMGf/8q5
	 x0BVEk/cUlY0Wf0S/VlVfYOQ5ln3tBRmAVPV76GtauejZLnHLrk7o9oa4SZAoByfLF
	 phn2aKYsvkII+efz/ckZrG5XjA8ooOpNqlpNJ/0cs6H+HOyqJXnniw586DzLI6BvXx
	 1TIvixnzScigPa/9si2SNuQ47TqxdTtFgtI2cOtwdMPXFX6++fSFh6OF7q1ZoCapw5
	 axxR3OYbGKtOyhDVm2kvVXU8C7fgNqYxLpr+kJDuEPQQYuS7vckHDM0XkX1hOnj4z7
	 dtNlX18t2wjuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9120CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997275368.20323.8541354720758705912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1d13ddf9a65f6fd9ba351b6a24d467ee374f1bd1f4d1deab4c3178b49d666a
Date: Thu, 28 May 2026 12:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779972753
