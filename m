Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D3D1AF0D3
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732016754; cv=none; b=BTuUaeUmeQa/GNAHxkN4KmmdSQWLgntTQjCe2oxa75fTDIEd5QYLsJ0eA9R5IEednCX+RnfyGinQ4/lr9GRH7YUIvA3VQb1ryHTRx2t93hLQ9AkNVSl30b1wa2upgb4AFDecA7vhNhDw8Aj22vXyzvlCMPjEeD5gmC3cOUZ4fiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732016754; c=relaxed/simple;
	bh=/CCgClKaoywkROxfs5ePgA9E1goS+Fc7vcCW8ZY5kCU=;
	h=To:Subject:From:Message-Id:Date; b=khuSgbOsUnfC1RrZGJiBeKe6tEulpt3RfY08Ndx9MM6Oi9iqvA2bjqmFR+Ezgvpiu9JNPiH0TKeGE0/iMtDR7LnN8wffpa9Il7N0odDdnjjwodEJPtiaeyorjO26aa/zsucBvhrgZf5zM+XK/GJ/IbtfO5aWXs9k5b8WnCP2PE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSTH8v9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSTH8v9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3521C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732016753;
	bh=/CCgClKaoywkROxfs5ePgA9E1goS+Fc7vcCW8ZY5kCU=;
	h=To:Subject:From:Date:From;
	b=uSTH8v9kLAlZjl4QevmHHc9g8l6HVqg6Rmek/5b3O4YjmOEcgQeqJM4qI1jhoMFd8
	 cHiah5L4mr2v8YRaN6ZKrr6nrtuGS/hQoXm5cAIPw5ETot9m0iy//iYVtZPDiFIeZI
	 YZk5oyejT70Ok2LfVoDOywdO4IHQiv/pOxdqL1AXBDoZx5GhIK+PWim2GTWzMsMrjR
	 PWWNRPT+CkvZdrVxNseScyYeRvHnq6T+799i9BF5Bi8aQIoCcvheMvICvtZqvupD6Z
	 txxDWN7yvcNC88tM+W6bDKfqfSRn8DV1l6zgjWI1T3B+lADYcSPtnbJ/z5QarYb3/O
	 TdlbLqsS/i0Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980E2D4414B
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173201675360.26689.9224296519840803346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e611785c5735192550099c642881ed193f3f1add5f78cf36e85977fb98865bf
Date: Tue, 19 Nov 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732016753
