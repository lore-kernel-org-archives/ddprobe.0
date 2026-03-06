Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB5533BBD0
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772769894; cv=none; b=TR4OW24Yd9mJg2LshTjG73Fq5pXMDP/L/QRkXZ50fq71yhToWdSQ4QMK1djOS4lrfAvYLpp2V0HFAmeCv22aYRcs2pT3hVXdBbsWKlM/ybgksyLStX35g65CFTkhqxJHM/Hdli8K8i9j8WR5oAbRuNGSYmKq+xIeTmoharAk4Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772769894; c=relaxed/simple;
	bh=sZ48kLANUk6W9zIs5M1HU5NWVuYgDRGL9Rd2tL8XYy8=;
	h=To:Subject:From:Message-Id:Date; b=Ck7CY+CUprXM2tiVuDu3BroykRDG5FNneGiYmUxg30hZbzAljPVq18IQ4bjFcY0rJWHFwldAwoj7uiVQoQf/2HvJKaNU2cb5HbTPeib9k26gGuCcFu8sLGLvEFqvUeV1NUdf7jqPCGusQvxvZ0vPX7yMyEl+pRAAxtqWNyS5wgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcUC4AvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcUC4AvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3927C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772769893;
	bh=sZ48kLANUk6W9zIs5M1HU5NWVuYgDRGL9Rd2tL8XYy8=;
	h=To:Subject:From:Date:From;
	b=YcUC4AvLtWAK4MXEDBOHqnlK9UX+Xfnbf34VpUgNS89llCvEtbR48l/KZiE5c58Mv
	 Tj3nv+L5Nyrj4TH2cUOOE0JlZUTvFu2PBo6K1syaAH2uifFHqKnFOc0CeiV/rPMwml
	 6fX4Mhklr8gWqhMVQSlMLAbOwYXL4Hjuhrt9Dv8E+F2NsprD2Wj3RavxbkHuhvwBG8
	 As66kJyj5sQ1MUpjne9/bjQVesV4dMj3AAUr9ByuccewjC2Eyx/xGYcDhowcTVOmos
	 kIf4PjtSpQkw26786JHD87t+sNLNy8p5AeTVRopN8e1kgu8TxqNa2sSCc1m0qmzjMR
	 LaHrFfOXWkejg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF5AF513EE
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276989358.21350.12046785966774420875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deeeb0e224abab04192789857d38f9737f9b7232a9d81c9267fdf1c38ff5d48f
Date: Fri, 06 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772769893
