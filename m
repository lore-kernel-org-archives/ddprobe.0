Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3630172610
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761983994; cv=none; b=px3JPd8dFWLXUZag3vIk+A3YucR9jrcqJL+OUi4NonR7+vCCVqSGnNIHTeK7V5SVbvEegbS42/GonlHISHOveaHjKj6+hHMoS8km/3Lj/NRDtg9Nabi3sOEh2aA8Zm9+AdyhUKB6XwdA0GvwzP6hUg3wIZA7sUJ8SlSQTyWNBQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761983994; c=relaxed/simple;
	bh=eAAnJYLhR0VdjjDif+IuJDvxjHZdU3BqDAOR+Ooowyg=;
	h=To:Subject:From:Message-Id:Date; b=esDBZnNpkT2vb8Scds4ShimZagRqj9d8jJ3Hh6tTf+bLFC+v8sOAsPP5Hn2YdxbRsCA3xQBhRy8bEf9GYIxsKbcf+vc2wRjxwJDbrxGoiLB4CR8PER1E9M/rcf6K/R0s/SJ9aewuSc/dtey/xoySRWdAM6uXBGsNrUwiKWSjoQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdThGk4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdThGk4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB062C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761983993;
	bh=eAAnJYLhR0VdjjDif+IuJDvxjHZdU3BqDAOR+Ooowyg=;
	h=To:Subject:From:Date:From;
	b=UdThGk4SPs3TY0NNm6nn0HUZ7GXCaux+exzPGc+yjkQDe431nr5BDU2UofTTKuyQy
	 g1fb99PqBLgvaed4Wsi2OoGjHRLoHTSsW/qqFaIQZxYrV0ngAPcU9L2IuX63H75B6/
	 YFl71+doFGfyh4f+KaLduLuyuLftJQLZhVvwPimQIKD6AtpoS1EFWzoVkyXzxHxD+R
	 qrZmQE8EXzexYiSq9rhT+dt9UZvmTCWAL/rp0A9YgwpGl15x7Xbw+svmivgJB0tvip
	 J33HSV6bCG0k7D3R0nkdLAWZtvuWfdQbWPS/cfB3F4gj5n5lEBNBwQcQIxeyP6FlSI
	 ERHQPP9H2iMfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71FCCCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198399358.6559.12146127093604655639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136d3eed40d2f9e9a1a80f65dda28812a96280b0600f8ceec5e8475d406b9f34
Date: Sat, 01 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761983993
