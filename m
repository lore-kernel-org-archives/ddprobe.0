Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A36115ECDB
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715089343; cv=none; b=cf55UoaXfmDKYFGVuIwfwFbdJIFF9/CGoZ3LY0JaNRB8QjAMFqmqci8qdEhELh71+ZoSzKr8lv5KDM9g/zDz55iNIQb/cu3Yg43l7/tekYV+iTjloVMwdkTln00zkTW/hJf5w18bCEMo2dcjvTdDKGdIrJCDWkBY5nL81YpGP+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715089343; c=relaxed/simple;
	bh=0TtP86QsqEeHuekFF151fCS+z5HQvMJMoc0vqYReZlA=;
	h=To:Subject:From:Message-Id:Date; b=JqOHAA8ofANa2JRccRKRslTv0Jajt7Of5PHyqTrGghCXCWlREpPkJN5052BfFsy215tFb8NHnhfLh9yBYT3Ya3tWSOHzfEw1mg1lao0IJxgcd2bCsq1CNxg992Z+9Y9ffqW1zapPP5GqFaKeGzgJ3XMWaL27D4fpkmVTQa5abeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsqrJGFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsqrJGFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D939FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715089342;
	bh=0TtP86QsqEeHuekFF151fCS+z5HQvMJMoc0vqYReZlA=;
	h=To:Subject:From:Date:From;
	b=PsqrJGFESRkbAVwKGZXnW2/6OYyBAZRcFsdANoifO+S4WtzdJaOTA9HYcLc2ygikq
	 R+cXF56WIKWldGq2rbgqQ8DOn0Slntv1Hz6uuKZF5HrBH/2brO7uF3oJEkCaMlI1jC
	 2hSHnkdnqkzJZMQkhs9Z56sUxpkl/gkGHJwO6GCah/xmz8ZMCvMO3UmAIPmM0CGngw
	 O2lFzHxMqMsWapOUT2zURCEAvhciSGCUtOtXYRZu4pvtaSVsvQWxGAfBFEedj5EMsj
	 iPA+0Ibqq/3IhTK3cJzFPtNbJoFdpPz8Cx2EOrMJ3H76h7fUYSOrDbBcgH5fb4DaMI
	 TzBMuSlNr5/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A01C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171508934279.23873.583052056527861233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9012bc2c53b56de13b36499da5bf1a8381a46b1a8cd5ffce5f1ee9e119648080
Date: Tue, 07 May 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715089342
