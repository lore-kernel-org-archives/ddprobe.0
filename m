Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6443AD529
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787146234; cv=none; b=cIuDMbi9CKRfY4y8SfIUbMgyypLb2cU5RPSTkKnfRrq9a7ohp3WMQH/AMJqcPub/P6nHa2T7FcvmUTnhKfkeYJ8Be/dcc1/qzbIVZVX8SlMMzVNxMGxOuhK/STpkhhdisTc6qK/GMUBC23GsYvdCsxBpkDzfbNjVQItvXq49ckg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787146234; c=relaxed/simple;
	bh=TukzybuU/d2L0Ld8oFPdfXeDE3jHu6FFps0XeymoAMs=;
	h=To:Subject:From:Message-Id:Date; b=PszL5kMq2S+k6ccQ6ndkRLKnlLswa+LbMT6C52XXu3AqcNJPqRnqwAHx2lmax1ELEkveWQ15Agjx0odhzCWTQH0pr8tXRNi9kadkKXfpAYsbZCoIHEBQK69qd9sO+tYUWv6HZRKgF1jTZTsHpU3cFjbFqAxfaMFxLVvjYkB5CcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SN1vvbmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SN1vvbmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE6CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787146233;
	bh=TukzybuU/d2L0Ld8oFPdfXeDE3jHu6FFps0XeymoAMs=;
	h=To:Subject:From:Date:From;
	b=SN1vvbmKgm4maOrURGLijrunm9ct6W/29Qs+94oZKIMERzd1VnZtfAoWNUAZiDH5L
	 TWTn8zj2MShaYGT+waD6BFjpEpFylnNkKBL33ZETAwFVB6Qx7bc1bop1hhJGs81586
	 k+SPwF+Lw/XYaXqk9wng+WJQYswdKM0XkvIu9+KXglBsZFdYHFJrxnTQ3RrkDhsdBt
	 L7F2TRZ02HXzdSV/b3AfKYopaOqnan0QxvH7yiTh20uAN+EThC6+C7WqFZpQ9Zk+AX
	 Poe7tk1wjWt031yki7GxeKB1LUhFvHsKlJZ3KX6Kg7ZZDpF0NTd+3lLNrcMItG97De
	 bSSMU1Kg/3oLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B397CC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714623371.24621.2446068519604881843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534dedb2e86797befe4f9b8ec3d12420a221eee41cabea3089af8adc70c97f14
Date: Wed, 19 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787146233
