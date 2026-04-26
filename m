Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AA917A2FC
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777174054; cv=none; b=c6ozKjqNM8I3Jm1hPHyQflykmhq1/94aRvHpH3whbzmWYYRgBx8bcHJg9PolFLalGSy9oEoqZi1qF84JkUFPhnApffPO9fYDShRqei1bzQxbIXA5LnqLAHKqsP7cDwdY/JdAuyCNqO4de4fIZGw9AIjqohXkN0QXoO12ed6l5aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777174054; c=relaxed/simple;
	bh=HZL3Kf8tDidIks4AQ4bjv4IGMlvZbZn7SG7QvmxOtOY=;
	h=To:Subject:From:Message-Id:Date; b=LQVhiK1f7KL1XdW2GXH1LcIL9GYTikSdwxnRdUn2VVEoJXgkyptTSjoNTroAW/9B3J/AH4YlmhXdIOg7PaKqm0FB7zwbgrbj2N55mnlkhKjgTaeWbVfdcoi3Vf/ZtjFbDlggzDom/mgQ4ium4jyRz4iYgQCXyaL4QXxb7VS/jLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkagX7kT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkagX7kT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A8FC2BCB5
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777174053;
	bh=HZL3Kf8tDidIks4AQ4bjv4IGMlvZbZn7SG7QvmxOtOY=;
	h=To:Subject:From:Date:From;
	b=QkagX7kT+JSm8/dLSN9Un4MoH5xfmf/hSst9eRh2LfrT14nbnuc9XSvKVSg8F9cIR
	 eWSKlPrawjCPHeeT/jAs2Y25DzzjEeEHN9UVZkBgFSEw1OwiwsotICULQGfYsBvGi7
	 CtJ6lGwe/ilFgHDWl8MD/5CugRzkIdE4exbC1TnCH4vOWvpGyV2edKZrUa0bi/vcel
	 jII0aX+7EajmmrZCBy4GwEOWHf3qaSMt+Qf/RCPDI/geNfy6qnjByU9UziL6vK32Mn
	 brpgcH4M1kbTJ7SZgbFBHNUwbv7pj2tTRy4S3k+iLy7fgQ9IiIQ7Vzlpy7hF/5wCg/
	 79N4qV+x8BE1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE71BFF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717405368.22311.3022145244932740917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc617ffd601b9f3e523031e98f292c3dd843e903a3561491aee3f5f3c5a85cc
Date: Sun, 26 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777174053
