Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3353B05B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789482634; cv=none; b=QjHMhajlxNTb0q32AJ7hVZLmuu9BUkd/QgBUoSHjvD3NhD+CWuvw0pxqvO+Gov+GbzDYKEBXcMy/SnnlqLTUPn7bxAeLJTtbbziZWLgsZq1DvJ9td9tb56tzbzdlmMnt3b4IObfz/b0vdRTMKuwqNjwk+HeePFElviBmkxRT+sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789482634; c=relaxed/simple;
	bh=qbtoB5vKxkqf3ArTj0SKfXtTGBitdgeesBCm0NHO6EA=;
	h=To:Subject:From:Message-Id:Date; b=PIbpNrJji1p/GPzUUKS/nZpcRL0qYMWzMoe3r7lUf6XL9BzdMLijmlOn7h6LcciRtTA+eykZLPZkwv9LVj87GgUUToEuCwWSXQ93zsnJ3Ow+sAWzYFGOhsZdugJWgvel56j+IP470inifnSKu7ljsrlF2Q3ejO3vrguh/D4b7Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSx81qCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSx81qCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE83C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789482633;
	bh=qbtoB5vKxkqf3ArTj0SKfXtTGBitdgeesBCm0NHO6EA=;
	h=To:Subject:From:Date:From;
	b=iSx81qCPjKhU1g0w0ZtWGteBwJKIF9taJW3gS73t07ZhYSXW7S1gGbzQxIxUqjtjg
	 rvxJX+eAp1ObhhCoLoRvz1BE8JFD+zEHnx//8h0mqMDIqA3Z2JlsX/maCF9CQKYzYr
	 GCS+J3lpF4zMXyr9P2q053hJMFLM43HnqM0FGdBbsnMasDzleC34uE0NVm8NyNsEq/
	 IE6dGA1kRHWIuxxDveX6FEM7I1G9YMnxr18Hmh31LjOoE4js3Viz4yZ3KYASLH2tyF
	 FePiYOcBZMbGEz1iIoOXdC4NfanAj2WcIeM23eKkUGe7ZG8+p4WshPXP3Et6z3smcU
	 z/k7CFLKmT3jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93C8C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948263368.27034.6690263105293583319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a389922586afafba00c5240403c722ecf4354959d2d4298a80244035a8c88f
Date: Tue, 15 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789482633
