Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419B6390CA3
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788034834; cv=none; b=DbAt34uEQu6RddmJ0Hk0u2gFV7iVwUQ+RDyYGvV8NA4767OWfZG9Qrf/ErN9Qj1w4OmMKBWLaLnWsxr4sjswKGeqq+u3XLTkB6HESPr3ok5hgLPOp8cCUB9Jj3ezawfgd2IMHfzawhvVNDLG+96THswIWXCLXVbzNA0KELL6elg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788034834; c=relaxed/simple;
	bh=IZht3guE3yNZHClsVmTdNUNvFKhQDVtmpspwhbrfc1E=;
	h=To:Subject:From:Message-Id:Date; b=nNhTwR6xEfNnOYZakb/HjuLAX+jJ26NXqzbRROMwYEs8PQvnqisGuowTfIRKrkNjA//S5E9jPEMAteaJCyKlmV2386h82QL06FeRfhOasqoL9iIUKEuVB78jfZ/oJZ2P8KVfSrZIYHX9MQAyQXAGDxsSRvspAbl4X7k2/bJg9HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZNHAxZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZNHAxZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF06C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788034833;
	bh=IZht3guE3yNZHClsVmTdNUNvFKhQDVtmpspwhbrfc1E=;
	h=To:Subject:From:Date:From;
	b=UZNHAxZcLAD3P+XqWg+s3pKH8Qz+8TcKekEDvARsKF0vZDUmEC07s7tZiSqSP1/sK
	 zJEP53xfIqYSyUP13bB31KN6evK2IPWiWg0ckdVrwDFeJVprDmI+XyKTdtA1N+/3U2
	 3VsX2XzoTGvRwcG6aQrrWY6zNI9Mhiyp0awSSVcXFf0BvPtNVza0eFEPUCDQSagWmt
	 +bAw5w9OUCQ04ZkjcYEDdYjar2UVU2XusbSRZ0y1Smit06Hd8uZTI15z56QQf/7KF9
	 p0MxTbjoGtkGXobZ5VSFP2BtlJR5bMjUArRvwgWt5DY3fU6UEnL8gWfyhBIL2iqaeQ
	 NYWpkmA49SMtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F57C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803483368.371.4973845520272086371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fd07bc0279f600eda436003fcb58e9ae0b6d52cbe97cc6a2d206b3b6dfe464
Date: Sat, 29 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788034833
