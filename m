Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1329B1EF0B9
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764745974; cv=none; b=k4LNN9gJSVt7peaBayGai4tMMla36U6/ithDzR+o3neXvFVmDiK1Pe/PLxhAMRB0TqvtT+urQNCrqOSnNxdeaP6jP1LJ9LyNPv0GxCGPfb7blbqYAktkpcB8B3GqDASqQbb7S6WCe9VBrnu4TNfunzVbSHkX8XuVw6NAtX67S+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764745974; c=relaxed/simple;
	bh=XzqSzOnc3hPGas+zFi06mOZDARrA3KcxGKMTIjn3RLE=;
	h=To:Subject:From:Message-Id:Date; b=NO10SZiwp8Xweup1gpCkZQw2ZYGcC6CxOOk6qlWhU7qgBksblUfOysQgmaisLKwUEFx8aRZX1ihpN+4BYfPz1m4Md/nlb/Bq4S92OjAfUpX5QDtgc/jamGK8bYzTdRVnYdF41sAq1pWERmq3U0NZo3rdQ+MYjfYVVbELu2AxRvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9a/GEOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9a/GEOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9408C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764745973;
	bh=XzqSzOnc3hPGas+zFi06mOZDARrA3KcxGKMTIjn3RLE=;
	h=To:Subject:From:Date:From;
	b=j9a/GEOcsOLKKGev2FpDIo2w1lmLqc1F06hhhkB59sZKQcGZwyAf0M5FghKJlMNVu
	 fTJid3BZMbbBRvPYPZxMD6/ntG0CJpW0wzOZn+DfchBXuwDQyHtZJGjfMQ5aEQpB8n
	 /Bxn2vPPisl2dtUIqYeBzqeVExw/rDLpUQ20ulrvoMg3pxkFSjCOc5VxtbJWoVZKoa
	 2TPqYEMwCPgZeaWIAb4rdSKZfRhNHgMNfOz5a2CTQLk2q8PFPtGd3ixQeAqUpGoD9d
	 uNC7nn/IBitfl1VABX8StprTV0V36j0wMo1Fg15Mva0tv5vJ/wvP9M/V0Xk/SI+sGX
	 2FhwKZzrZMlMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CDFD1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474597358.1144.8798332185988199876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46dd1972813ee17c5ef944008e60e1207ae93a1add8cc7dd9304d4a4e9f0429
Date: Wed, 03 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764745973
