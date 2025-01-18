Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E3D17C61
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737164754; cv=none; b=fXevPm9PjaVilHXxBHhdL2smxyNFIUzRICW7SHr9PM5d2SJDAQQBRqj0T7T1A3bTi5pSzKfILUvLcuGY2KY5dlNY1qt6jc+pRrj7Q7n9FjFY6OsegxandCQ0b9XedVZjN+lqLDF1ksDVcWCF90jc+zvNLJdbmJkV9KISMIN6Fv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737164754; c=relaxed/simple;
	bh=ZVS7e7RTX/Z3+OuqQ6yjlccJKeAyLT3sSVVoGmVCO0A=;
	h=To:Subject:From:Message-Id:Date; b=t+8YKSMXTsN+C3x3YIaPqxFDMav1WORBsZgH7Gu8/5gEcjRzRQuCQff/pa7p7CoYBPNUgk8VLfcJvVBCtSsTECOZVXqCNhFTJswRLvK4d2JYdQ802HDYKmGpDlLOpywbyWokyivHuoB8XFqQOj2gJg9QfOK0qm2whZR9gbPAcuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coeyDukN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coeyDukN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BB2C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737164753;
	bh=ZVS7e7RTX/Z3+OuqQ6yjlccJKeAyLT3sSVVoGmVCO0A=;
	h=To:Subject:From:Date:From;
	b=coeyDukNfVtTt2G0WA/3N8lk37hSpMGWRD3TQv6aes9eA1hesAiIcAdp3uXwMYpIS
	 FuX3E1OYoJ38NnmqZPkto8vkyXGuM0KWMMlj7WWw7IvI9MTkHk2pSrfxPQslxKcCqh
	 Xy/Dgl/o7V0m6wKznuFVQL5ebNXvTLn0fB3Jk++0GTSNBA5qBXBjIMjrluEkt/rVGN
	 rgksNgOki6hqSYrj5GI4YjdpGpgj0yIzDrLSsWqhD6pbBaDSROf8EXq8VtvXcshLzY
	 Nh+W2E9xkCP6Dl3/Mj877wwB18tyex2rZp9k0laR8fcDTJ4UWc62c8cV4fZbDdpsk0
	 dvMM0BbHzfQ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6A5C02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173716475360.25559.11752170412086933410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7618a0b598972caa510d09a819d4034aeafff9077d5899607e1c72da4f52e818
Date: Sat, 18 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737164753
