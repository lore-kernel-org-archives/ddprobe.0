Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A1238645E
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787597434; cv=none; b=Yd+MYj7/ofsVbIQftXt6npB+qTBOecGV3BjRpGl/jzL5Hf3/AAXlMOCxmcTq5kAzrcbOx4MUsz+G9iL9Magw6S+78MTypHEjr7K/DxCTbxg6gxAX3/Gd3mdWeP95Clif/uc3pY9g+K2eEzyWS1kKYjkp0wLWNHF2sT5T4Oixj5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787597434; c=relaxed/simple;
	bh=LsquJEOOUPWZy7XzeNx7wDdWGQ6nfqvClGl60G9Oq6M=;
	h=To:Subject:From:Message-Id:Date; b=XormlQASHnRfWXnH1CD1gF9MWHpEcjeWwBCfIhlmMGlOF0dntdjZmVqX0D7DrnWijw+HhXkkvgS2mZGxMOFEiN67CU1BRbOHDfqsBhwBemTYe6qKhac1/QM5pq/KCG3uMlFK1drX/HbZO/4SqX/9JO9SZCdvJe3imRWVUOHl0Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2BzjkD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2BzjkD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CAFC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787597433;
	bh=LsquJEOOUPWZy7XzeNx7wDdWGQ6nfqvClGl60G9Oq6M=;
	h=To:Subject:From:Date:From;
	b=l2BzjkD4gTk4jXbLrB9P8zn31mtxoO45k5PZM9N4w8NDzGNKU+EBrE4kMH/X8iJPN
	 4zlh+zA4P2oYhcGlow9GMoyHD7y/byoTvBezOoHxA2bvd4Sxo9AssV88UvP7tQKdl9
	 6rGv34kdS69XEVp8A9E6urAa1upiA0N1agdeLUmiwE6yfskm2o/ct7XhdO8gDHMAKa
	 8yGL90U8Q2MWrFlaR3IWZakEI1sbDRoyclKuhNfUFb5XEBBRM9ZxF7R+JslrYGk5h3
	 8O7ueSHuQ1ATVmGc+JkSdkE1iUjKQaufeLzJqGR2uZd0vsvH1N7IkMWOMShAY4EyD2
	 q4bI3D9aXr6cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFF8C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759743369.9597.13123660814556814446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26f4eb5ce2140bc07a51d69f8282b6199c3864b2fc50394d1406371c4f8c406
Date: Mon, 24 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787597433
