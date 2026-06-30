Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE1443C078
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782831514; cv=none; b=Wzh3AJ+f9t+SbEX7lwbYUBul6kxbjcPstFEfs5f54ZXrGIZmYZZFCfQm4lE88JcYGJMYHi2SrfVDJKI9pNxQz2/o6AoGGKkufgSxo9dwmyCuggYLOIQqKr06FhTSVkF6rxOs5qrUgeneKNPu1QmSRLb3iDzniS6oE3jWeJOzumE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782831514; c=relaxed/simple;
	bh=p5a3lOYA8l4c4BsQ8ViFw0ZhcURrwZjEK7EdLIolc/Q=;
	h=To:Subject:From:Message-Id:Date; b=SFBwFSV4hvdnMitTCXNh04cWF/pslrQBGfOkNA/KVlxhcludYtrsrYabbgF+ojU5jdEdrw7en1ShFlOzXxrHyLZUUHmuJYLpHupmGs7LK1kP3taGgZUHJ3x4TqdaqeBwhwVH+k7OkLT8dPHHfKZaNIYTsfQg3Bbt8wG1MLsnOQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+Q5qAP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+Q5qAP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C208AC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782831513;
	bh=p5a3lOYA8l4c4BsQ8ViFw0ZhcURrwZjEK7EdLIolc/Q=;
	h=To:Subject:From:Date:From;
	b=b+Q5qAP/DUuT+2r+Z42HOV03Jd5fdgto4uzU8SeheInOmyvozq7qZ9ofJK+k5gwzi
	 YfedqzvXInORYtL0FYJJZmA9NxUD/NCqUlnbne1SToaEANfw67JPe0QuWhdcWiWeiC
	 qtcEAJlcXtDf+ghTHpJWGxye5T3UleWtKu2v33W2zfYZCq994Gku8DE3ZSZEqDJXpd
	 FjJdHf/nVGl47b1VxrVpazxy9aHuxr7aRYafzMDU/5QgABJemqP/MVx8bIKx7yoLT5
	 TUSlegs15XCEWRFHM7Re8t1Pd25P6hrClvrB1Cef0fP/9VGqSnqtGc1hlYMIx8+nOr
	 eeHFSAkn78QYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD22C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283151368.25808.2484711147154613328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60291c3e4ac0dc4153d1bb306d300ce2742a6177b36bb24c28e9dbd9fd95a79c
Date: Tue, 30 Jun 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782831513
