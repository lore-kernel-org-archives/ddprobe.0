Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22006288A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760667595; cv=none; b=MjjjsX//4SuQqrtm0jhWpA+9tKJeXIwh6KCL1OZ5VX/2w0R7Cplss3DAiFbhWE1RMs6T5kjg2AlybjDTIS7UxKZs9nh5F8AgLssXBxABOzW+jYbhyJVYmKppCdqq2XMxgfX39Ux19pkt+17Nd0qwBo/IN2/olh1HbVJ0k7geI5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760667595; c=relaxed/simple;
	bh=shEUKau9HNf38Xa3lBvb8bzeITuSLg74ufe9HKKqhV0=;
	h=To:Subject:From:Message-Id:Date; b=uktIuY4gl4HhmLktu+9dOhjgCHtUjbGzuSzryNuXGRybtXdBt9z8OJPgJi8+gLz+U/SWNslC1ybMrc8ogsab49DsgrJbxspZPs6X2QP59bFSz+iLo2Sz1lblj8G3tv4kDsuGOEgQgVe/d5oTVqF42525imWSaMXliVK0zdnhurQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmrGezZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmrGezZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C3FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760667593;
	bh=shEUKau9HNf38Xa3lBvb8bzeITuSLg74ufe9HKKqhV0=;
	h=To:Subject:From:Date:From;
	b=HmrGezZ/JYjKmE5ExP9bdMYACye/EvKEtYYa0Q2T29jpuwRjw7hslOPiYXebqvOuw
	 mh03M/olOPK7pfG/nslBF+MhveQ1/+KB05cwQXlayqAuwZX4aiUZAD42j2Q2QL4tlK
	 WXolhuDrpLgBgnOgrrn5j9ii606uqXTTpysRrnpTfU9LnLK65Xr3p5g4hHovN1jnhZ
	 Kn6gLU6plrRUqcrp9EqQ3Kt8PWtt8DQR4OBRMMXnDyj3LAvTsOEQ5gMxRFcwkJQ8dc
	 eBckQkAUHj0SWbIecPCkAYFkppBFv76nE/bA3SzVWezoYX/ygKNinKGx/wLIgXi0U4
	 jpCQvVl9cAAYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4DCCD183
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066759357.8387.1892010246129627509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f796e06df4f85ad479e50395e0009c3277c16111d5d2c69e894fe4aa485c4e
Date: Fri, 17 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760667593
