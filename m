Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340A528643C
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759606794; cv=none; b=kruG1cf9g/Xw8Azjlq9xKwDSX0u7PaNXG3RkfvknUjAhtW/qUUMHmxR2j6xy2jZM1hze3B5u7ZGlu9ugNsqCmWf0f/i/UJp07YVhG0wtSeVa8cUzufalr0dk2YaOigZJwXih2BWeV0h+E+2CSUBTVK8QHa1SA75PD4qo93drEkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759606794; c=relaxed/simple;
	bh=RAqcTQfHwejGvIyNqewpBjbzH1/HEJVcV4yASDXzPvw=;
	h=To:Subject:From:Message-Id:Date; b=s6QUNcxy0DsnV8TEikv6Suqk8uTo4dbHwwUWb9lBTX6cvafYdbiMfWkSRz1kNS9tOB+kghSW2SOohGGe8Pk9coQdQIw+SZPfl+VYZBAfQQD6HNzJ2NpKb9Z9aR5FBBtfCpRh/bcRXGHFRQ78nRvsfQ3hT3OicCAtYIWFPwyrjhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo45PHPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo45PHPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A633CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759606793;
	bh=RAqcTQfHwejGvIyNqewpBjbzH1/HEJVcV4yASDXzPvw=;
	h=To:Subject:From:Date:From;
	b=qo45PHPpVZWq6G+RiqGDL/2QEuJglZfCMBrgfin8EW57JNawmejnHxsh9kRYmZLMN
	 WK011xmJ82KCAGnU+dlnOxCxmhIbWAjH+FwA49ZFTqbdCKJZwFEG2b+2yF6f2xoi2F
	 +YZGpd7PymefDqyEaMYCqfY0yIHWdKuz8BFEEF0d8HMD2oRRSQkX0vak9In6q7++iJ
	 zGoCSBE882rMVLyDf4YsQCbYrUXQmWvNJdXyfttK/8KQwjvuTLThupop7k031FD0N+
	 lH0qdiH6bZYvitx4y9NOqGnOAsJlE2ges7jQeXHYhMiOwgpnlpbMznrc1GJ2jnbl1O
	 E7s+rDJGxYjdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95212CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960679357.6639.9164365598788399035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7bca7f1256f5905b2100f04e3666b1d5d768071a942b42b5d66626a0c01980f
Date: Sat, 04 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759606793
