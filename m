Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258AC1FC8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764309174; cv=none; b=EQFdBYwvKoXBPXfe8dyYoPgDQZybCm/YWK2+jXRFDV1nWFajU1G7mL40jWg66rTA3OtsWa5mPBIW0w0gwMzIV0qpwObVx7WcHgWg+mNnPsmXRXVHkgcYEh8gK9ONOaIUJhq4PO5QynAZAZiOltBhDkZHH/7kJ/9ioXJO+e1uSZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764309174; c=relaxed/simple;
	bh=O8k1ECbx3XDi+RN/g4ejc2kKq7gTw5wzXX4RAOtkwCs=;
	h=To:Subject:From:Message-Id:Date; b=FHGVfCp55lgtiGrll0jrH2tnl3QxjflZy795HDmDPUANKZk6sbcVjYwKbdYvzH07oLbIVc0lv9C7wbYl3/bsRSIyf9K8ULWb72SZEoWoX7KgrdqkFlKWtO5B1f6hVmNW+dJS5vVmY1wtxHc4jBP+Mlp7PiX+glNnttol14i15kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJrqRjKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJrqRjKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAF0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764309173;
	bh=O8k1ECbx3XDi+RN/g4ejc2kKq7gTw5wzXX4RAOtkwCs=;
	h=To:Subject:From:Date:From;
	b=sJrqRjKGnlORjPDnfNAN+6bsjxEI92FStKmxUE0A8KRQDJ8DoLGiaW8spIzBZFan/
	 B9PNEAvozmjMJe+JSs4MhiGJg57LHsxwMhVE77MU4+1Hq66pcKeWYjXhvejdh6vTBD
	 8fg3N+NNiMg6Fdn7dhMt1FxxKPscLiaV1qBVe35fxztoC9TTr6RbhAcoPkKxqPx8Rp
	 OOuqv3GV8ziVxnVYn3bQBgE+LMZFX6H75OrcX1UTQ6w7mUeEpGSiEw46HjiAEedpgy
	 ZVQUBHqlF4SkSPnj/Ng2W22aCq5SkK7E7Qih5sJu9zfGbckjbpyRnceDkOEAAbmgf4
	 p6mVIaHDcVSsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AFCD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430917358.17464.10389174264888168992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96d9101db344bf7b5b2a7f73fd61b3b80044dc3a299b6b4be9d630a2a546a27
Date: Fri, 28 Nov 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764309173
