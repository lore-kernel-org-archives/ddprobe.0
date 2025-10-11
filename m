Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E4A3D6F
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760156994; cv=none; b=cH0PcIOsQwFNpUydVHZezlg8DhD2TqmDsECExZfwPBDIdbU6DBAGajnZqz0GqzsrrW+G2F1E2w745GTR3fhe1QGM1wnHiXmAA9AmHARVrtPS9OvYe8NV9nGTEXJBe/Rcxq8nPfjK558fDlgWllYRkqWhDuvRGFhUGrGAdvGm7z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760156994; c=relaxed/simple;
	bh=I42RNBRcO0TuUHUmFLA/sAVGzgOqo8LHmCBu6j1xBMY=;
	h=To:Subject:From:Message-Id:Date; b=URkFQ+oIHzoYLumyzoK0DWliAIcufE9cZP3RB1Kkf1broNRfIuShy6Dp3KvvO5OZESEEY+GNw+fJ6Mtp0WEJiZ5jZIzDO4DKnl3jCOTzVUCvlR8eSymZH3vBnUJ4hyb7ViNmon01xD534sHkdYptPrOV4OhFEej1ZXmct+uR0ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hO6Tg408; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hO6Tg408"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A4CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760156993;
	bh=I42RNBRcO0TuUHUmFLA/sAVGzgOqo8LHmCBu6j1xBMY=;
	h=To:Subject:From:Date:From;
	b=hO6Tg408knHmFgF2LeqfH3UW0SfPAvWpFit56H5ljVSRHa/KQr0vIyu5JrUe8hUE5
	 fpxhLynyielGrbsnbjY0jX0xqIXa+1ya2yOZp6lniu3eFbi8mTbTYQUAlSUhD9ACi7
	 IREdOBEC88K57D/PvtZ2IilOUFEjSq/goMwY/lz6dklwvoBNxwmMIRYMlKiIdd8k/f
	 yFbXl3A6Rz8ZWilrtJ3WJ0vJE0itWp1cmo+IQkh/0oMkqXgsCi03jsIsl9DH2MPbHk
	 s8sch4XQWobK9FelOkunAt/vdPUfjNrBG15Q63ADB3BMzxWfjZTnLx6Tx8AdwfGs7Q
	 3lh9iEDTgDQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E28CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015699359.32412.8195462699312865983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058864e542ae327fa24196d5b78ad0db4f57977191d16420c844a623a1d92149
Date: Sat, 11 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760156993
