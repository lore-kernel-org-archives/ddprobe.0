Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395701862
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784336914; cv=none; b=g3/z5szv12MnY1GpceGJWKWC9nfPhgmVuYkKEeZV+f2SuzR/anuvjflSh9QWWcS597qPxgnz6QRuhvQE652ZLiZQF0cSFzPQdr8pWmbHUWbEdqkMoV0KYrglNgJ0IMOcI8VIggBl0IRxqiWDOrAII71Rn732ucjwdhGh7c9//mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784336914; c=relaxed/simple;
	bh=Cc/J4ClcvpbcoYNHJeHt7ilERExip+fD7p1s0u401QY=;
	h=To:Subject:From:Message-Id:Date; b=ElzIRJqG/1NeoNFObRmaBfnqvdjPSLjvUCWtTuJQHBGEI0qtlaKEXAAVBporPd4OOkaZAB3vBR/TFWNVz5OC+4NKsk7+Ry6mcxleY7tviGPYsd4+RgcEPNqdGpFOA1ke3LqxEDGtMUh7fS2qd/utCoNFcXg92G7y+E78mqh56dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAHwpU2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAHwpU2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4F5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784336913;
	bh=Cc/J4ClcvpbcoYNHJeHt7ilERExip+fD7p1s0u401QY=;
	h=To:Subject:From:Date:From;
	b=LAHwpU2uHZWpTMboUV8WCycexGTvWjNjA52gEkYlitU2GBbHm4dHSVn3Yyw9D7d+U
	 aBL/N1vDkTcfbjgFjSiPLyvuzYk0Qxx/7rIqB9eI2ql9hxj4rj9lAe7SAoXxm4TD7d
	 SMsGDRh/IlCKnehC6NdvYHwVgQiOEcjBWS7n1jXG0pezxkcqKLtX2OCvtbQkAnT887
	 2u/MKKZx7X2IQEIw2N8d0hAtBq2Nns+KVsAh0qA0+2biBnNFpsfLRZboiC3ZrGy3ct
	 v4R3jbk3jtoX5j7O9EzuQSm4oEJhOn1YThJx1rC/1AnoTRLNpE9SRJEdF7zjJk6TIC
	 5YFOY+7C3RjsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9863C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433691368.27515.7225276677942315404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc33e9d343d025879f02da67c95da2049d226f71931a9a0649663d55b789f0e2
Date: Sat, 18 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784336913
