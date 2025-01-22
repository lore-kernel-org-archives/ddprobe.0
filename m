Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2582FF9FE
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737509154; cv=none; b=FyXLlljAbuLSMsA2reaosNJoSHMJ94LbCPV47rtldVZPHJ6tvYdWRaNxDztSqE5cFQ08n+sZqp+zrWc8AlVV+ZQv3ONQ/KeJLja8EOGVcI+wlbQKGZ3gnrG/TZ2kH7oP/HRRSoShUqcT98YabD9j0mYPez6ZKLcazuR78tFFOcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737509154; c=relaxed/simple;
	bh=/vUmFx1vsqiSurpN0M86pAL5jaZtLCuX/RA0fy8TEYM=;
	h=To:Subject:From:Message-Id:Date; b=hlrpqR4P+UBPqbc4QkVWK3jRqLpIUIikgKM/+Dre7KUpWmWLoYXPLfJhPwNoglXt8IlSAy73Lcrsn/TjavA0GhnyhAz1AjkMg4z54XDePjbiKzHp9+34PGvaLPKNhde7R2QPTlGAfRxjTiYEETo2ihDFdsqx9GQgUdtHVFYaC9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+58JbAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+58JbAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10CCC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737509153;
	bh=/vUmFx1vsqiSurpN0M86pAL5jaZtLCuX/RA0fy8TEYM=;
	h=To:Subject:From:Date:From;
	b=Z+58JbATjpmB4JHfMo5KNjDdgYpdvhzlIbMg5AQLZzVkXWObOjDh7V6E+j9bMdfWx
	 gE6mIzSZer9RUbBnRlFRQNhKAVTs4eQ3yXGwUo39gl/aJMEQrjVULHXLlHco+xQwTt
	 Fl4yJR8ngldn8urcwyr+XqTebkUvwL0VhHe8X1WXC8Pz2914VsM6VkXQd1s8cRATHf
	 zHvwaMTe81rUOjLWZK1daOUlF6d41EzqhBPfqe4/FwdDK+kwF6/Eg4FvaeYEqmF5c9
	 9V/Df8p7i6A55s2BrpJPU00MWuSNls0d6CDtw5OwOyyFghM9taIiVowfxApL+UW+ik
	 OKswCjxnuD83w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E874C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173750915357.18406.1364957140227122490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9692cb88a70a437e9a7de62b4952a86283867eb082bb00cedbf75f2b5c1a058
Date: Wed, 22 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737509153
