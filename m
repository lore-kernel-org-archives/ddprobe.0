Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140E2185955
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758488994; cv=none; b=ep14ms8uWOTCGsWWEYEmPlPV97sM0Xrn0FcvXSOWPqlbVYqbV0GVoD91FFr5WCMVzQLoJdS6nsxt7iVxTHS0Z8uM7rDxv3XdeTiU5N7Q/DPGtGttZeIdTV0KqQBF9JlvxwLEAEbO5tTi5GBtlm5l/CkPjFTM6Px7QV56+F08myc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758488994; c=relaxed/simple;
	bh=ejHHeRPuVHQXzIniJFhlsB66NDYNbArCCqSyNfnRN8o=;
	h=To:Subject:From:Message-Id:Date; b=jOR/tB3I7M17QpzzHu39YfYGyWDEqVHvbNrZ6nQQ6KVJ1u5rnxsTLUZFCg5kQP1E5TBWNlbRP2WazQ0FRZIkxFMIp/Z55hjHd8f/rTgV/MjnG0KyI7IoiS9eWHmqALnr6Xc3slY5xqvG7WiTqWbiu2HUDQENfyi72YLdDJ9uvBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJ/F8+Ak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJ/F8+Ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4790C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758488993;
	bh=ejHHeRPuVHQXzIniJFhlsB66NDYNbArCCqSyNfnRN8o=;
	h=To:Subject:From:Date:From;
	b=CJ/F8+AkjOXx5i3tJL7JLW35Lkqho8ziRZO+ZIHGAx5qbI2OcP+pNPCY2GXHFaIcg
	 LF2JWED4aNc+EX7JuO+rKwcbEZqzyVzERf9fZRSdSiCtcDFxTrJ0PijA9qOmPlW4mY
	 6SBlYt1+SiEu66g1cnbrrwJD6ir27Y8K4v4N14JNewJtZMxyenAqBdIItqmkqSuYYX
	 Dq6EWlgF2kIE1TKaBElK2UnCBVs/La5Y3ASKwp7PeFzPcq/RqkHqsNmeReHUqTtBtX
	 +rGQqkgRp5pYah1T7GplcaVZtF3YCpMcRoDOSakYcrjaLfxws4QVN0LEuFNen+QjwU
	 +w8DutrfBx8sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B18CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848899358.12500.14273077120450216421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78f02418f000afe630560986e17f2f4fbc9126f67e63073ff0ca27061a52b75
Date: Sun, 21 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758488993
