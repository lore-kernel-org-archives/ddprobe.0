Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2411F2E3AFB
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750172394; cv=none; b=lxb8pWZ7Tpp7foDYgmfKsDzscLOQyZMwOjvdO+5HjsNWrRLEzT+2KsdyjxxjpKXixoARgEYf9dzOk6sGcoTzUtMpMV+muU9FXf1k57xmQtOr4ql78Y9hkveYWEE1tctzP3gOngWHH3OCNJv0wyVC4fymItAt83YqC7BDHyCRETg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750172394; c=relaxed/simple;
	bh=igvKrZidWz/zR0ephMazcpkw4Up0OA/+rKy27ISt6Po=;
	h=To:Subject:From:Message-Id:Date; b=Zuso+P9TxnwzPxUe2sYFDUerTND903fyTopuZ1tc88i9G9TCqHSFHEah9/s8O8MrL4GfsHimHhD/PN0/MA7zT3ibk3aYhXh6NNdngUM0jjg1Ii6el8S1iaAklVX6CrOeOMP5wvnz/r3ovE5/LVz7Zy7uuMzC1M0BVzztot1oHSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSblMSyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSblMSyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A454CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750172393;
	bh=igvKrZidWz/zR0ephMazcpkw4Up0OA/+rKy27ISt6Po=;
	h=To:Subject:From:Date:From;
	b=DSblMSytbHjpt7gtUyyTEHzHtWTM9YlNK6lt82NuConomRw2ivtLGH2YjAqyAte9z
	 4ZuoREaLp9pBmaukpEDb7ywb0bRW6oz60n+7rxJ2pgyt1+hW1Pko57C9uDhaI0fTP0
	 WlKAJ3TF9DxlFvYOue0LDGVbhOmNwDKcEhZbLEsM8gb+UiDG/AqlovM7OXTmPi1791
	 bWV/7pJ/jfa+wXT1d4XWhc23vZ+C0CE19VoYAjqy39llk3AX6fww0OB8UEvewF1Xop
	 zotmGUEO5fbV1kKdO+sHiszMQ/XB772EkiUUx8nmps8rVs0X21sAnGJr6CzKG3LoWv
	 Pn3/kI1bMbKMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A5BC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017239358.23069.6022640698641235491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53213450350e86a4cf70cffc85c317961f1ddbd053f5f7ba95e66aae44bcc8cd
Date: Tue, 17 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750172393
