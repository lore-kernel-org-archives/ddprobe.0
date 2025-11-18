Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE611F0E2E
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763474514; cv=none; b=DHl8Xc8kygvDrH5Ri1XcQ/nDhoJjpdEDrSr6vbQoZBZkLhGd4/B7qmVIz7JbnBoWMm10Rsx4ksRNlFyO4OyKv12nUbLWdqYypdXr6LZ3wSP3miVnrQfIZiz3Xpiwrfeqphw7bWAyebdcY1ZWHnxbwBAcCtD8akBSNM9yJ0ijy2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763474514; c=relaxed/simple;
	bh=OzMh64KOzn0WpNBMlf43nvqM25V2jGtix/hr/1MyPyw=;
	h=To:Subject:From:Message-Id:Date; b=nk6YcXAlRl/5cogoZsuQsjOy7CjrcTRTnOUBhWTevWcF663bDIG65e20OrqQT2b+O467RsCnm/fohY26l6fm17aCfirdpoUvMyRRFaBB5LHItL3sWHW9dCpQkFQLsaKkUkoTtGFzskxZHnTY3zQcGHmWfTH7xHo6VHiqx8EMQpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1IEUH8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1IEUH8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4C7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763474513;
	bh=OzMh64KOzn0WpNBMlf43nvqM25V2jGtix/hr/1MyPyw=;
	h=To:Subject:From:Date:From;
	b=m1IEUH8AdQRhhoMq9KzrodnQb2ss/HSNJNEdbU4zBiAexFOQ7XkS1VcDiZI38KMsx
	 aH9ExsDl98H/nBMmiSWqH5Ova+S7lEfZlhLfmedBKnTA9HAjKBpA0IhtTxkMs1iwE9
	 BjfyonYYrbvn5qc+r6ZOltxNhwp9TPb67FoZcEo51l5pXWkJQPzSx++m/FxeIzITU0
	 DrDb6npaMZhwjMyFTpSjs0bex29h3xepLFyBt8gcOveE+2cecBNTdt4iy1exESQ4uV
	 fMwtvyo3wBwV6cjPykgqXATV9fbd5O1kI/OoQG8uEbnu3uwG38tZ7gg4g/F4aepQKB
	 RWfezz0Wmr4zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CADCEDD89
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347451358.23541.17998026001728992179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31dbccb67c457a8ef97770963adf1e92d526304eeb1ec322fe42c9d7054904cd
Date: Tue, 18 Nov 2025 14:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763474513
