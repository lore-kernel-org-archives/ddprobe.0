Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAA11F099C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781358394; cv=none; b=oaQ5xJkhRTLUYX4V32wKquutsPUvG2ex2SrOu1Lk0kC/Pbt8crkRVS+4vjf1nnAjiTgqFFhbBkXgVqJ+bS7zCO/s+2UdQdojlNhMSTjTGjmViX0oS+C5MJFTND1X3QGd2z95ii7g24YW2jjkAw53POZZpCnSybEPKU0N+RcR1mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781358394; c=relaxed/simple;
	bh=OZT02f7ur6vG0vSJByouNrMbrDuusv2mSXo3vH3PR4M=;
	h=To:Subject:From:Message-Id:Date; b=DQTUVwcBzDNgP58A42Z4XdFRuh01zKiGfu5+KvjXiA2KfSo49J+26I7X/Oj4LUklJBAcrHbyk5SAx+fDO4PP1sKQGFu1go+0jgMvXsa48TP5TvI70AmvrOAe22j00zFigGcy/M8/W/THSyjrZ6wmAq0ZPRW302UYH0D3QJ2lcFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOKNGZSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOKNGZSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C45C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781358393;
	bh=OZT02f7ur6vG0vSJByouNrMbrDuusv2mSXo3vH3PR4M=;
	h=To:Subject:From:Date:From;
	b=MOKNGZSaPHn8AfOwUde/43VpvA9igV2ByUBZmtZsYuBaEKy9OsWZ/jU6enr2Mm5Fv
	 IPmIu4rvTiXz1LeXsF+sKGz6bbRWK23YvSGECjt54fJODSACnR3l8Ee77c0ag8bhtu
	 Oo5HbPA2WCW0nVnSjKyrNJrRtgwX6hlmYcgmPM3K6pomPLl4gyMrZt660d6bBUvf6g
	 xG5D1f5wRR4/HdKx5b1rywB8FPSgOkyBBJ4fYMktcAovyfThOV6HRX91Cw2I+Ed82H
	 4DJSWHUk+3ihuKzYB6fCrf8k6icUyZmwzlt4tUROreYEhAqGunEPKM/EV/Wn2KuDzt
	 E19zd665ISV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB52CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135839368.23839.8534514229807762898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494770987af2187a2127bc6f5f52a9cbfd99dfd46ba706252a88dc73b9640227
Date: Sat, 13 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781358393
