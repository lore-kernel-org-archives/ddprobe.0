Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAD12BEFFA
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753118994; cv=none; b=DUWiC0ExqxtOCOYVSbTGt3Nkkrxixrwb9XG+90gQ/3WVJPK8OTJc0M9S90OQRzDRMl4YJI5aJ5pprrYrWj+hrB7JR6112Ay9B6Qt8+l3v6tIGcWf/Ew3bNkdKeIVm4kEeRS/mjpN7fSfJAyrrPgoLPUgTZmjS/Etce7hJYo5LmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753118994; c=relaxed/simple;
	bh=7Adj4NKu32NTMXxgnjaa1CYCM8cwrmIfRThdv/q/pRE=;
	h=To:Subject:From:Message-Id:Date; b=A+MiohkApuDRmzgKd02NIjNwjmIMFEG09K5Ny4lP908aM4qe/xiAeasycj3aguFV2EuPRlk9Kvpo6xNej+U6uUBkCiE3IUihMIbsyGbOM0MTd8RXf9VUU7Nqaeon3/R0mcRZu3hhIOFhp9WrPvkxZjnjDQBhmXwx7qDEuo2+GD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXuUGnK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXuUGnK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D3C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753118993;
	bh=7Adj4NKu32NTMXxgnjaa1CYCM8cwrmIfRThdv/q/pRE=;
	h=To:Subject:From:Date:From;
	b=lXuUGnK0GK5LYQvwq18mMXtTqipuoH6v2mSCt/bpWVhsc23iPIAvq+GMaEy1qvUne
	 UhsimuXHDxFV5uQP/1Evgejb/YWwEi23+7ZBP2ZJhqUcaF5AJP9SqPilEBR4gsp4WH
	 dH9fGiu6/fduIAx3QG7trQc831xy9+WWgFQHJTR2RCoL24Y1yKN0HjEG0KJW4/EPGW
	 eVUl3eWR26QDIGal3j9AAXWemL6g3Dsh/6v0n5UJ5NQN/GubGtw8bhEIocWj3hALzM
	 DEF18MLboWSRVdW1wKc8VojIbeh7DQZhcWMRLWbvvDrWJvgPldhJWKtIOnX8es/c0Z
	 3RFNCbD1dHZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F2C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311899358.9735.2008605700745084775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14da9e915a1319607b2716fed5061bf1114a116eae21863fb70981af07185444
Date: Mon, 21 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753118993
