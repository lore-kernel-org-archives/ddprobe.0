Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272BF374EA
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726593954; cv=none; b=m3xrlD6OwNu8HskVztDFBxfJ1PTgc7akrjcWFVUbe1Eo8J/3YqOa7IUF1YoM7ISBXn3nkWSFo5bRT0jfy7YkKUMwSqSZR/Uve297cp4MiNyhbxV1bKPCAc32y0jaw/SZvJhqz7FctqXukdNIk7/6u44nKSky8f4i1P6SQdOP7bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726593954; c=relaxed/simple;
	bh=kfmpcRBI/OxJMIYWbF9SQtQevceeEwpBcm/Ff98rjPc=;
	h=To:Subject:From:Message-Id:Date; b=HiprsZCW35keiZmZ9yr4skU1PYG0DQTYH6vL0GI2MNYEFyJjgrwbnxgVSndamwMzElmvWlhtKjblAGzg/r6/SBJqBzm0rfh+7uLMzALRpXYzxfRe+LoewGCYQDmnURnhv+Z+ujLlmpaCq2nYUjsi6HTUu8SUp2VQ0bIbc6DTbDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQsQGWf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQsQGWf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21AEC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726593953;
	bh=kfmpcRBI/OxJMIYWbF9SQtQevceeEwpBcm/Ff98rjPc=;
	h=To:Subject:From:Date:From;
	b=aQsQGWf4qYakwO6NThmenJzwmYcQJjMG7x0Xn9tUQv6oiQKcTvV29jksThz8v1H2/
	 GuHghTr+95jkwxFrtylhZquH1q+WxEXrlh7D5PqaGN+A8nxqx5vBMEcCcFxFSli0ww
	 VuA7QB0grmFuYo+2rJuH1Kc8eFRSKUvXzZRdguqgpPv2NwIfxY7Q0Q9nCO/FHVpkWN
	 BrpLMw/5QqIyIRivFaJnz/LrzmG03ndm1B38kzwX/2dQR7PsiUFKwbF+tDLbjgxukq
	 09xRp7aavOANDL8pXdH3l/A9rbKhN4vvYU5vXbpX4p+JKHmFqcDsB84GEMnf4i4uRc
	 xHXl8dYviK0dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A834CAC591
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172659395362.15537.3743611868451352719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b9c40457e3341404ade8c2330f26ca192050d4f5c42ea3dc38b5eb3987644c
Date: Tue, 17 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726593953
