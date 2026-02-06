Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A513335547
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770402234; cv=none; b=DawdboPofoJKx+UHiFsoMDaBIuOHkOeO4XgwburnQWhht2k+3Guc+xJZKNXyD7ibYp3t/5+p44Rlwaxhu8UrWM7IVw7es65rpRaiDcelqD80i9Sr74coXzT8bKD0NL+Z8l24vUpkYbUyuiDkUM7s6wV9R+FNxGGv78ehwdO1Js4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770402234; c=relaxed/simple;
	bh=vzrFvMYSHOrBde92OlJcdRByVbv3ih+UsiHJnhYQ6ik=;
	h=To:Subject:From:Message-Id:Date; b=S/KTtwSWiug1Qf1JR6/MGXhnQVc9Qrr+idIO+jmEcr5Q3Y31SfkJZZL5AbC4xyW19VwqzYit4VQiLE2n0JHoko3yg64aYEGxR8Tvok67x18NhiDZ6uCPH3xYJIkvx1WovQmbqBlKWji8FN4RULk0r9Dep6Gm+Dd54K7GoOm19xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STsmSuvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STsmSuvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD12CC19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770402233;
	bh=vzrFvMYSHOrBde92OlJcdRByVbv3ih+UsiHJnhYQ6ik=;
	h=To:Subject:From:Date:From;
	b=STsmSuvJCTeDC3e65lSfDIA6TWlakWvE1He8fQX9M/b4E8/JyGX7uzrpKAzKvmuvp
	 6cHPUkubDc8ESoSZenPVm3OyGk1f4aufTQmip9AAzD4TxNj/t67GVs0cRE0TPVeDQp
	 TDsNh2tTIq3KYnPZPDQiuYKYowK338nTWJHNC+81VIb62lTLSSgUh9DjtDasq0mC+Y
	 EMpns9faf9OmckGDByKEs5CAQEi1boUwoNHhsyhgk/zoTzNH9Ol4KsM8XjKCL1D5VI
	 vrWAaQMccyG5Ihp5UwfparaGuQXgti0aN4Su1hVqJpsItAETIIjWYpTASjHqKjd7x5
	 sRKK/yXX8ZTsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9873EEE6B43
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040223361.5579.14917627587184645467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec19ed008174a5e6b8e35f9bc9be6c2afef0f54b836d96f1b44a67c962c5fa4
Date: Fri, 06 Feb 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770402233
