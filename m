Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D00E193402
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747232994; cv=none; b=DtDFb6kXkF8uAtK3P/93Kqpa2E1mSe0+VKR2nT5rmQF58ruZbAMm1wDHmWLAzB+Kp5sNfnaTB48O4A92I25qnyWO7IFRlk8jLJYMhiuE+Z5rRexzu7MFOdRcNQcT9+tDgZX2YOMcAij0tF4Zhj+FDVKnvrixSacJxShvsZe1dx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747232994; c=relaxed/simple;
	bh=NETU5GlPSgG1E/Ge85rkPdXk7qWyCtYVO9tp/+PM6N0=;
	h=To:Subject:From:Message-Id:Date; b=TcbBnLA/y1SoFB7wWsRpAdniCRcBY84u3lOVvknsurvubsh33dxUI40rjIAC4YgZ/b9w7hxfIim1lOQE//qqXKYMykFfKNmbsPsL/KtVYw9R9Dw101cbnkByCCu7IQPZerinPoF9kw08IgZiukJd1TNvrWuHnkx4LM6LMUG63lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SACHhw5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SACHhw5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC82C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747232993;
	bh=NETU5GlPSgG1E/Ge85rkPdXk7qWyCtYVO9tp/+PM6N0=;
	h=To:Subject:From:Date:From;
	b=SACHhw5zbf6EbxmZHeUkI/z6q3S69IL/um7EYwFEopYm9Bd1YIEQRllpQNDSOocK2
	 YM+cSLv/8tjcosxdEZ7JREnIjH0Y63VS5XTWOKzG4Ot3YcbwO+EjsCXiRaNhhpUK6n
	 vj9U1j5iiGGSZXAIDBia5Hn920Koqdka9koTHJ9olQn4sgAGzORxNn49NmCPDZ4EVa
	 VY0z4YkwxOn6UbbsvyZauk89DXq54HXrR3inKkwmdgaEk9vn3OUux/ny/r27g3mjwr
	 m9DX0w1Vjb6PCqxCo5zRlxEGzqe/WFMrcy+nkg6KvEpzi39FTYyb8sw0xtmHwDKJwQ
	 8CesBOWZu8XqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9865AC3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723299359.24655.14511907182244927429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4583157e05f3a88e36f70e9da153c5b4e24a264e82968669a553db74ae4202
Date: Wed, 14 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747232993
