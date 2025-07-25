Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3373418A6CF
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753451394; cv=none; b=Ci0vjgVHkkx6SxSe3kCYevrV5xThWcRtk4KWQvvDzpmE17xtVAxgrwOi1iu2UkU09YiO2R2sx8HfNTa4yJT5ENzy+Wa5riWAuMKzczQeTO1bsglYrPbVGIDsNiXwIFRQ0mSBi1db2aFzLhzxccbwCYEvdCx+VNo+/gF7dCPwWLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753451394; c=relaxed/simple;
	bh=AFeInNxRzF7xhByJm0tJpzjCDWUIRpdhe2JrZSubwo4=;
	h=To:Subject:From:Message-Id:Date; b=llx9MaO5gKEKcvXR6pKJ7e7+/9uYD4DNjgveel6vDNEoW3eLumuD/PE9j/u/Y8W2Wf0p63i9PGWsemu3exLUk19glX6APgtUR0YRRKKWPqArxAWYUT3PKfBim8lRExBN59lTv4DGG7jrUy4ne+74d37316yszvuk6u4ea6xXIh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ag95cc9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ag95cc9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F79C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753451393;
	bh=AFeInNxRzF7xhByJm0tJpzjCDWUIRpdhe2JrZSubwo4=;
	h=To:Subject:From:Date:From;
	b=ag95cc9x0WmXbFoJcd3Sp5F884ccciznGQ63aRYNQIlFFnSurdesc/Fy6p5CVchbC
	 BPUU1ZTIl8lM6bliYIjn9RJxPVpjFHjiV/p1rpax/xGUl85HDUEcqeq7BVwr6gJK8v
	 95OP739GwSPaTiYtMsMGqUXWwXiQyqHJcqYanaaKjD7aTauXxT8Lgu4UTns9ebNeJF
	 moK3QqLVz4+F5ovVM1EQS4PeL78AjOWH2o/kyuZl+7q/WtAI3qPiokA/6aWX5PQTEr
	 /eWF2BLBi3qHlpAjHSL0Vud0no5BUlOfHxe3nqJSUfoNswUtMrzCAg2LfTUiaWumKi
	 rMwz3viJZKH7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6EC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345139357.4760.605046827475474787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72773308a49439d454f38426054177a9d5d1dd572fe2e84ff4a5a355e7586a1c
Date: Fri, 25 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753451393
