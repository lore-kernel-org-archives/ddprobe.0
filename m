Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA34C1DDEB
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712605097; cv=none; b=HBc7SJYs6sgZ0Bm7+j6B2FakQkv8osrXDw99QTM2cCFrzztj012uMssmsrrSgGwA8rncv//wlxY8De+qNvk45NTZHcwfjLc9isLvr5njmq2Z0yTZ3ZbKvk8ELkd+6ZJ1tdVU6ZhhoKyu3tI2MsKeW5u9QDfh592g+C1GK/C8ovs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712605097; c=relaxed/simple;
	bh=I68AbMwIQwCDziTvr3P6JncYX4rkKDWXvxbZc/DI/R8=;
	h=To:Subject:From:Message-Id:Date; b=YvgX28tv9qletHwwakD/8BdyzzISZsPiw0Pcj5Ho3dIlndIkprZ/Sa84DwvmYRJdvoq3ggqmknIvH3f+wega/XeOyr5m57mCGYrsf/mu1+COQCis+Si2CEYb8D1e8QK0orUiaSdzb6896TnXn1pizdtiA/oBjRYwnXnMnQ6dCbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVC4L0sl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVC4L0sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F347C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712605096;
	bh=I68AbMwIQwCDziTvr3P6JncYX4rkKDWXvxbZc/DI/R8=;
	h=To:Subject:From:Date:From;
	b=BVC4L0slG0EXn4/wESlK7UT5bAe8muZsYm78qv6MlCLVSirhJzxnbwQh6lLy2BYlo
	 r9Y5PwUch2ojEFkcqB5i/8udc7QqjB7sOTeRO0+UafS32My5f+nr+uEiWyVcTzzMsm
	 SldfmQLJQaU2BQNpX3isfTap6EpCH0KKxE2uJpyow1LgH5jeD+pVz4ZBYV6aqFK4gV
	 R3rvQSSuuQHLjulkEzbRdm8TioULypoi6cQFFYkoIX0qUjfz10git4iRjzheHWmF5p
	 GsD03jynCH5Ry8lcet6lLhOyUnS8nrH83CCJkFd3XYYaFnHlYHJWgzABAAoPLoFrzq
	 7wHUn0+H8qtKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D042C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171260509643.29492.4628120530200208073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7a430dd484c8c12051482b0730bacc7af36caae3e92b58d4f9757a1fc46338
Date: Mon, 08 Apr 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712605096
