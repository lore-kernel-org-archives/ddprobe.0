Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AC818638
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716114143; cv=none; b=hcpUO5kHvcocH/FkssfUVoT+qvNsG6uvLbSb/d5h9zZ1RQef8V9TF8EHUfqgpQteSKqXs9I/VEfFUnrSa8GYgwzA3QTit0GVscBl9nBnCgCFtLtl++MOXE1YxDpX3X36rcNsHvEptPlIFYzrjO1elcIoYX0KwwwecunIzLJZZ6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716114143; c=relaxed/simple;
	bh=qkmarMj+VE/iiyOtV66H312VVxSrTOgbM7R+kEqn7C0=;
	h=To:Subject:From:Message-Id:Date; b=tQt0A5mSFPpGXv2APzfcl6qbQaSfPeDg2vg0IGtgLH0RXnnQ/ViiWrwZ3swDfEvGUeUxpJcBNSiz09drZq6msd2UFL9OV5kxuNVYwWJi1ZEBWQDTYVgDNmJtONwpyNKUICtUwa0MBrmd/z8hPqJe24yNSAwVaoxJluDDrdm+Bw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elZM/rku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elZM/rku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBCA0C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716114143;
	bh=qkmarMj+VE/iiyOtV66H312VVxSrTOgbM7R+kEqn7C0=;
	h=To:Subject:From:Date:From;
	b=elZM/rkuusMwxH5BeMK6DCHgRJzNrXcwJed5NkYz+gcCOh3/hRHKigC6lnBkeO29u
	 t2bkX2LYb4b06UnfUbzybOnOllrMieiY9YM76VnMulnRSXvMAy8PwkE3BpsKZZIIAw
	 ClQuxavUp2nHTQHB7DKgPcwWcSFVlmzHZazk0k++TWAY/ZGGkZQvmTKjWWnHvgtZVb
	 AGrkUxLsnM6D2NYi5yhf67xeNj5bJv0yjmXt1HHo61aqTjHab6ekbEXQQsUJmURwar
	 T2D5MiJcrtUuCVnPrnpUxvSyvVuWunX+XsBi0U3XLRLDew/z4ANpqQCFjEbEDzh4St
	 ygUNlYx2FQ4Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E0BC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171611414283.31875.16445458361858912619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4175eb4d53b8009d0ae214182517edc511b4fd46a41f8b6fdb6ca88b39d58f
Date: Sun, 19 May 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716114142
