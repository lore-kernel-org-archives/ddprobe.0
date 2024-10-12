Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C32053A7
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728698754; cv=none; b=dlay2fl1upNoI1tvFZM/Ocf9BVhLMmaE3Ju8agxYXbZDQ+CeQt0/PlNyWZNoPQ9jr6H6q9enIrj1e/HI64/NugAoKtMmjINC34gN3/cZTyCpX6zb7Nt4Qsnm2jyUV8lxQ/g39ZiSnFkRR9m8mm0w9tfZtUnImPmuv9qnsIMnRKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728698754; c=relaxed/simple;
	bh=UV6cOVuzBQyn+nV0VIqNeeVYryD5YTooOg8YqeEY0XQ=;
	h=To:Subject:From:Message-Id:Date; b=Dyz6GfUuVJ+tC0mI02lyMS9sTE2G+h/mKFiy65u9TeatMcuKaEEiHl2I2IZTgngQs3GTKXl1+p7M1boaRzncxn2F+IblHYWxXB+4e2IHGnm+DrbcUPvuyg6XFE6+8Z+9my6Rppy1UY89na+77dahAMz0uwjbZSqVuqgzu/sYtKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UI0Ni922; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UI0Ni922"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3384C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728698753;
	bh=UV6cOVuzBQyn+nV0VIqNeeVYryD5YTooOg8YqeEY0XQ=;
	h=To:Subject:From:Date:From;
	b=UI0Ni92275WArGFutd2gbY0Jgc7i0cHn5+6FiI3lmcl1YzabGCii77yeIiq+N+nwk
	 r3qoIWUAEf8b0PHVQjkOkDGrMUGy7engqkQug8fIqEWGA7jBHfP8Q/JeFnHBlr7lse
	 QwoBKmvtTTW0IDsR1ryysAFpEkUWz7/VNT+rnfc4pRa6Ja4mSUQsafZDX1EMLPCDWf
	 +RZKRYX9dFPSeQ0wPH2K1eMaNfjAF4zGR83K415hd0MRZq9pWN95MYu34QdEaBS/tX
	 4lKVidV7+mIEwi5QA0Kjjy0P7j/omL+aYDQu32s3fedM+p1EMRHPTZR5ACz2fc54vi
	 TNRCe59zHPOpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC3D1A42C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869875357.29177.11056780889718259667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2e0b56ad91ebd0c2c8708980414c80c5f033a06aed164e080b36a83546e587
Date: Sat, 12 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728698753
