Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F261267701
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741874335; cv=none; b=E4xnVLPIq0H84Xi7o9yNYBbXYV4g9J5BzjnlOWQ9VC9r+C1waDqiU5ywoT6lgo5c1ybUvmlZ5/1/W4OIlLUPtSeroea8WeMeeOBhsFHI3PH/rVLVhgHS/dS5jnnVFVk4541fwk/Kw2GuZUrRTF3jMYD+A1nKDWgK5UftRPXk+78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741874335; c=relaxed/simple;
	bh=oAtSAsl2KwB3fvqGw/+CSDeQdsxxQYgeR4UQJAK/UL4=;
	h=To:Subject:From:Message-Id:Date; b=VxhoWQ3dsEbixIlmWygmS2sCe+grsj71lPdVok3WaJqHnEFDMxKP4YIxNziHsDf2R39MRfbcVEwP0aIqrbOwbRbD8mqxjDewbxkmqOe1XWYQfIXT8T1WPhESXLHVRmnHNfbVaFrwc6vVbAOnwJXWlhn/CwKXlx/+AtTDjZ0KvPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsWMVSlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsWMVSlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB55C4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741874333;
	bh=oAtSAsl2KwB3fvqGw/+CSDeQdsxxQYgeR4UQJAK/UL4=;
	h=To:Subject:From:Date:From;
	b=HsWMVSlLGwUqVhFOBlXLgLm0oAMGWK4xa22+M04ZOcySHOKxvTd4YVWm2blGTPYzy
	 l5TL5jCzeYGKOxWeY7sSz2/eYGg+cQj4XJxC9Xh7dm9FisxttENefi3aNk0DgQNve3
	 ApDxGKf57ZUKAcRmr2p8X3ejDICD6mdMNK8ziGUW+LHJ8QRDrjcw/dDxLYb4gflscT
	 +o97mNSy/hkOnAPvwNIdJZnRkT3w6LZMc4Lj3O4FDR9yV/Jp4eYCTeJaPgJVCHENf2
	 oLHUVSlPueArf4esTxO9vEffIVtWQD/TaWpMYMIfvONJU4vGgvW9zPK92w5eh/1zm6
	 eJ6XxwAtgIsxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E86C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174187433360.22769.2973686194265016708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f051274f8b5b517cd3123c8aa503e4f95836e91aa273c4c0c97418a4f98af5
Date: Thu, 13 Mar 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741874333
