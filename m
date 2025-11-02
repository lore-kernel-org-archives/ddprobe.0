Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3152F2E
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762043994; cv=none; b=iX+N80+hnGl6X6hHRdoiCUOrwV48MwD+8moVhxw5SxeMFpaaaAHSDA95sxT2MkE76QNtjrY08Na19mk4BQHw/PjXpk+no8tNFQa8CZdMuobNSJHAgMTO/7LjZgscMc6FCGiDP/y5vKT3PMA0wazfv6Uy92nhWk1rUJtQI5snoVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762043994; c=relaxed/simple;
	bh=QxNNa07Bin6w5zs426dL8dBNt6ANEi9fQ3oOQ25cySA=;
	h=To:Subject:From:Message-Id:Date; b=gdh8DXZbqXJqEr+uDQanqZAR9nyldEE6HznOJsn/6PEehmysZHefnvoZds94ZkL4zjyAy321OLg45P0sQ6Hd5zGY9G4vRzbclaoDqXZBj3lHO7+SwFyT+h2sixmk+xUTrHsRJ9rZYePpDQLeSgtMj5mtns1o7kpHO8OD2IC9JVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWhmCvpZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWhmCvpZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BB4C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762043993;
	bh=QxNNa07Bin6w5zs426dL8dBNt6ANEi9fQ3oOQ25cySA=;
	h=To:Subject:From:Date:From;
	b=JWhmCvpZmR/YoJpNnbrIPnd8x2d2uFfK/h9SjPlS3trsYn3RfvmlJb/TnSwSohmgZ
	 Vm9Mjc4At2BrfD6BTxc1+EsqhuOKl13K/JPOW4vHoXAz/fx3ePHOTKMYosNZ+jMPfQ
	 mSUV87ehmjpGAx+l1OoVRYKYMAzWR2WMlYAm0vaZbM2lMH1UWdyu2rEiWEN+QLq95d
	 RjI2+FI8+yjIFN5sb0rdNlLSVMxwawoOEb1dPNjm3rXboJvqSy4GNfmeL1EgQQ50H6
	 o8dBataobKXshiX+sYVBWYdOqWdrZGu2F2ODQK+Ox4D8xIl9sG6/yVAfnjuMXKFN+L
	 OqgRwFbYnG3jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CAFCCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204399358.920.14252297286004412978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2d5649114c3bb421c49d46ad7408d652b82df7021205b92ad781477b054832
Date: Sun, 02 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762043993
