Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F402DC77E
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746199194; cv=none; b=hUsMmqpaxI5wVfTbumD9ARfZxwfxdvzzHqdNEN0TCNMlYnzMeuJhbJV1/phKxnJIKl4TsZ6bPu0MElX7Q34jxwg5yJAdoKF82YMFbnaHzujeCShLW8Px+J88PIcNM9K+G8acScV19SExppdiO3XTd2vFTkiXpZB54BKnYnyrPRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746199194; c=relaxed/simple;
	bh=fTuDHg9lab2VCplfnOznxwmbaEvhFlK7u2csaOgSqSU=;
	h=To:Subject:From:Message-Id:Date; b=TMXqd9SbR6FHjHmm4eLcAXyzDsQMXZWhjTK5QDJ3oIgFz5NgS4yK9ly2PHq/nEtYvFkRlHYtw+CwBtEXyXwIsRYs7GLobuWVHZsEeJT3c4rvkkoDeOAOr8FZwbxRyj10EaLhTx8ZR9cbN53PmPbCpWXuH8glGxu/Cz0yZRjAQZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2xONVPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2xONVPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ACECC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746199193;
	bh=fTuDHg9lab2VCplfnOznxwmbaEvhFlK7u2csaOgSqSU=;
	h=To:Subject:From:Date:From;
	b=s2xONVPem9F/RzCVBnprDGnkS9fJXwAl2AT2rwdghqDtz9gY9uXMvV91XtnUEqwKZ
	 B0fOIwtnZLW9kVmi9Ioh43QJKhlsSh+KS6aGo54S6DCOokvHi5GaOO4oVSjJlQ4hzV
	 vY8vVUj4Hv9WgSxbSwvKGE3NgtuFmsWXa+6exsFb9PXsH1wrx54sYYdawmT4xnkuAu
	 kXoYt+HUMfXedhd5ak0UZ2+0luNVZWGcyiKAf5JtqApnPtNCzm8CImjc2lPzfT7PEc
	 JRsL6y7xTQCKpanPt5qgCEWt6Zj8DuYOqEEVb5JDfH3T9/AGFPuzOPHdyq/cw5GhjQ
	 ligewEbQS69dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A5C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619919357.2721.9512293589072870080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e31d2476343da9f0cbdf03152a591c2b6107925ab7f484f0f71a67d301ebeb7
Date: Fri, 02 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746199193
