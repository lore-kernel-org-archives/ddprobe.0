Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C20D1DD555
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728069954; cv=none; b=TByee7JgoVa12Rir3bp4oKJNIbIEa4FefimYOQ1POhmSxhe7oni6OJhpXMzYpKf0bPHyDuaqofWhs0vgoy4WHmdguzs7pPbFx9UjuJp5xQIRWPKm8o+kXYO7cie+YT9KfSMTIgcMTJw7SoutSozssnf5I21BzTVH2AoxS7uhDw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728069954; c=relaxed/simple;
	bh=hig56WoaDtny8dSMng/uwPggZ1egyX1aR2OLwSVJT1E=;
	h=To:Subject:From:Message-Id:Date; b=PpPaqwPBcDw5UM3fOVrrynRtEcmwCAep6uUtD5sKrQx5rqmg3uhzvtdjviqc/A/A2NedOE5TmNx88guE89AcB7XOzBJ/J0y8LUq6UX5P8u/mUjq3+WD0aNQMeqePMu/KsYohi5vLT5fjD9tLlq8Gb/3t8kPT0pcb+rPiCRsuCCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXuTs2by; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXuTs2by"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3EFC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728069953;
	bh=hig56WoaDtny8dSMng/uwPggZ1egyX1aR2OLwSVJT1E=;
	h=To:Subject:From:Date:From;
	b=WXuTs2by7VviLlwFGyWJ7Lir5JzxtnuNVR/XQNEKw7IkVmKbMiV5LC3pgxz9wG3N9
	 Hf4nXCRwDj/QwaCL8mTHI0M8Y41dW0Q4CdpOtXo3EM3NT11q88Ff91XacZA9rbmvj5
	 IlUuNScOHzX/6ynrz0wTp91llyUMMeF8Lz0DS07Z0hCCoO7D/29z8KmJT1b3FaeY6D
	 +U/4yAeuhResYZs2VodfFVjokZbDK/4oUkA+HndEel/oJNlA2wpx5IhkitmHdI6zBl
	 cFSdwv1uybNHCd/eHH8LM1RjMmx8Ww9NUBkxsIwxB1/C+XOJGjHFi+Px0VpTu83kqk
	 /SNOvthNylPAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99918CF8857
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806995360.14449.16431093214575856426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1877fc3402472a65b83640970df1fe193127701274f77d1d960fc8463d4a3c56
Date: Fri, 04 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728069953
