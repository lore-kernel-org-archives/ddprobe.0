Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E2327472
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751851794; cv=none; b=TUf4V8GxQWpt2P7ndyNu4SfdQB699rYo0JjrOjXPMFukDCMFdg899wagDHdfSqfYTEeomxwR/VcZnEssa9LnDWLPJStoSb27e1h+XIxSoaqaQ7mnYg/TWIyvMx3xxvZ6juZEq7WjWvqqjQe51JMkCjqi3L70V/2t5P/oKj51GUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751851794; c=relaxed/simple;
	bh=BGi1/7SjZQwzBOCUAaO13qvzROMjC/MqPaW0fhMOeFQ=;
	h=To:Subject:From:Message-Id:Date; b=dZPTpeakkysEQg/Ux5xuIczrf6OowKeybAKJkwjaDdKfY0ODtNPMwVBKF7r3bcBozSH2qP23D9hisQ/tUG+Im+UqBQmxy9FUR+1MwWeDbLVSkvGeFiHyCb5rPViI4LJT53uU8UrRWkzJKr5NayJRGTGP5T5TOcRyLsG3fWGQZvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yb0lKUH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yb0lKUH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46E3C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751851793;
	bh=BGi1/7SjZQwzBOCUAaO13qvzROMjC/MqPaW0fhMOeFQ=;
	h=To:Subject:From:Date:From;
	b=Yb0lKUH2iNyjfiJ5syejMWdbfgGH79zU4DJILU/JASiCuE/z74VWQCd7xea4HKp5K
	 iTqwd+jvvVNQGWkwQhM24dNUYYKNvEP1nqnv+g7eNGDz/qqAAfXU0py/UpNSOkkQCh
	 +mgRfRJXjNcjYyBl6Pv/cVQUhRIXjCFmmQR2AFwZOJT2NBx6FNWtmzGTeU9pdxz4hD
	 OKv06QiFSAj3Dsr74/Lt2GwKhgdQMJsxP1QfL7bvie3QESraEySYyrT65LmNz9h86B
	 sI0vUJeQChoj7p+KNLNMCnQ1gx6gwkG7NcqV8tQk/mJGFVvThiibbW4z00qqGD0f1Y
	 BYUmHVM5sGflw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923DEC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185179359.6408.3950955885123688482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b88a89af0fe6227e37f414b4e0e541d84dc6395a469e6c34e3f7642badfffa
Date: Mon, 07 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751851793
