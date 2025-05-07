Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5DC1B87D5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746611394; cv=none; b=UMSo9tG+DkeIiqW3zOQAlNzoulF+a/6N3+XT9yEflKc9f4rfx37tXAPk4r1BoM8NW6h90WSWYggoELJcetDft4mC2w/ZwQMLxejQGTQaBHKyJFxQhUAPX3h5e42HrB96ZdCrcm4z3lqEvrBvPH8Y2Jp2oQ6KuSc8oCk1TjwPYWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746611394; c=relaxed/simple;
	bh=kuEUKM8MKdtpIXhM/ZMRbRI378L+MjgK6miHQmj+IUw=;
	h=To:Subject:From:Message-Id:Date; b=kzAsQbLT4qYWKdi66tg8MRi1adkfJS4QseA1F9UQP5ZaA3jm5fy/Tuykqm8HWgkmYfjajtMkit5dzkPA4SqKIh59NzvEJDcHJSCTzZg+yUoMnQnbM3aoe3kgkBcTJBsXgzakyYCSRvhJkObQTBENDDN2x5n/EuPBNgCIxN4TrEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=en5bIcrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="en5bIcrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC6FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746611393;
	bh=kuEUKM8MKdtpIXhM/ZMRbRI378L+MjgK6miHQmj+IUw=;
	h=To:Subject:From:Date:From;
	b=en5bIcrqV+9gZVAOZGKeVXdOtE+ekHSnh0XKCYZ//mEs1rxH4AnryX7QMsb+ayFzK
	 6b/ht21MqG2vehc611NC7WyKkwSwFPUt7ujD60egC2ugkx3Hqvdo5koB7PjCHepHD0
	 tbZq7ipOsfqM7hg46b26kh82Nt9QXIDucEct9SdK0YRl4MSo3N+SGRAtckE5UzJAYJ
	 8fylD6U1MdUXC/bPhnu/CvvEje3Qpsvewa87VfdErjG9Qi0yicdaJTQy6x7nDsigoH
	 FJQoaYMU4d5TCcRk25QqH343T0KiAnHoqq7/9GYbZFKAxzEBX7n70K9CX8QQ2lazY2
	 cPbMF/wiJGuDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E273C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661139357.4109.3449801570653254880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad44f2a1cc33bdefcffe9bc2a53305d3cc5a3f38d46d791228b227f5222541e
Date: Wed, 07 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746611393
