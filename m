Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF84F259C
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717441523; cv=none; b=oM0AhYEt83/89YOaTfz1U7AbW0TH+lCakuxujAJo7+R6rC1prL0kCi4RGpmg5fGJrCuO9FDQXLh4Z+UFhbbEhK86YErMXD9PJEWvOF6knnd4VWQwT/5WQeSwRknDajIargrdod/1cQpqw1W5L+sE21pxpmwaVDOkODhIDCywFGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717441523; c=relaxed/simple;
	bh=WOXRr/LnJaLo+Y+ydnQaOwi390DJ3JA0Cfka9clCNOs=;
	h=To:Subject:From:Message-Id:Date; b=lZB1HmFKX1rFMDJQeR+Nl1eIFuXt8qlk0OvEIRvQyIoM4SpQh/xRJt3kqNJj/QSO9IjUNu11b/0fY/fEEuJUTmgTLiH67+A7grvwR+lv6PhPu6pRHF03RMVKGp47teXpCsDC/Pr9LWc+D0LDn6UbhdpTSNYIrPa8hcs01avCoW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI9fVfor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI9fVfor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE668C32786
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717441522;
	bh=WOXRr/LnJaLo+Y+ydnQaOwi390DJ3JA0Cfka9clCNOs=;
	h=To:Subject:From:Date:From;
	b=cI9fVforaa6mSW2sth4HGX5wuOXQ2V02L8R7QfmmSOVDZ2+DYpbz14RRzA6QjNwer
	 jw58VHsUTAfY44AO/DLeWMq0RNjGHa5Bt6vMt7lkJPP6nivt+0Gih0f2QVvqocm474
	 VEZAiDEuqYKyXBfMQBOM0fnIJJyGvSbvuyq9OgTHRTF3RO3Ac63rroh84zIyOBs8jG
	 KQ6iEriYhIlP0xZJgzDKjoV/hRlqyHjTTou26sSBBNcriWsnaNXJtWMGwWv7DPisnj
	 U8pAleCzHQPYmZPbqe51g+AF0muId8Uge3UulnIu+fpdxr6ynNn9zu6lp5Gk9EqYs/
	 ZLmDtVpu3HB1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD0BC25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744152276.4136.14575296255178623569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4e3f6127fa31455b094c5b48031f7ca828375365688f52eac31d9d3e0066eb
Date: Mon, 03 Jun 2024 19:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717441522
