Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8300720459A
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792372234; cv=none; b=h75pSrSTUYkblSUscOyYmA3i6Z9PViBcNGumjTRDcPbb8z5CQHPfLIP7gREK1F5KIQOv78uJoiMEw8YAFlCLaqREpU5neEy6emd4tWZtCbGUKuEQ1CQMK6A+cIqlQ4a6ph6rKkE55D+PbS6J8cGhptE/UC7V0T8+MCqkeBuBG1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792372234; c=relaxed/simple;
	bh=5mQIDSdAOzyjq0HNloBOxzCh9GA9PWBdVDYhcy28SAI=;
	h=To:Subject:From:Message-Id:Date; b=fGXKK6CU3KsyYZRVEytG8sAVDYg/P4bEwabEwRGIQn3cXU2VP4k2Yy6xHXzaCUL78t+a+kd2rj3fqigoo2iaNnvB8ATDpfLWmn/QMnmjdaeNEWyhn+I5UyQ3j15x/7wMqZU1w+IibQaxS6aezr11FHFacDsDNOaOj1u76Dt0ZuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tezIAEj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tezIAEj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD71C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792372233;
	bh=5mQIDSdAOzyjq0HNloBOxzCh9GA9PWBdVDYhcy28SAI=;
	h=To:Subject:From:Date:From;
	b=tezIAEj7yr4K8ACo67bbUF5YZpBkNzH6UktRqY6Br9tj8jhu3odAr3hJ79ssB7GtW
	 UGgecZJUIaUIK/MFhBWVRsRJU4RKZVde1wYEhSfcxkxZYsW4DG4sWL8K4vQ6XI1PBb
	 bFjb1CqX7cqomdNRp4M5Q99sq2JJE5M1wAONiz+2tE1O7Qdz2d0HkZWRISMzntC3dE
	 tKaFuXDRL1PPiA+3xf4D6YJah5mFsHtPGjSKiCHO5JURxUfu9sMjgCHCwAFVeGj9EX
	 RNHDhiUOuZYwqjyVs1vrYpqr1ihCMYANurVZD2tZR4IArQDOaxqGMBTAufKoz9ooFK
	 Est8pj3hZpPrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7836CCA490
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237223373.25740.13703642981137588025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772a37d0b331191042386aea6876a2468571a7cd9f044d7127f179c414c45c81
Date: Mon, 19 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792372233
