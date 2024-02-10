Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EF2282E1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707556697; cv=none; b=Fmg+dcGhHF1NNbazlISTmPe4DfQIHeJU0sauk+Rd24HtKJ+TVkf/3HAOf75O5sy+h1YUH8ivLjBh9aW6oiYIV3cOr1RH7piGXH/rnu6GLPfqpSrfnjgQ1p5IcdBGsvhlFB+QdsnDXY3ylPudVObg4dJ4BkTHgRCLuG2BAwzpVQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707556697; c=relaxed/simple;
	bh=gtgnBYPfImrGOfVpWcyG4ai6AQ3lt+s9Edq437yQgmU=;
	h=To:Subject:From:Message-Id:Date; b=hnVRDbF4CCWXfO5BttXbnouTKEqiMkjGjIem2pWs2bUJjSB8qFklcxrcoamA/sfAGXyhw1DlBBSBGfg6pRphvsRNr3+svBrygHWl7Cmo8eqS9zvUKzLZVt9FG6JlC+Ll09dBBdTjtnoH5COwcjh4V/ocQG4mPrwGV37O+Te/srI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvyK2bhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvyK2bhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822B1C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707556696;
	bh=gtgnBYPfImrGOfVpWcyG4ai6AQ3lt+s9Edq437yQgmU=;
	h=To:Subject:From:Date:From;
	b=NvyK2bhuJX1kTlLMrZBu3m2SkhBxD8uE+a/Xm1opRVFdU9oUVT/kDRTIqHF+EJvr1
	 QAr4b/crzNYEm7jRhQ+KCLpLFKpgohKdA+xXB8Cqmeh/MOfLblf8/KB9PoIqiS4tdR
	 HglOW0Mi7xUF4x9YZ9JjhKbSh3GFdIuZcrRbXLxvbgZpdqdxwKn/1EXeItXaAyeK29
	 MnPRbJO2qlHELm5EdWGmwy3nAI7XHs5ZCtwQS0HjOv/po3yGURw6RU8C9OhotnaS09
	 ipdovJA7xJ9OurNcPBRShKEbnelJ1MkBIYP+/mSdn3xtG6BBWPl7AXYJcv0iellpLa
	 p+us86qow06yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670D6C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170755669638.20143.7590224418000854261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d5eccff093c720b882c726d083726ea741d8d2ed010a1dbc7b7c0322054fac2
Date: Sat, 10 Feb 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707556696
