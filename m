Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B26327FB37
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792392034; cv=none; b=EzbYyzD+1hSb4GcyuVBvfTIx+GUI2DPrIKuDDWaumWh1JhlcmAifKitwSYJvMx+IeU0s+fqTJ6XPjuj8uTokZvQnle6MhdjPODjh4jQ+sziT09anplAEvhNf4UizqV0KbAHowxzCsqMFaF1W/DxB5A60xt5hROERHLmteNwVFNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792392034; c=relaxed/simple;
	bh=LlidhMO/deqeg6R+mciJ8ky4ZXcWkCe4NmINU3ULmxU=;
	h=To:Subject:From:Message-Id:Date; b=Tsu6fRr6yHlGKGdQlBFEBuOdpjiNcAo9585UBVG1jYJVPorcLYS55BG1PSuZsPGYErtDcw6cTWQomRriTi54ux7MjQ2pZkptC5tA0mBt0HCeSNYK95+zJqDLeshGq+cDdb/ixuooTfk2mjki5Hr61HBO+61sf40QDuGFu2WIwd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQE6uYOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQE6uYOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E954FC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792392033;
	bh=LlidhMO/deqeg6R+mciJ8ky4ZXcWkCe4NmINU3ULmxU=;
	h=To:Subject:From:Date:From;
	b=WQE6uYOeU4DVSJk86+xN02/tATh+15KEMfUEVb+segJte7qjbQ9NcI24uZFujU7Ui
	 pAkzrwi+RGDvH9uSl/PnYfhGM4Yim4z3Bd6mDGVYjia9uGRccps0zzbknxNYd90e+u
	 ZBkn75XoDF0CBvMfIoy5lSoIGDCR27YsQPdckkhhDHz2GMaKha6mA/O2PmrmCIVXPE
	 jvXA+U2muzsJ1f4TFM7zy5aPWjsmy7/uJrBlO2wbcEHhO1IuHwMGSlTBO+SQnp/7/f
	 RLk7sF9WKm/nmoo6lMkFUzIf48Cloz8/5TAqHBCy/r9Rvp8avhz0zqbAjG1garfU2J
	 rX/wprvhspwFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A9BCCF2DB
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239203374.17187.14195269167156693428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc5dc4a45996e6e5e9c19e4e40c7fc50ff74fb9ec78472f08ae9dc2ea90ec94
Date: Mon, 19 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792392033
