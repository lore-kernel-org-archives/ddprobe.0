Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23782168BE
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726869354; cv=none; b=UsyCSYUmo5/q2eHR2bcOHul9mJ2DfbiejSztkLvjDYhc+SslLxXbZF0+VU7Z6oeFE2ckPlgI9w/q0jpT78guoHeleksM5WPuWnanJD1tObTlM39A3B+ykA2BOP3wqxBuoPIiwo7U8mkzhLF7NzDI6gyZEUveMN2f4G8Zkrf0h+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726869354; c=relaxed/simple;
	bh=zCGzmRly58pAkeoBdhAUHQFFKx/uv1wSACYa2+MkYyI=;
	h=To:Subject:From:Message-Id:Date; b=MRhtMJBHVyYqOyoH7hZtmfsM1dIhpOMzlquiqcp8GVrH6Ms8Rq+9wGHFmp+84RE19ElBvT8WGuUz0O4STw/zzFAHGgSZvoYMgFAez6jfnm3X2S4Vzh5Dd2SO/pd5m4ypU/YDyfb4cFZ3j32p+EElrgS1eHfEyUSwd//8YsASyNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAJTCdia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAJTCdia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2CFC4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726869353;
	bh=zCGzmRly58pAkeoBdhAUHQFFKx/uv1wSACYa2+MkYyI=;
	h=To:Subject:From:Date:From;
	b=HAJTCdiagIzSfl9/WkKWmkzstgjjHuoXhtI9XHYROeSxRgniJ0WctQcxrDslYMZ36
	 W8IP9/ZtF7QYT5e5JHdRO98l+LOuSIZjpS2UJlyXB9O3/SE4D8aOhsyThrABo6OJna
	 7SL34KzTKnOgOu1lJtkuNqzWsz+TqWPs9xzpUqlaf9cyhdJzw3pCPH37vMW4Pk4MK1
	 K0q56O4XZlpXvghfmn1dHgTmRztRJaSgpiZ1xZNkGllKHZInAWlf4XuNUydoGrZ7Sl
	 LbIJpn3Z8HNugcBejMshhVQ8mVzIyvyGYi+NSnEK6HRzIqYqDoiB0YD1nDfWRAflew
	 rvUK+vgszdRhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8BBCF9C68
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172686935359.3157.8063702713661701171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e976ff64d500460cf1163998b7fce0776224c34f0efd6d9adba3fb70cf85d7
Date: Fri, 20 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726869353
