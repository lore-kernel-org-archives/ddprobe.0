Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089ED316196
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762949394; cv=none; b=FCnKM2T/DS+4nB9XE1fUPkoisSuX1T6a/luFil7m/mEC71LKdWuBjYhfG3ur99Vm6q3mb9bKV1krShOvBvzqsY4AoSRQd5DDQ0CvG9Qpou0i1c5uiwhNFUCmydrE+8TRFcw+4oEOdiS3GBtG8CnIi7MTAV0ciqKDJ6AJDoc2fLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762949394; c=relaxed/simple;
	bh=JZFPAbXi+wpCoBSQiiBPuEtQ3llVfnloFqw/uBux+JA=;
	h=To:Subject:From:Message-Id:Date; b=ojH6JUxnleAoW2ypVfshM7FZ2gZCSqq+W9gfK7Jl9UFrBk8XAFWIu+aM9nNZsWD0+hjXvOSnuQbZLrTszeW02wB9YbYFa6zcwUWwFcJ6Fs4cAeq7+7w0T5i3uB+6J1fYtP/44xkiq9Gj9tpWfZGgY1i8Z9IDggO2CWgnd9aEC18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ls+D5l+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ls+D5l+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E603C19421
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762949393;
	bh=JZFPAbXi+wpCoBSQiiBPuEtQ3llVfnloFqw/uBux+JA=;
	h=To:Subject:From:Date:From;
	b=Ls+D5l+lzsq8CPwnj4VcsyD4HkdWJntf5bHbjpszqxF6wssmfKt2XMAyqI1ipQLVt
	 Y7WY7a8UAKG4OaWHDQAVpLvvNFjcRsiE2qIucK3hhwp10G0XyaVqVW909XQcd3XUHa
	 DFChRmt7U3wdX/TKUcRfenq6DBXiVVvpyYEvQYGmpQJ9CjGedRsWO9JC70rsC4U7Ci
	 E9i61QQNa/IvZQohpndBEN+nibBx7HQjAib44HdpnJ9p8UBa9XDMwx1DMMz4QpDe9n
	 uhpx7+z7NX83QSIULoLXAKWMyqnn+l7p2Zdne0qerx3aA/cm78qEElBny4vGsn4m+A
	 RIuMOxXlTOYqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026ACCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294939358.25050.3445561692312140298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86849e9cd107a201fe0ff2fe588b1d6efd4e1f8ebc51edaa630a17aa7ac9a4c7
Date: Wed, 12 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762949393
