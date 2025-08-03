Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121CF25A659
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754201994; cv=none; b=PlQVuG93LenamFGTzOtPQ7dCbDQoSN0YbUOB/7ypCGrWXaSu5Zhx7ywvE66IS16zCUJCY18uNez8z4AT6Z+PX9lnVNcX7DgxXR76GT5a0KhCbBTn+3akyAbgusgmhU+S6agTmnPYER285iZQO5bd76ekBbdbv4QOokNTW71hGXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754201994; c=relaxed/simple;
	bh=J+mLkumstqIKU1nVKsbz0uMLH/L019l6chLZgC+mcEg=;
	h=To:Subject:From:Message-Id:Date; b=k8xNMbhdO/ufnVQ5qLt26TeeC1QR0Mba3cUwpIgZ+eA7vlMJ08/ij6Bsw1mx+y9xgv3ZCkAgOv1ppHZ/3+6BUaogmq8d2hK1WsO3qbuLmNtKadK7VwcMhWNjoYEp+e2y+SNMPnNqvWCi6Tu+fMraNCpokDYZ0sNheGbcZ/RaCv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4Ve8lO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4Ve8lO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754201993;
	bh=J+mLkumstqIKU1nVKsbz0uMLH/L019l6chLZgC+mcEg=;
	h=To:Subject:From:Date:From;
	b=m4Ve8lO46i2xks85DvlvflgsoEcs3HO+9RukXSdBPUkS+RKjzkeal3e8QFyo4NqGa
	 euH450rSNbfuw0E7uYqTEm3U0SkCkqtQNAk51ro/sKe8opKD5/tXDydKKl9zsvipTz
	 kGtkY1rjIwpqh7uyoyeUMgSFKbHZdKljAPlZ82cJ916bdM7s20SkgXYbDYIWsFq6v0
	 gtFbJn4xPwcOs1NL9FOj2ZY9YRkCs4AEV2CXW6ZLTHepw0SO2nYjHg8qCFo+v9W6zO
	 81VZcoaJ/IA5k9ixbpNODU1/LcrAFjuep2eKl5FUxHbvceAxoNGeYZ9bO9EuBgrBeX
	 +8ABsyy2hH31A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED54C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420199357.10055.1641723429879526234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6e4b4ee593e6ec14986829f423b5ed2ed43dc0627f383d111b5068c377a687
Date: Sun, 03 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754201993
