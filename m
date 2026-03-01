Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DB920C00C
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772397294; cv=none; b=NShIbWBZKZUglL0a22JXw6ibTg5W7vxTTXtfyG3PT9IC0OLJHcGWbe4cX/cWylpFhUAEMVFcg6e36j4ark/UaMY/vomHVjrkShCTDoB2kZsSNZOj4ilQJFmnYo2o8LkcK9YAoexub9lXPySMvrZaN98UfM2R7BJr0FnsBg7UVVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772397294; c=relaxed/simple;
	bh=QCd50aIQOuJgyCuLbhL/oGgb0NB4m+5HMBvDbR3hJtw=;
	h=To:Subject:From:Message-Id:Date; b=PoBYEyhTO49QF2TKduEpar6kMPkZslqVHyQN6iEiNHB5Zq1qusJLtfo2nsoSyRWRlT0STgtzx44+C3AHMuSVzQ8ePlmqyjemxGiZVmyLdbtgy3QBlThxjFqaaUbrmHs7URZKROtzvQzYB+r/b/vdd0N/6suz07W1GVeGxaQnQ/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jhjd/YY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jhjd/YY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17CDC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772397293;
	bh=QCd50aIQOuJgyCuLbhL/oGgb0NB4m+5HMBvDbR3hJtw=;
	h=To:Subject:From:Date:From;
	b=Jhjd/YY6GtcNLNlPlMcjGg8LzzKYKvick6g/JLFJP+T4fJCwg9H6GCc9zprBzBSvO
	 p7umwuVH6szK/DyN9iPKMGh/+QujkyMn6L8ZOz4cOwXeUQRyV9O+n7KbMhs3X6hQn4
	 n/T9TtqHkegvW62OIyxZ4pyqhkaEUT5JfNAmPONaKU6/nyJl4RJE6EQULgxHoD9Jt4
	 eLo1GVLXPuU9z6KTby5s76E/Vy0n8eKVbA3ruLyYH/urgfAqZcDh+tA8uVIdwfIkr2
	 iNau1jz8uIz6oPV5FGnLWL1oVlsLowmDI8dmQLVURun5qwNBwfobDzKOpBZBPYU6wL
	 Z9Q+vVIMGRPKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02FEFD0047
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239729360.23967.5153859839833954277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d631c4db7c0747bb237ecf13a12400bd4910e199b0e0ef0db8c90488c2266e
Date: Sun, 01 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772397293
