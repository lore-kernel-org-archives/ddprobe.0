Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A1F1E04AE
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729340754; cv=none; b=ABmtzxfFu71yougN9ZKSijvDJrQD8NxqIt1lDjqe4MJOkjJSKBte7eLGBy5x7G22je1mwLbirFcjDe+lP5xqodBH9JoyffSH8gYgFkgcMHoYVxUQQGJZaQ2r1biQUy5nj+2Xs5ewJbTsY/3QBoAVrvprU/BZVFVwQE/jamWIpAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729340754; c=relaxed/simple;
	bh=mk8HuGXP/nxCcrvRHl0lZJRXz8q0TJ3IIWRxEyTttDY=;
	h=To:Subject:From:Message-Id:Date; b=X+X1GzFED2yVCyK28lIRE3m+piPNajGby7OO1KJVSsWDtZW19Hdn1kwsD3cFoFIs/AqWxmxxHca0ods2GhSl9m6tsooTYJU1WirN0qx1w206AHefpdeOt+Qs2Yj38QWfcm3eXKkth/qepcWpnHsNAwZjpeDJ+8Zcuzvt7WSGMlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=um82NzFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="um82NzFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DDAC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729340753;
	bh=mk8HuGXP/nxCcrvRHl0lZJRXz8q0TJ3IIWRxEyTttDY=;
	h=To:Subject:From:Date:From;
	b=um82NzFkluOGiYddAPle9b3e4TEc2mj11mQKpi4LynosvebC8KBYZzyReYTPqoVvp
	 VjXIZt7tLSIA1oj0Xjj6uwrxQoOYRRolLRrydpDQimzWDvyWkXmUjw5pGkj0MVGwNH
	 A+L4jwVM9qhXT/bZhdMIB5OEMXKAji2ltFyVru+RCxbR8jp/TY3MBdAGgkT01n+Yf9
	 FU8IPGbq70otv2jNGY+XLy+AmEiLXWaZ4fQICUZO2vJ8IpGoDRh3YfI97/S6ba/1Io
	 yDSf8/Xyo/rRjqtast94TcXciWklqR5A3K7FY06lAc4qHxu1zWJxDif8uweCWh5Xwo
	 VRE/x05uewTVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4AFD3C90F
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172934075362.6119.11678788194281124014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5ab5c6dca68283a2ede3333471f6c1bd3c50ed66f70d73bb6e7e310922f6a1
Date: Sat, 19 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729340753
