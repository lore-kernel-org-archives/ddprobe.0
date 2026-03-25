Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D843264C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774477494; cv=none; b=uYQGq6kqQfCs5ku0Rsybl1Y7y1Cucfma3TEXEGjVLjYCry60ndqZC3oTgQ6OUqRpDRvDkGTWgtqjiT3APBrj/5754JIGoAJWWtlGlhqz5lzR9Ea5s918TfT4ihQK05OochJStrCYuqeqouVSRD8eFHiD/WQWuZi8hK+2uaA3g2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774477494; c=relaxed/simple;
	bh=7lkO4hONr2gWjsRc/5YmfnZ7oWeaknbhT+9wxZxB3JY=;
	h=To:Subject:From:Message-Id:Date; b=O6oZKzJQBqqMQHGRNgtkyKZLEsKH89tL5DEZrWZpbEjYxXz+TMCskxz5FCRGu28SA6RROfrT06E6Tt2Rq4WaJY5Dokt3vRDwzrQ6S2SQCO7o9rC6ODIX3hymu8UltkxWylK3eV0ljHVJbBkInfva3MK8A1Z3C0t+2FZbc9NzMf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5/8YkS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5/8YkS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B275DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774477493;
	bh=7lkO4hONr2gWjsRc/5YmfnZ7oWeaknbhT+9wxZxB3JY=;
	h=To:Subject:From:Date:From;
	b=S5/8YkS+fiKPqu458xkTcb7OJCm4+YBZQxktpEgg2Jxa9cMxqz4b+QCEJZhmdhtWZ
	 5S+7veagnp23WvXw3vU0vs+PHTCedf00DV1gMNPF23dffrf4BpR3Ui/O1ol+WmdPUZ
	 f81RNj4UI6fVSUBMhPAAWv7CjLRC7hR7roekTs0tBKAo7dVhSI6gxMEy6//8MVgIK7
	 c2cvncLbKylo3ZRvJMNHR86ExFStEstFw4D35rXbPWLk65xkDZAsmcMliUQYJAnwjq
	 G6tGr3HImKdbj7Z0U7iTkBBsi42vO60i9Y1IluzNkvotwNkG9WU8qI8AlhNGYj7i+/
	 tn4rZvILbG6cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2E6109E528
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447749361.30635.3673792648329730783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8776440995ed3b7c9c7702fe3fda2860705dd363b64e64549d47677eda3ffb9d
Date: Wed, 25 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774477493
