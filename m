Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78FC6182AE
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717229663; cv=none; b=hyS9UCg6PybHDDN3gdQAaSf04ajTzGUgvZYwteNNOHs2ZQrVrDDFiX0MvWjdqYg7D220pfRaeIj4bX951I1LjW6tUt6JdGZFTeU81StusCBwSQ0u7FbUs3ZyCnq6fOMRpzh8GYifLC31tKdUUSP0KiDuy3vGQkygSwrQt2iV3rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717229663; c=relaxed/simple;
	bh=udXyHFwV0oFaWTQBY1NAZOJ+8eBjInafdaKuTpUwT7w=;
	h=To:Subject:From:Message-Id:Date; b=IdypLXL8aaLnVSXa9Or71DI/M1ZN5HXNdBKetucyYhuZDmTALwfosxtffXv6NORoYpj+gamCHIpxO1G4MFnZICb6rvFaLRw3Ye5Huc9jaxzoYhk8W1CyfVXZGplwzRo5LB7fPb5SNWRYNRbU0/PlrbTxJD5JtJ1D+QL50TaX078=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QemrfK9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QemrfK9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE34CC3277B
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717229663;
	bh=udXyHFwV0oFaWTQBY1NAZOJ+8eBjInafdaKuTpUwT7w=;
	h=To:Subject:From:Date:From;
	b=QemrfK9E5hh++SmtlFbNPuMPKjAcjHYCsKzR7PH6QaxLGTGTWnvvsybGea4AP2U56
	 xXzJdi2syDp9GqSdLsNFxeQjO8sBDNMqS//zNmec5CGOIwOZOP+DbHM0qNnIkcUIhi
	 +bG9zRtwtajT6zFhy1+eFiLPoM6Fe0StdyKO0aEwyoJyamNcTtLEHgzFNwYSu3hs++
	 AxV4ud/dojXkhRrCEgUkjHwFqiDYG5ABra9w8SeMgI54JoE0V4/6RWD6CUcV5VNAlQ
	 YIbrztT2FZGx9RJxBkwQiDm8+7JjHKOUSecCgO8M1PwmmV30kq35MK1O4p46Fazq3w
	 DyycSzbTL6StQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB00C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722966281.2068.7722505274530413537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2790545ce9009ec7d0c49598cb4fa2673f033f36e1708ba96d83707c8dfba76
Date: Sat, 01 Jun 2024 08:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717229662
