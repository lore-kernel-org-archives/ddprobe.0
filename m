Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DFB1E868
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719302003; cv=none; b=cRyDhRdvYkKebeZMefORLtKtDcwKD9LccjREhfak6Kareqktxa4D0ONmI2aCRZ1v4OkX0yN4yT91sc2TkzkqhBR5XwvmKMItiQx1ISti2A566OY4tCvY0wTSpJRIXRs83I6bfSdvI0ocUyF5r/V5r626lY4j6/6uj6VzIALyKK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719302003; c=relaxed/simple;
	bh=4Dp5tP2hNyZIlz/TA1kapAczEKDOHJyff5x9dZlXK+I=;
	h=To:Subject:From:Message-Id:Date; b=Bs4m8ixpq586b2oTuK71Ruvme4aSjNB0VOso73SexkaAKknTpYMfB9+jnWb6zRKnnOtqc+jnniFOyosZOY0Dy4qNOLYAvTFIYCVijizbtI0BdeiX7gQQGguVxRQYSwHxyx2hr5PWBqTZnSwwryxBWy1I9bN/daoYtVmc/LAZVS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRKolEnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRKolEnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEDBC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719302002;
	bh=4Dp5tP2hNyZIlz/TA1kapAczEKDOHJyff5x9dZlXK+I=;
	h=To:Subject:From:Date:From;
	b=RRKolEnlrgq0bQNGmOW0QZEnXHo6bTL37kz+8OejwAxVtGzrnORA4V874YxwNfyU3
	 2L62FADKSmYO6MaSBgrBm3G8MuG7zoIdpEA+3h+jDiHqAfR9dDgy1WD0LpszuC+H+N
	 dfFbIaRXkN4pX8mtUVoNp0UFxLD0l++vunWYjZy8Ffzn7k43bclJxErdcslrLw7Zmk
	 CT+Mv4M+SQQIZDM5wpUWzsE4rxYxq9FNdxOenZkFJubmmikEjEIYpunQGtuVE7CoUw
	 5PAilZ9/NSsZ6x2EcON0YrWX0LXT2IMG8HfPIFGZV7xLTArtQJefOLGtjmUoBnTQNa
	 yUTxLGE2jtJFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6ECFC30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930200280.9171.5257959878316438027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415a453bc0984f7ef93ed4a990b505cda7bada4aa182869a541eddf434a1e7aa
Date: Tue, 25 Jun 2024 07:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719302002
