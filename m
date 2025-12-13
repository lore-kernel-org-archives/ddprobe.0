Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B1B289824
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765640574; cv=none; b=igC21S5S13PKFJaRyocS9FvmqgEO141QEmJSei4QQTwxqvvqRCplx+sVq0pts0N/F2wtwN0IwT7isuMCNj5jC3CJ0I3rctgCueHoW76PJRMQPfR/yvrZ1mS9T4VZHwgkpirgiz0pTzI41RYKxxkcs70EKtlrWMEZ1jZrYJcnoIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765640574; c=relaxed/simple;
	bh=548pLdI6Xy0HrXQixj5jOw6swkUX62Hze911SY4BC3Y=;
	h=To:Subject:From:Message-Id:Date; b=ORWcqSKMrVr6GeaqcfhoStKuICqQGTLvw+mRp+1FfhXj/Zy79Cf+mcUuKhZ5p84FauQLrAFJbIIw4nWWClYIn2KJALaen9K1OcCHSpwuccLSb/ALgH24AHQnhj8qiL+DwZYZEE9izxmZazUVhF1tdUtHbRskRgBd6GRIw+ViCnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5szeQ8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5szeQ8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB08CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765640573;
	bh=548pLdI6Xy0HrXQixj5jOw6swkUX62Hze911SY4BC3Y=;
	h=To:Subject:From:Date:From;
	b=I5szeQ8gliAlatdS7OyBCv6b2O1TCOZqIAjUW4LnlsI6HFIwOfTS+6FJFMw4pPluM
	 +6EmrLGdzgWRlsRxziXr7KPOZmp1+AFZXKRIo94vk+7jYoYzJqDpn9uGi0orCTIFAx
	 mZxxQ2EBnR1arhmCm7Nxspg5CBG/nIuidHUcdsybkj1PMlBYfBvhkpmYwHw79GFCLq
	 rIT5OgzIbQBlvIIgQUrT40pGXRbqj58+oRP2A50JbAjfp+59YC7NBNZi7QjjNth/FH
	 6akDvAI41+XiZWQOOt0RuKMWFmEmY5r+mtcGHUaF0LMNNndlFOEcJ6O0TScyTYN2om
	 ZjMpklf3CAUtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971FCD59F76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564057359.21817.5963338255385056289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937f767f1f37bfd8e949ff184fddb8f4daa3882a791107e1c9979026bfc6ad37
Date: Sat, 13 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765640573
