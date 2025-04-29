Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324412BD5A0
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745928595; cv=none; b=rNfIMG/zDG8MoSziV3f1GJULQeJ+YV6jpgQ5WOsmeReCDxE9ZybqmaWw79nLkh3ONdfebXSuJ5c/034w5+l+sBLesAPqlseMudgcSEFgC789CM5psMLKEtnQ54SLbAT0grfdndGE73E1PXpKy06NFfaGGctWdxFqqVci6EA79zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745928595; c=relaxed/simple;
	bh=cIEd3L4fmXsI2yeMXfNcR6eQG3lM0y4UMpexiYd4wk8=;
	h=To:Subject:From:Message-Id:Date; b=q5NpPGDsiJUILe9d3gi28jh73BEiKpcE0VfSKEXwXVr1r6ZeP0/0csL5etOyke5NY2lcU0QBMeBEYZDXhf7aONvqurSGBH+zxfZ/rV9P6fqLqXT4apFQpvqynhaJNgm0LqP+VdZao3STfWRwfeCVSXkU4BSyNO74/BLXOkeDRFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ga2BnY6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ga2BnY6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B764C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745928593;
	bh=cIEd3L4fmXsI2yeMXfNcR6eQG3lM0y4UMpexiYd4wk8=;
	h=To:Subject:From:Date:From;
	b=Ga2BnY6fHvDtHOkvvD657xOKWPZKfNMV7RtUqQqB86lKyJqHCrboJjqHz8sBR5QbD
	 6l3/23m/3K/P0LMHdjhqen8QYsOcXPYWQ9YJAJOybimcX/cWFNnn7NM1kfuHtvAiqC
	 0/SQOlsk3+xVOXuE3rW/Hm/sdpxHeuR0KVqwGRuLLQg0J5q1Rw2qEfAxliFk7LFDT5
	 t3QqH1fS/ZlrGIHH9tgf+RekD1fjpudIfkUrz+BEZUjmmmiEdT+8F7bzuknCq8V96k
	 JtcsN5ZULNrsWKpwt3ZvkstkyYKJBpO/MAl478oq3RmiDPAgmF5oLjANWeZddv5TIU
	 5616WM4dJZLZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA7C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592859357.755.1671855090267014618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5bf548996e653a720a1e4ef0f8aa514caac24a24fe19ed0bf9b90f9bfc2d63
Date: Tue, 29 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745928593
