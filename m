Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CC213D2A7
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715036543; cv=none; b=HazWNf3auKVpTQXraM06BC3H1H+k75NADG9EfchxLt2NJddiMnEFHgVe494k60yy1kwlVr7Be+X+we/v35CUzRSglKeID5sPixni713yJgb/luZ+aJozTMXuRSuzLReJWLIeZIu3qByj4Rakzgte6XvsFSqvYgbjUDJWLoWauG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715036543; c=relaxed/simple;
	bh=kj7RBzhgn6kRQ0HMk0cmlS2KC8xSHCNTSc0VJ4ypQCE=;
	h=To:Subject:From:Message-Id:Date; b=fw/0tYt+1ovXOjr2ZIX+6AXV7LnmaUPbtFGZ4PieuNqvsEtNyTnUryFZ9cZ08Edl2NX+3RzzoXP2K6aaz6Xmux0NUxpvtHImAb8OiSdEH/Qjx6Otvj4zsdNvmd/I4PYmpSQJ2uzW+KRhFFfL8eHdCk79JHus6wMmm9fD73P7Ac8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mes7hRFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mes7hRFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A18C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715036542;
	bh=kj7RBzhgn6kRQ0HMk0cmlS2KC8xSHCNTSc0VJ4ypQCE=;
	h=To:Subject:From:Date:From;
	b=mes7hRFmSpaiIwEh+63fDemvhqu5aCXbgouM6yFihqS252S6/8gwEb2mQi29HEql/
	 5OVx7/pLTemgCkucKfwrbOr74i2DzvdLNqOFS6Oh9Qz+JdhxOj5eh6XYMobfODHjW4
	 ledwLGEDeidLQO03wiUo6o0QBn8xTK6A35mmjeFbzAVJ+OJFu+3Nt9h/BgApCRX/Q9
	 ANHQPRgVwGdtUJVRMs+oM2xHYyJnGAgKlzVRVFgNtKPFFrZ6+qeDNeK8T8Vfg6YANB
	 rHku6WV/+ge2rxDNpWa2noqK2iKjtEcMkRC5bJaG8hYmz1mQHzjM7UpjNpUhlMG01r
	 fzk0ccZdobVeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3744C25B4F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171503654275.30334.9366444914935988747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ffb3f37bffd733651934b85bf4501f1913048ddfb72a901b194e6615e633c4c
Date: Mon, 06 May 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715036542
