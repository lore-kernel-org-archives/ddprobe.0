Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A0A13E02A
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762088394; cv=none; b=d/RF29n4pQCuJ4eZqLedyK6KZjP9EuLWPJf2pqVvr/ngW81/Ed75BwrI9gzHbNi47y0uZeRJDphwi7XwEJOwci1nYHxALy7LWu1CLqUB5YnlTNMH3oveJ3UQ+KZdjn6rabQnvUuppx8NM89E5JOSWgB62rZT+jSbTSM2aHUSFoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762088394; c=relaxed/simple;
	bh=FSVZ1DpKWQ/91wfvQO4j7gaaq/KRBrF2HizX8ZDY5t0=;
	h=To:Subject:From:Message-Id:Date; b=VsUEiycdgwpYp6KIgtwLDH4tzsN5Nkkzjn1wCU51Z7qjHyFdsEpXmiMd8BaFrqQsG7S7jFF+jM7vTDmjyjEQ3aNCpLL44FAmB4jH8yFeKaLb/DlyBKTWbHq/LeHt5u6QedKsx/m681VC0T0ZqD4snxZzhbOg/okoztNJyZYIgUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+b2lSB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+b2lSB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BBEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762088393;
	bh=FSVZ1DpKWQ/91wfvQO4j7gaaq/KRBrF2HizX8ZDY5t0=;
	h=To:Subject:From:Date:From;
	b=A+b2lSB71z6GbAB2RR1n6yJPoej2kwPq02rNCFLE7fNhLhJ885NjRthoKS8bbGand
	 NVodEmz6H4PVBQo2Su5T2fZQQz0ct0SWyUK3OCjsr1iih5HZnI9biSn7Oo2/9EkLcp
	 jjSfEJeqQZkXaJuvZTW9DbW+TpOih/h+xGsIPH60Mxbh8W/vAJ5+i8Iwv4TBV3Ywnd
	 GWyBFcBPGYDEdTCDU8lKORwaraO7apEa1Y+anfrAM7D4FQqSbEOcHoGbayrQCUiKMN
	 chh4HUEQhYyWcWcrSCLDSuOf36R/wj/1kf9Wfgz/7thhol2qiLXnLWbmdPdncHmRZg
	 qsZWtrAsTwttA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E19CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208839358.18350.11340916973148422278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e78319e8196b73aeb60cb0b1bbc5784ecc0120a9f9fe51604a2e4367565e29
Date: Sun, 02 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762088393
