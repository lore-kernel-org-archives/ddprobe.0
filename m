Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAD719F135
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758685794; cv=none; b=gOVWXgNEBoFFajPflwGzT9FcwrVwr/sb1hVc7A/Z7DpI5YVdv7sngaLYuyKtrZK9fevxe95lT4Hh7LMdbL+FjgQzLla1xsQaSd4Xx8i/0ulZ4KaIqzIffPRo3nWhF8AznapN0GH7Kz4Q9K+rOn8ZzFJ8uDLMgYgCjdyzAowc7v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758685794; c=relaxed/simple;
	bh=ct5UhYfuupDjCjlulyi3SDsPNMHd3ZJ+IwKL34FEr+M=;
	h=To:Subject:From:Message-Id:Date; b=YahbvHRPgZDFQliEC/WW9RRpNHDeBRMyh+/0p7GMCvvTRRkfCA/wK3XrnsGbRLf/b3xcioPUfgTFF5MM0/z55/yQDgXLicVNU4LNuOU3D+G0d9+jwtrwOvocV0uuSP/sVK9hEp3QmS597lEde8ticZrSfyhq7k7hhFlPOg/ZqkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dT3aCt2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dT3aCt2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4842C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758685793;
	bh=ct5UhYfuupDjCjlulyi3SDsPNMHd3ZJ+IwKL34FEr+M=;
	h=To:Subject:From:Date:From;
	b=dT3aCt2ziOMcwOHviWmAc1EkbKmTrN5JISGqGmydPRLfx+ZwO/4h13PP4auZNkDrA
	 Wqkzg3uzafJVTdhmwHltu6FKOO9C2OEZ9PwrN6UfaKMV0SiABrTQyUhLLYVRaHVbgU
	 e+yn6s0ipjXYBmONaHbotG8zSmUwzCvjTpRUma/JG5azIbIWvJnm/GL+Yg1fVz5Xx+
	 +nuy8SOAekmE7gZpNzI1cwLIUM4Xm/QrQlaD8uGKujbCpuiBZxrWfwEw8EgbsjMUQw
	 FtGyeg0ry8GQbLjeqO4Si6cIhWvNyJVFkTUX7hOeoblZHGXdScaCQWOxC1SGz/V1Rz
	 nv6IFRzXVAdTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93010CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868579358.1542.12453704414653011103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e303220df2bff395a363bd4652e6ce1db1e05f045e4de94b46737fc5dbd95d
Date: Wed, 24 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758685793
