Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2921E1FAC48
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753933794; cv=none; b=TTpoF31LcZUvXJgRjt1v9rpZmIyF5lCWzzSWyh2TGQdEM8b0gGmNUfn8+WHgv3lWoex/T5Wk6/7hukAndbnotiMJ1gsDW6hg6pgF3c2zpqdW31om0w5Ll8W39TfuEj4Gtk/Ue53Qp+6PZBOFDgFf4T0/TG9Yqls/tRVs+81U3jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753933794; c=relaxed/simple;
	bh=PLDsUneSJYHqJXR8rKdI3aAoylKOG7WV2joVTVZeLj4=;
	h=To:Subject:From:Message-Id:Date; b=hc71E9gNGgTI7lQicgADYAJIH5WGug67CQS8t7tWluOaokCc2nliz8OtVccngSiR22i5RzAz6OWwD6O9/g7DI2ks3sZclz/+THXIltu1+nimMyk4Q/K+Thwc4hkcI0dcGO4Vz1vLYQ2ljBqhSTUvQgeyh0nGgLVxGKz42u5x720=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r32CueHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r32CueHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD9AC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753933793;
	bh=PLDsUneSJYHqJXR8rKdI3aAoylKOG7WV2joVTVZeLj4=;
	h=To:Subject:From:Date:From;
	b=r32CueHXBiVKPjcQ2U8FCEF+hOz+KesXUn7SlkOOBGTOlrk0XFHuhki/M2Kma9JDQ
	 2yo2lJQu7U8Uj8YFo5HkjXcNMrmuNvVGP810dBYj7lLYid88O4UmmtN59tGqGZrAOg
	 u7Jf6vbw0O3UfAKUDXQ9tYD003x3CrtDLVDRM5Mclx0o2shf91yjBGR8JPPROGKhLn
	 yRkgpmnVFu6+rd4UGd02rUueFWr86TPe6vsw6lac5p9BSGQL9VaKf7szcOzWIm32kQ
	 0g3UcBhQEXTjwHgxWy1pwvYlgfOLDQSXq2YPwUVLghzUxQINL/+v+CQPS3h7cM7y6y
	 ij31mQtMjvM8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED23C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393379357.12830.1157952523975202632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695e28c6a95e022c28b1081be18ee04125d58a5a51f7593131b0301ec90e9594
Date: Thu, 31 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753933793
