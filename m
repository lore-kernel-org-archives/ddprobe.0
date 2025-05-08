Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367D41D63F5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746691794; cv=none; b=mDyyGlLTigC4MYqTF19b7IAL7UWW60wfhmSBEJ8Z6AJABPVhnvP9wmCKqhXtzKG8WuuRSN5aSX6gQ1M3+VOoN2thiX7+Tv8cNmI4FB7gSVNy52gxlJiXwIoCZHFpLKV19xAZ5rW9X4t+xNCdohsncZ6BhXyvjZ6V/fmsvdv5M6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746691794; c=relaxed/simple;
	bh=mfLWGUfgsE9UV/LYEoOusP098myxnfywrA4oPwMXd/A=;
	h=To:Subject:From:Message-Id:Date; b=LzdxwllNAzqiyCpUPDfRSN0QnpjehLsHsrXs3LUXUdCGA+c8UOX0N7uhgRak2sfPXWqOgsZFhWXutBJxJZbwma8cqZ80GOlhMZonUAHOwVW+GvRLzBfLjH/f7WZCXVm2+6K6FPqnmwyMjnQY4LlEnCzn9fxeQ0kOxP9+Lwmcgns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcaaEJ44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcaaEJ44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99AB1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746691793;
	bh=mfLWGUfgsE9UV/LYEoOusP098myxnfywrA4oPwMXd/A=;
	h=To:Subject:From:Date:From;
	b=kcaaEJ4451XMxS3zOSDPimBFoaeq0LT73aFenL0z0XQqw4zeS/kjFNOm313upKsEk
	 ZYiK2+p+WuzId4RSCm2oUolpAohdFUw3+krX+iT3eSHiXrzIjqY1oaqRuzXaiMqJep
	 vFfI6Ns0tTX4YRQgPymFOEgzoQNJMtHvnNTpXUV6GzPnaad0qHnTJKfvmnPkXJ0ncH
	 iTEhJGqRVy+E5mTFIAkqRxNLz56Yx/cAPw71p/mtDidUAwKOq4S/Q2Mlk+5s3k5dG/
	 wxA/FGANdz5SqbPp92V35TfmFD/4ShlPXrehKpMdjndomQq4Yq2IGvAnMNjZW9Jj6g
	 0O/YeTQbialhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6A1C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669179357.3634.1428596689180071235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477e2f5d3d6635c89c51903fd05a358c431d9e81cee3fc273bb79cd1c1bf7da7
Date: Thu, 08 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746691793
