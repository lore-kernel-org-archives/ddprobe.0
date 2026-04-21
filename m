Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EB54414
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776730054; cv=none; b=km84B52vfSUQ9lKlDb136OWuHR/61eQg70bnpSUE22cNBM6j5TjYLBgTpBkJgXp6SSzdsOgtVKhM6pRsRbjpuacYlY7ZsexGGbrW7q8NSJyx6px9wFduj+9NkcmadkJWWR20Aaiq1n7juVBHei/FLGmFQPTbtXA1wrGOnykCpu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776730054; c=relaxed/simple;
	bh=r+h0X4YwvZDTjCdVXI3t6pZKZvBi6sHZUkeXxQECoZI=;
	h=To:Subject:From:Message-Id:Date; b=NkYF9xN5W9zaxWWwMBeUKp74drFrxiB7ykWjYacCISjyY6vbW5VyTNv8pCU5BWtOIfcMLR6V9gVr/BWiVk3fxLswUkCoo2UlplXAOvu1N+J8wV+EisDSRrbkJbg8vXvn3z2iKS41vYQv2jKYqiR6rgrf11uJjcWSmqoa97aHW1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ib9bgno4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ib9bgno4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB482C19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776730053;
	bh=r+h0X4YwvZDTjCdVXI3t6pZKZvBi6sHZUkeXxQECoZI=;
	h=To:Subject:From:Date:From;
	b=ib9bgno4qp5iaDvpD2rmkhnLVzMPShiMdKjTaQTkahHvyr6lJbvRG7O5LP4IKlQ/R
	 2c2Nu4G+pLRCELxTi3yUizhBoFOhcGygNpwIybYUeMYb49n8tcz/1XBQQifskN9V2h
	 ZbloH4C/oGtlsRdSjNdfYudzpsP96E/wppgtfG2D8z36ZtnUrBr3mciWirVeeA8NkT
	 Se37YzRonqL8w6N0YfIZydBBOpi/CobJIdQE9gbrM2d5xgrn4LaSf3rKgdRPM58AmL
	 jPgiVqFyo/Zwjcqs8tLz1woJLH+KguqI+njcwuhpG0n00r7cK++JtZ4mWIVJc5Jwmu
	 8bJ186bVN2SlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5CFF5A8CA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673005369.16380.13941454571217624227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb655835c960890017114febb81d76ed36000aa829e029251868b74bd680d267
Date: Tue, 21 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776730053
