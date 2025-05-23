Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCB419F11B
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747984194; cv=none; b=aJiMRBuS2mz9pe4HVVGWIUv+jW/loiFx0vETN7U2e1CLDp40iKvDnCsuJoYcJgC874d/VWvR/ZW663/5NMLQUm3rvt/6tikr2omiNnYzsQ+AHvn9yHNGcYDWzm2tUezBZRQMdnBpWeo/va+bKSLqLKeHteeZB8L4bQbIE1jv98s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747984194; c=relaxed/simple;
	bh=EOUrPQuhheJ5BP6/CoIpuiIj4Sgfm+Tws96UaACLFMM=;
	h=To:Subject:From:Message-Id:Date; b=Pwegi/AQJLt8koCgrl7lp/cH957bhht0kfNq6PHu7TAMo/wOGK+bc8fW6LMNKPWRvMkhObV0fWCBfLXOXgW8yFU/g9UPNG57SC22eAl/cU3+lDZBQ68ZdBq8Obq1cDXI79ncYe7HB+3GMnDBCbn7XvaYYBbDdgKgFRudXQlsFW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2KWHobR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2KWHobR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47A8C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747984193;
	bh=EOUrPQuhheJ5BP6/CoIpuiIj4Sgfm+Tws96UaACLFMM=;
	h=To:Subject:From:Date:From;
	b=W2KWHobRMwiJycvjNAmoqz8aoNvIq8lTqru7o2ZmrMRkVESISHoBCkh6tAWJaueM8
	 Nm4lN6hccNiKu1UvIVFpwMreqpiYOtHRNAgHQIokn5GcorSArH8GhhWY6TGGG5S6AN
	 2V3NcPA2K6MhBxlNyW6YiRbR96FQ2gGG/HfiGxnHieC7LXAR0h++I2qtL90xW/fiuB
	 UEa/fv6JYgp9adriYMlQCoUzhxtgqrFcKietg4rOMSkHZZQj5/cRfL16YFINlpn+eC
	 UlahYO86QgyRcas0UzqJ66do+8scFVH7Ay9PmpCoeYaR08b8DsOcqsO1eeNy4iEdLa
	 cM5BR7ndfgoJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9501BC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798419357.5399.14446655924347541755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34dbfe9b79a2ddf0fcfb2dade06771f18f5828fbdad9abc5a3797ed841085298
Date: Fri, 23 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747984193
