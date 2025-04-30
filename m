Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DF5248F51
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746020994; cv=none; b=Ls9dno6q8mqYi4CeSdxAtyJzovx7sczxTGMT0OjE5D9u8/oWV9jWHPWH1i0OE7kQvpHpzdScOQyDre22j05p3YfajWCJO+zmB8P5Qcz3yQSzIRusd95x8MVcO/2ecMI3VH66bCh6gf7RPtBABPAjZHAgawZDkNSMHwRDMncKwzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746020994; c=relaxed/simple;
	bh=UBllWxJUBR9muQkN6k3WFiLBHOhsWZymOqcg+vkOqU8=;
	h=To:Subject:From:Message-Id:Date; b=vGd1DDfW9kjWuJJ6/Ryv5zrJaU46zqcuHiGCtlEp+eYbT7Jv3kQ1JUUR7z1bo1QjbsW2ta5XJEYMQHaAD2lvrz6wpgtGEt8appI76F7rZlnM+Kn2fJq4+v7MKAfCHfIDHGr4bn6dAn23wsNyyqVwe0tTSJKUOAfspkqozVK0f74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eo7wQVUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eo7wQVUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746020993;
	bh=UBllWxJUBR9muQkN6k3WFiLBHOhsWZymOqcg+vkOqU8=;
	h=To:Subject:From:Date:From;
	b=eo7wQVUdNexzGNx2LtJPYlfijIwdQ+ZqMHn6NSMw+v4yydBfMwaHJiS6+QQ7cSZt6
	 oVSgBS51OfST7JHCDmk4zs/8+iM2zQylMV/o9afM0GURB+mJIwCBKf0apq92sP31wZ
	 VGq/f82BTKWNG8ikfyt1m8vcoGu1sWP5YHifaFfMedPhyvwRGUrUqSzUq7VW5sr9d4
	 5GUOwpEhi6DrWvAqJoPGO6Omb5Yu3C2XQBR8pjs5xGARwgRKPkEsbZC2OaIKvg0VJj
	 /85mBDcXnSFV0BSj/ZaSQsgYgPlBCqEuVUtoDBijDWnIK6QWAiOJIfMWgIsyK/fj4l
	 O1sIQu8ZK8LIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E994C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602099357.30522.18237388678261078117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070ee4eafe3e057bda7010e205b6c5588e69bddf24cc4f7ebd20fe8c94449059
Date: Wed, 30 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746020993
