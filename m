Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21729270EC1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768258434; cv=none; b=srnCwE5sNx2kbDyCIPbTwGISRrh17gumTpoaXwlLoXroP70jWjJdQyUZxfTJWn5VNi+uzOA07TWIf1Rs1KW9ZdlT271DOF4Mgp0mer/ppuDJh8ByXXHq0DI7huhhEfb0A4JxuAP8a7cLl3NvggjcU7XNF04dWzRnQtXjfjaZEKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768258434; c=relaxed/simple;
	bh=Jr13EfLMf42i5yzN0toLHU3HLRqNxI8zLZRmkWwDbuE=;
	h=To:Subject:From:Message-Id:Date; b=JVgwlhZFXTtPsusGVQzZ3YVphMnF99XQutqgJKMvpJRFiS5/zaCIjiV0y80Rml0bHFcUMDrExhQBMVcyYqvId71LDx0/6Qk+18bxcRwbkCC7OPGdqqSLh8YVhsgK8v4on7ZWj6km4qkIyjl1yHsml+LnJvn9rQ5YuB+UkKgIOnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBzok0v8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBzok0v8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE23C19421
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768258433;
	bh=Jr13EfLMf42i5yzN0toLHU3HLRqNxI8zLZRmkWwDbuE=;
	h=To:Subject:From:Date:From;
	b=MBzok0v85cH9G2Hol58JRN0N+CnksOjVyJBtRJKkHiZHIAD+TDPJGlVvjo/841FjR
	 vwI5TLl6jVyve0yaRv08UNNn8HYFLH3sUG+HvT6ZevQb0UyWtOEIqmX46PV7Y3+++A
	 ToEUH58Tmy9fXDc2HR4vZjBJwBOgBegd7jtnv9A0Bm25jcARD1gm+D3BJGmvXj1LfB
	 1tvZfup7EnPIyCthblXTRJZOQQmwnvrkABRM8cahhep/F2nAKpaRnvvvYV5UGpa6t1
	 4SjlhNxsOEooeX5TZo4ym1aFoTKZxZo6Cx9m2BEP9rUx0Xi+LsMMsjVKb1Q6C20YFb
	 85k4KKiKNRM7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911CCCF45D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825843358.22118.7691747325213904645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba34e385962366552deab43cef7b54b082207106be04e17cad0e138b701c43c
Date: Mon, 12 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768258433
