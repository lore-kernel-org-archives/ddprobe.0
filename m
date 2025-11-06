Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148E61DF246
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762391394; cv=none; b=ahytVGhVbIb68G0XC/lFp74dHh/YvJLjZZA6ht3N86USRWqrEgMneCCgcBkp82i0Wj8womTiTFfP/yZjRTq0f8/oKfQ98NtYvJ0swlurETx5Kd/xRS+iXIBMAZ2VN9VwVYYSQVTDCxx/GExaSg31j6d+NkLVoCOjdkgd8xv9fVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762391394; c=relaxed/simple;
	bh=sd5bHNfhoUAg5ayPFVOINegoy619HQaQ35pQ+3rqlXo=;
	h=To:Subject:From:Message-Id:Date; b=t8j0MfmrotBt8T8UpJEfyRKTfGfNQB/TXmLWaBTZw6ublTOj/KZDNtJh2DppXaK2RNdC17XZM8rf4N4PzO5AcrjGSDLxoUwbpMrt3EN0+MLITxgXIeH+GkG0f6KxWHhQqxAiqGGXryl9YiNSL91ddAPwfQ6gVJqYnT/uKvAuCjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEij0mwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEij0mwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEDFC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762391393;
	bh=sd5bHNfhoUAg5ayPFVOINegoy619HQaQ35pQ+3rqlXo=;
	h=To:Subject:From:Date:From;
	b=uEij0mwfUNhH0W28fSuik+TS6nkRgIhDRkHy6vw+XAwRjai6mpJalzR1Hy2K7vM2w
	 lpHDUEjuPtiEo7aFUImIeotWxUmt0TkcctkerxiyAKjFixnROcaUgqgJ9oXh5o/CZH
	 GxJ9Gj89uE0F8UTCw24F70dkSocWUvZ22Gt+VZooMI/q8VygjEzJnxedHlkJTttFZP
	 ldn0N/lgln2HE9SEWj1tcJKG7ucKFTeqddqYoEA2DBnrRF2K4s4cZyQ6nqEAIfhTzX
	 mFB0NkUrV+1yNcaWlsCsdHWZacAWEUo/iWBjc01YODe26RN2plKhX+2KfAEZVNKidP
	 sqINhzXGTrslw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A66CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239139358.7714.15171592500072807746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec056e3be1e5ed264d5b3146ab2456770bdec9bbc4b3f784114a30d603b236aa
Date: Thu, 06 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762391393
