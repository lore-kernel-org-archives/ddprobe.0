Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6962A2F0C79
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790763634; cv=none; b=RfEQsSwBfeoSINUajCawZEh8ASApYzepEf2gPpZv4p9YO8WeDb7azJD8ZEZJ6tg5CfdeLu3kvxQwC0guhszDvMN5aYlmjoMelW4QkEtEz+soei3HsaN6NaLcbsO75g4vzB0vG7751F17ExYlWJG9CH3mnb50FJg8YHzSJaSVhCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790763634; c=relaxed/simple;
	bh=cE5fbcQfWsTFQnwYLu+xVtqK2m9dKOjgZYvunF/T4UI=;
	h=To:Subject:From:Message-Id:Date; b=i1+WjgbtNH1VolHB3R7GcBUaPb55l5gX57Rj9ULwogeBQmnSbSyxxoszcLFgKLalGnZyP1XCeL84k/U0ovIfvb9tovFRfhE5VXvDGu1cprbbfkJdA5jq1cryzqeEv/FAM4bUgA59KyUaBrQ1O7KQHBT9fMkaM3xgviNZDEc83bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPXSKgKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPXSKgKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF2EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790763633;
	bh=cE5fbcQfWsTFQnwYLu+xVtqK2m9dKOjgZYvunF/T4UI=;
	h=To:Subject:From:Date:From;
	b=hPXSKgKeduqPNp4mWTjIwGIkNreG70e8TICe+wg2bOX/H1gMXv1MMK9OkYFhWdx1K
	 EQi8maE7pqX+/qGUkmJPyZZcOGlZuMNHXztcWxydnXbPm4iAw//s5LzxNI5sObXgT6
	 EQYToId5tz8Kbz9o3+Ugz0GU+b9e/YTGZtaHBwW1ucdFQ89NjwT05gQ0aGXPOIhkFy
	 1GpuD261djshLgr4tMZQtOQcNcQ5/Dxsg1tvfgji6O9hcPuDyyGcknFtmgIyqU1wgd
	 hGo7g4YgcjnUD46w7HHXrYE5jYJN3g7I0r6XrKf+qGp3DPgJWSTlRAufs3gAVA4Xl7
	 aINgihS/TlkcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9767CA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076363368.22425.30065783185786008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae14b96598109bca45c61dee438bade901d7a5b4a8fdaa7371b175ffdc18f07
Date: Wed, 30 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790763633
