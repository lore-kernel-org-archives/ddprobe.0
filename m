Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAC818A956
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766847834; cv=none; b=Ukgki28AteUJ0cFD3D1yEotiOUbDEqMOAO2L8eHONgkSqe+WmEQKE0lVOOr6QyXxkuOcnH0lGq5RL8MynxtwflPbytS0zaQ8OLYMcPlatN05qYYlszf9UNRaoaIcQEpSxrdIqEbecpEeQRAHJnppWk96ArOXE5T/tzX6syBLSv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766847834; c=relaxed/simple;
	bh=MxcKYzOAzLK1769bDbrFygVPWp4oLHrM/KFEaqaMzk0=;
	h=To:Subject:From:Message-Id:Date; b=LpD3YTKCVtwwjowT4SHBlew1CjAaa+k9v3Fvi5oxoJC3Rd1H8sKEf6dafWamtNFA+8WIAM6O4ifv37lc+BMbJ1PHNsgduJ1RlAAi4Am+w76w5B7AxeiAMWXM9uVJhPP5hbndmZuFDO5eQZvDQooIz7ni1ydAo4XbjSqZV6QPuBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEOPNRYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEOPNRYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D3BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766847833;
	bh=MxcKYzOAzLK1769bDbrFygVPWp4oLHrM/KFEaqaMzk0=;
	h=To:Subject:From:Date:From;
	b=YEOPNRYH77Q+08X0qohxMY8DlzYgcO2JtssD3abF+nk7QKDk2fqr/Fmzn2b93GyT8
	 APTlLzzqNW6RAIYLdse6+jD3Mt/xw28Ep1Y/zsdIAjtF3+p9XFYzHJbXzLPC2G2+uP
	 ikX3BlWXeGYs7yi4ahYLXd7oPkclGc1nMqyYuj916XWXPzyKBD+DiX7u2rjsw4CqG6
	 SV1wyY6OMqm5itM6CfCVwtB8dA0cFffL4kYCKacyHiJ1tmK/A3szhAN32m0Pq4LRZQ
	 aW/1u4u3yMhLDgXTgWpmofrFUXv+O0xYnrv2tSRhlgFnZgoaDv6LZ0tuC8RPdP68WH
	 Ag0zTTor1WMaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCA6E8FDCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684783362.12934.6922227564031553985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20238d6961d3083441f8b8d63e83a0d24b0352e9bdcb3019b721b301b5b2b48
Date: Sat, 27 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766847833
