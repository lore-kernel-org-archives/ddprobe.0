Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171C8225408
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766981634; cv=none; b=oIR31FpMWZ5V8PN8RC+HM7HDpxf4Hs98hya0IwcvG4Q4wucmmb9NOgN9VDUegxZFrghw/N72TKkpUvcKSmSOhbqqP/05LH1p48XNO7SZbYekb70ntkrT8afJvSEwzbc0jAxX5szzgzN30emdjmkm3cI14M1oS4JKrZY9P4LFuck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766981634; c=relaxed/simple;
	bh=SpmgCLAX45ASmfsqFMTEqXZDLG632sEMP48/R2nVfoE=;
	h=To:Subject:From:Message-Id:Date; b=AkBaOTRcRD1FJhFUe/aWERy9ksGjtQtg6mhJ61Wm9f52DtFXSydSwBGZeGPI8RMqsUvV7RMZyDN9ESOlzftKXIgamKyIChLXUh+HZWo5+OTZd/PBlQ1JoYwzKiN6fFrYkudrBYANT6fpfBZ3Icq4IJEyhCoon3DC0a/VeePtj5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nw5uPT1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nw5uPT1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD795C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766981633;
	bh=SpmgCLAX45ASmfsqFMTEqXZDLG632sEMP48/R2nVfoE=;
	h=To:Subject:From:Date:From;
	b=nw5uPT1kcXAAH+JpokLf6mfaW2t/MGoMKNAmj873aalR7zhneTZsfhz2NXhFEEjoK
	 74+zdRYvLLLKmtLiOzSFOrG3ciw4hQ2qmKJi0VhoCV87aVedz2AMkG2naeptE4V1DV
	 5oS9VUbyyVvXX8mWHFRCbXVbeRplYzov3+c+miyfc+Cit3XhbgLANYKyKP9nDLa7pc
	 /ac0SVmpinARjx6mKn8d19KBA4hGbMeZ4ziEHe3yxtMDfKFqVVSXLQecRJMV0zcN9P
	 3Z7zPmTFkfxB50ilt+vZ6hRZvJnGH6VwK0eOftM3b9Q7qpWzsdfW3SbiHwOdEQRCYf
	 uGyfzHOuxZ+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DB5D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698163359.3904.8954686784390382778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b781de5d1fdb869d5e02fac2392d91210d53afb6c335f7bf0a09f9b8502034e2
Date: Mon, 29 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766981633
