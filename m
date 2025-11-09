Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406E213D891
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762688994; cv=none; b=nTsz+Cr43GXgh2zQ1lEtVXETFNvJziRXEaPri372ZEZej6IKqnj3XxFwp3i8lyP5jdxEPJUYB8Ns+M5Kv6Ms0qWWCphxwHTRZ2sRrETyvOjxpD6S+4neKxhdlE5RWqO2/jJsywtYfLHD+t8otCzJDDkKmYtosasi3VjQ8FAF7BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762688994; c=relaxed/simple;
	bh=XT4yPBbgUg8NmirznmjaQ6S7+GzWqJWLzz5Iu5Qek44=;
	h=To:Subject:From:Message-Id:Date; b=l1DO042TNQ3vKq2d2ITYqZcHWGbVXFn5u3V6+3A8X0cUmgTl5oiFi4OkwylNDIItNtV5ODW58oUAsbryWkWNQV3zpA9wvdDYqbJxN82Jm8la2l//yStwpAWrJkF11M1f3DApP/xSFQ6pNdBK03oCc1nWNy9nfb7+HWGfpVrJH2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qv578FWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qv578FWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D21C19425
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762688993;
	bh=XT4yPBbgUg8NmirznmjaQ6S7+GzWqJWLzz5Iu5Qek44=;
	h=To:Subject:From:Date:From;
	b=Qv578FWUxFDE1RrShP8W3kpYburB0f7PGgwkOodynr8GFAU33EN0VMJBIhJm0Adgl
	 B6KWkIjXUFBdDvH3Wo0imxLSXlKDKpTIgB7bKMcs5p0ards9XMy+WtQB42uCzBf/jk
	 6HIrfkU3e9SmDAer+k+8DjwAKLAdaUwVq6zP3N3hcejVa37pqh2xE7KSUGerWUtYWe
	 S3AS9xxCE6AoxX0WjL2dp/FsFWmtQhQ1ccHqvQrw35xHlMB/QkkM4eW0Co/xfXQIN3
	 zMgqAnJwzAwzvC8fIfQpwa+PZB/KpdMi539LbXPV1fu4z/pqiICMtkgoUHQBYT/BRi
	 FhGlm9xcrp14w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C2CCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268899358.13430.3567832833478121513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6607d364fa7895057bdc5f5746e10e446d8e24fe58ee30247ce2c8f093d3607f
Date: Sun, 09 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762688993
