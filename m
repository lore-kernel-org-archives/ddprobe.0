Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B141F0E4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745325594; cv=none; b=GisPqRtTzv3kx3lPEq8Emno2NbD7LtLRfn0NfqMj0zIV/gsfPmN0jSyXIVxM1d9yFBJUcrOsR5zUUcRx6DcMgnwV0hoMTdy7DQYIGFiK8TImfLQM2N+XVFKbkkIIkA8TF3Qrgm4+AFgl+wnXBAJy+bKWWy6FOF5L9oY76cjzSHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745325594; c=relaxed/simple;
	bh=BPiuIH+/Md8PTmQp/v+g8gFk1g6Jzd7ptUVYyWXCqJg=;
	h=To:Subject:From:Message-Id:Date; b=aU1KACtasV8YK2L/DGbzfKOqwVkLEQAjGyWwzxinktdOJjntAny5kAhZzmghu5DcEe+cDGfBUo+YcENIURx1gx8T4IpNNCcWman3jqN58SR+Bas0mtDSSRHJ5E6VtWW/iU1rxLMP3h5UfiKLihLqyz/GhTDSVDyh4KBp1tkbOLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ow/IVzve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow/IVzve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC553C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745325593;
	bh=BPiuIH+/Md8PTmQp/v+g8gFk1g6Jzd7ptUVYyWXCqJg=;
	h=To:Subject:From:Date:From;
	b=ow/IVzveUeALfwoxbDlHP4nBL+eXoMP/Hk5+zSP0Ci/J9TbRTAho7VkqvliBcZvMt
	 dKi5F74vDiMSf5Bb2P+0RofhC8gGpblQzgJzTkA8tCl9ZVTHY5/Z2gdizFezvVMMAU
	 56e5lWhh8KNZx8nUlnNBb8pJDzHVmmpt4tKiiosEf1nW8EJvP7Uo7NXA9ZshHfWuxo
	 85fHHXg7e94WnBQv+NM0/pth3ucKDFE8QDKow1bfS9TFrRI56YxVOn9jxAeGJPceWo
	 EIBytuwKDRPYTToKilDwNZM5X+9c+Vmbkuzuz/yqccruZExA9TX9e44YZiw5SRX0FK
	 A+pxNWUxK6tSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC32C369D3
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532559364.1398.7968365272209537551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1a0ecfdee8798d27e5964429ed2ef2d9b9fb17438f380afaa6c66dc3183b14
Date: Tue, 22 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745325593
