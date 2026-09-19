Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A7F1DB95E
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789782634; cv=none; b=MzbeJ/MV1sQZeGYnc1lLxpnbKyKsVdKxZHaOL8oFTZnk6MwOd37L6mX0hpBn+SgPujUO45RZ2m94yU5tla+huKgiXbrMssYPISz5FqrVSCuIm+amtzY4sOMFzr2PCrXpm8o+2BhLVFlwqnkjldCCnNXbo0AoBrNdRuc0mdVBB/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789782634; c=relaxed/simple;
	bh=i585S9hbjcmACdkAO9ofy6+wGXVIzd3TTW2fpU6qly0=;
	h=To:Subject:From:Message-Id:Date; b=uJdmlaV+KA01pBqj6pGt8VO7En5XrhE1LqoJG40caMEOf8KQCWzDkDEtrq70vH0j2OkgzXgL/zA4sHkay7n8gg5CAQ0g5yjPPhGNWoUJkhgK+pDrwn163nLmle1vcLBQ1ToVtQgRNGJcfUfPfx9l4Qk4wlFbYM7+0qvmvbpueA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2F9yoMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2F9yoMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F90C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789782633;
	bh=i585S9hbjcmACdkAO9ofy6+wGXVIzd3TTW2fpU6qly0=;
	h=To:Subject:From:Date:From;
	b=s2F9yoMQ+/turHMssr1AX+zOnQQt0Wp9WKhhOKm3SpX0D8nJXOHSDORJtYZxQn+Rt
	 8SZ3uAHOf4IYKj4E2mHfLqsBeVIGzcq44kYFoURWF06Cw93Zv7dapIZVmKIQD+o5rg
	 Qb+aHJt2ZytutMHicLmHq+AHf9IWaMnO+YupMjjP1UFowAkxlR2LaHWjNTbb6Sjbs6
	 8VyOQquW8GoIiorRbB5kU9CkqxNc8ehbbdcaameKXqL7nHOQFq2g6moZlwu5houNsj
	 qMwm5qeMbOeL8tdUu+2fmUdcr2DKRaUe1MPQMtNbaRmkRAkUYe7RGiAYaZwQqZprZV
	 R+bbHDaxxHEqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB5AC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978263368.4020.4449144401498144400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0818c349963363a1ec67096779fd4d9c30d2c720ce6b93a3ccfe80b0436517a1
Date: Sat, 19 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789782633
