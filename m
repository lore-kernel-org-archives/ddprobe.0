Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A843B8D4D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764965574; cv=none; b=u5CDU80zrwBA5wT2mANKcEqUepp4eJV94/bTnIkmyPRreuPeVnnGU9xxiKVfxe3C0Hvf9U9P2xKDtwOjvxNsnXYdcx5roZkNZhF9Zxd42cNn29XCFG/A8dg2MaXmag1UCg9qyScDQU+4raWK1jb5saKLTjlJY4fPLCfnvM+GxFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764965574; c=relaxed/simple;
	bh=4t44EPy5Ci8QUHh6V0dmjRm1f1veq5fmmjmLcpPmJjE=;
	h=To:Subject:From:Message-Id:Date; b=OB3XtdSST9ysWw5zqB57DU5SDHPSEf6TQaaFlNkoE92SQoUhlF15KY5i1V70aNTvV7XjJGmk72ukZsrGf6U7n1gB2raI2m+lt9dBY4M0Wj2AMqYd5q6JIWyuZc7cH/3mrIHbVukf6jj8by6bB23N9FnQoXgIIZZwjLga6O7SqJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAP/AKVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAP/AKVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7A9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764965573;
	bh=4t44EPy5Ci8QUHh6V0dmjRm1f1veq5fmmjmLcpPmJjE=;
	h=To:Subject:From:Date:From;
	b=HAP/AKVKS0O/RZCYpPHPfUKD34LDXwN+apT7Xy5ewmtWV+H062lSPAtCNBgxJw7Cf
	 wksBsA/rZ8k9ihPoIl44m1/swZoq4v5pQQMvY6DgHXb9Bp7TjmhTxwNPqE5p08jKQY
	 KeiFrDcBV0+0zYy0ryIlA2iVKJvjUZIEnWNJD0hErKxL5brOXKx+UQNMGc63xqh6i3
	 5FJ4+HMCws1Lf45zIxLsjH1RJcCfM4wazyl4H9QH+1x0Anh3xmt9X4s0yjHMod81+L
	 1hQ+r4gjXUeFMOpVvInSAqYbqR59MzkeIvbLH+EKOUEPqWvJnXZvUmI7vJ4TVzqCOM
	 ajod3p1jfPdNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EFFD3749C
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496557359.18941.5870427034154379384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3825225546ac789d1677e8e51111091072b8ce68e16e02b70b9bb1c42b178aac
Date: Fri, 05 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764965573
