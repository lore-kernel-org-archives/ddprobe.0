Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5406AA2A
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718074103; cv=none; b=HNXEm/5ubWBRMOJBSZdGzWm1BGSLTTFqdxuaKnjmD39ESbf5blAH+vg0wTLm+1So7ZM+VUnhYI5hkyD6OHnVxrptcpjc1eOt4WjOHJciNK/mIsD1+eJyXok7fTcQM1ia9p5BtrJ+uV4qQKqnZJ8FlHPgrjyBsssNwxqVBOdT1bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718074103; c=relaxed/simple;
	bh=mhYwupkvYVxvjPlEee9n5FCv7CWKUqfIG9DdEtIVC7A=;
	h=To:Subject:From:Message-Id:Date; b=MwSqI5MBnENEd6CIGLwiXae81XKt1JfOnpJ6DdHQCLmg9L7PxcIOslHDI6WHkeVnle8vP4SHR8k2JOANRm/QAODZelTaanLhJHY3M7MvbNJaM+L0Urio57YyRV5YMdBapUxIp5Y8ILgG/Irl8meKYsRFxSh97YYqhG7DeTI60mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnPgiRrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnPgiRrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBD2C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718074102;
	bh=mhYwupkvYVxvjPlEee9n5FCv7CWKUqfIG9DdEtIVC7A=;
	h=To:Subject:From:Date:From;
	b=QnPgiRrXW3ZNSd3yI2DgKPkBKmeJDiyFss3DzcqB2G3WSbqLkyc1hA/kIVWQtxLcW
	 p3FdZFqCmGjhQkywY0k3YxGML1DiNMhLMWK2VfV09q08RgO7rI3jcWyeR31s17votV
	 CYR3/UQNj47/7m3GzktOjXXDNvKVO/sfw3MPIsz1kgovKGeCGLBllSaTcbqZqOUFlw
	 DpAM9wH2qfv4mAN/Svq/jU47m4N1mqYnOJ3S0bl8y2P8La5Fc8CcWs+ultDIL59m4E
	 L5z+p/R6O3zKrFRNKFx0UNVsuwLCgsVmrlGthobNmzkCKyRIpuF2aI17/DZY2QyqAy
	 cIl/CTMa2jNzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70B6C27C55
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171807410280.16192.10666950238720920970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf48122092bb8d8fedfb6fb109646d1c6313ba3ab549b53f14ec6c67d275580
Date: Tue, 11 Jun 2024 02:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718074102
