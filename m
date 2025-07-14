Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F522E36F0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752518395; cv=none; b=DQoYvXeG1jdXzC6rFfJsEu28Scc7tPKDIFHj1ImJ7ZTF9O4DHK6PYGh1qK7jipOu8cFrHaRrYgeSOyAmDlOgOdFpuQv/yPLwC3zELchn/DjGAEFJGBIfJu5O7BYS6gzD6neSJrJ5RC0rJ5k7u4vkeRRGhL3EE88Tzyjs5WbnwIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752518395; c=relaxed/simple;
	bh=mijCHV2KswWH2hOQlMxwU0zuOR9FOxi9/IuomvcQdZk=;
	h=To:Subject:From:Message-Id:Date; b=EZj4kByWooHJq8/TMV8QAqbFxoXL6uvCZwFC61uy8UKaxv0lpxKZhsRyThz0OOiROoTI+tnak999J6f300t5Urp2Z6UzbAjGhtcvQfQx3PFpIvr+DB01YmYvFWYWt6aJxvFRH2+coKz5wi9zdspyTtVYeT+2xlZiKJNkpOMOPoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/azg3dB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/azg3dB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752518393;
	bh=mijCHV2KswWH2hOQlMxwU0zuOR9FOxi9/IuomvcQdZk=;
	h=To:Subject:From:Date:From;
	b=k/azg3dBOPuxAIbPIMOZEI5yi+V15dJP6O5LjtGw+Eq8ogOR/DT1XhFl7vnVWB9pD
	 YzyWeJa6yudLMQIkTDdkJEeFaGVjiem+9NEexgKTT6YiqgG4jhr9BkBqhca2BNerki
	 Uz1ofVFR4rJ29ibS8rZA8jXaUlS/bS/NNzKCKpzlTwxjxK4yBd8Y6mHXACz4oPBNSa
	 x5pq0wFnpOvjNuAQDLIfrfdPgCp/0UW++DSYAk6bpVsadOiGcOOuy8ny9YFkJm2F9c
	 v3WUM5SLn5HhKw83HHSPp3UIPfBRIi/0ZU0G4aedlfYR+ITwV83Mf/C+XOteTajr3h
	 gg8IhrTwGN/ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF93C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251839357.8221.3086491745064127684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224c44b25dae16c5893c3cdbbd042efdd65e79d78071161c02750e7397a9bfd6
Date: Mon, 14 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752518393
