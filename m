Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F5230506F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757678393; cv=none; b=nOV8B7Ty4BFLdIYN7IO0Kv617jcui9BbWsJiCu62LONIHF1rIFi3cqb+9bFi831eTEGPJncjDb6W93zMZqcpzmksfjEY4rfUUAKEs4M5ACGtC04oo1tv94JyC70x7dyDvn8hXjh3xAt/dR6eUKFZHNrDGJjyuETCmvzIJz/w6FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757678393; c=relaxed/simple;
	bh=k1yw7bjfGYziNAFwfpJyVA1y8d5aUGyrQOhFGyYfO7o=;
	h=To:Subject:From:Message-Id:Date; b=LhNbVTIkdS+bkFKB365sCkXqFXVYjYfdUIvHKR/8lrm11Tb+5U5K7j+MQ1kj6X2RNtb/tmTJl3X5k+9raTR5+/YD9BbaIDqTA38kYhV50KIdmOqv9Fj7HaygfJsdEvyxMvzhR4BoeBt4vc3XWjihNa4XwUxjLrVb0o7WXYaCWsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epyQxT7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epyQxT7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0478C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757678393;
	bh=k1yw7bjfGYziNAFwfpJyVA1y8d5aUGyrQOhFGyYfO7o=;
	h=To:Subject:From:Date:From;
	b=epyQxT7F3tUK8lzpgETYsZRwXA9iE1527WeQcqVfF2lhO5QcMNkx1Tqn88bVAtngM
	 3kRhT4VyP/wfC+RGG9HAh5gpKtYWH/+MaTKg68dyxjTVgFHxwci1z9ybf/rmBFR7AD
	 bwG7znx9V0EuqFOUFlsDGnqviU+Z8NN4Z688d81zGoUIwicgRDqak6NFFuni3xUmlY
	 nb8DiKAMQa2ISLvQDCZL0Bk4to7EL3hkwn9QuwBXflQVuwv+LgsFYs6wG17bPc57ZO
	 tkxThaLAl6rm/qj2VEQv5xBrQ92Pj/Ne7A65Ox9BzdcefeCiRbiQqUnfu+husZfe4C
	 gZ/OVmJreusHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8FBCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767839357.9918.17660409957472291696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398f310efe9f8fdafae6bc15394a5d6127f33d9e98567242af57e3787a54669b
Date: Fri, 12 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757678393
