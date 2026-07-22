Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D0C342538
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784728114; cv=none; b=QYO/QkztmN808GVeFMo9vSB8mr7OdxAeM4GHLmPclJqo1rbTEFIZqXRGDJ/HBR/zZQX4SMMvEUyPomFtHSLxb6gttIy5U1uUWqK6RsqOkFXdY9IFmguRVJ7q0S0S1KZGOwk3l/9dA4tfXeKXqUlWpgj8nQbsBbKQyJA0cXsMrJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784728114; c=relaxed/simple;
	bh=K+wdJYYLYpbjxW2sbTnfTGIefodTBkH+cwMeRMLhuLE=;
	h=To:Subject:From:Message-Id:Date; b=i+UxRDY84xDeaP4DyiEbdmovdKBFghQO14td0nEwI6PDeaO/kW4madr/xcceud4FKCjGOxFon5zyGQFu7zmwjrnONL39f8osMD6ZeNb42TAxFLTJ+N7spcgY960KKHsR+njOas0aZFsjvAO5MfVcVVQ0jgy8c7xklsw/LCKu+oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZgJUqU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZgJUqU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 38B36C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784728114;
	bh=K+wdJYYLYpbjxW2sbTnfTGIefodTBkH+cwMeRMLhuLE=;
	h=To:Subject:From:Date:From;
	b=cZgJUqU3OqZFkizzQqF5k5t+CvH7P3UM6WaPO6t5u23StLsLIa2DMjpKoUEQb1hlA
	 FIMmjJOQsRJTOkRmFwwPlUXTBHKZDgBR/o666BxSYYl7duFu9YyMUjDzo96Z/nLFXs
	 MqMCsjydJe7UuMXnU6v4yMXa89K5w4SsvIuOmlJ2OFkuvsnY4BK2AphUVhJ9/c5g/T
	 R8IYfmpb1BA9+w8xgWsKmFvTNAIluFp+i7XMHK74mLIEbn/t+ms1bvlRNjawDd/laW
	 bXw6PwSGHX3p6dakW8nIvZjOk7YuI5f6xUmUYnNIOBhtCzVqSJeoQsS7gkdnkJZ/B9
	 8picwb9aLZ7ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBAEFC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472811391.19296.17134340676118017652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030d7c6a0fd257e45ccf0778b50e5426c7c1a392b1e7ceaa22f624c1aff0a935
Date: Wed, 22 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784728113
