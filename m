Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C8514A98
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710510497; cv=none; b=bzoT7SNUPduFD6NVTLybwqr+SDxbPTxMCLyk/9jZ2gN1HcibMinOJZ+o4f2K0NwUjLqBELtH6QsqFsfR7PolRuqeZNptpKWJDjyeAZQYHsOIDF63UALITGNLbIALWFWF6GYwlavGmTzmNPYJgaqlq4caiKh7y2Gmf0uODbGP2Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710510497; c=relaxed/simple;
	bh=8AYOl+L+T1jjZlu9QSaHnPta9h2ITriBPVDYGIHEIxw=;
	h=To:Subject:From:Message-Id:Date; b=jeBn1pWpT+unq+VIJ2zQk5Fn40NtNa1fGdTHXSTKijRFC+urTGLsXOxfCmC1aBXqY83ELV9aOkq5Tfy4JFuhFA0M6oZgzit5b5Ka9r4zMzEjFS/9fB+agOtc4SoK5eLOZZ8VNY4KQ1zvKzUdiDRL149BiLmeLEmlqofxtLef/fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkPEk8LV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkPEk8LV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AEDBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710510496;
	bh=8AYOl+L+T1jjZlu9QSaHnPta9h2ITriBPVDYGIHEIxw=;
	h=To:Subject:From:Date:From;
	b=tkPEk8LVEiuN+zzEXIJcayPqo0JqP2eMKQOprGSzUQ5vQuATxzCmvZEiSSFKvouUK
	 Y8cuZVc5f+7qYUWz7FU/Zn92rHe6qlMgbsAC9i8khUMbo45AWgKzvizUDGCkPF392b
	 ypoyWSsA2Lhd6t2ivirFokZr5CDJrbgcyPXKZy5kta8XZ8ETShSkOAcwhy/QL2chs/
	 Ym1bMrFwKsogbRVJDtelX6kTtXaV21GRHuqa0subUOF3wYGbXRqFD0OolHH+ymLUMQ
	 ltycCvafhmGDShJRchSOIsKw9+RwohHkDWKN8G3zgsVQvwqeRm/6RixNmTr5HOQiVn
	 toeUlxY354HQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD25C54E58
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171051049636.25439.12041041812687150502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c642c9c494f40c79d2139a249cc1738b2d3ab49afe43f80b6eca0d7cfc91502d
Date: Fri, 15 Mar 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710510496
