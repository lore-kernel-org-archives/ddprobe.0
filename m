Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132B114A60C
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760028594; cv=none; b=WI+2k0UzC4muOlCBMtgzrHKSytCwh7qhAttLDIIqc5PB+UT05WWzv1zR90uyaPnaFIKO94X7L7+v+eM+8MpLbhmw3Q+in7jAbF1nvIbeGCrDpkmemOKkKnquYPp+5Q82JYqMCpCFXwdZT4eCHZcFH+BLQvN4YgvSI5t3zGV0uzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760028594; c=relaxed/simple;
	bh=WfvNeMRtxkFIJsWnxev1lZWbIIifDrByHVhxmw9Tya4=;
	h=To:Subject:From:Message-Id:Date; b=lyQClOraL3rUGTHEZ/bXghEKdqP+3RvS25ZbfnNzChAOQopv+RfJOqWnUBQx6v0VFIH8HiNHhRlDTizbj80jAP/yguqEnnJm2PO7Q5d7zsTs6RRaE00JioUqC5QRr4m9VyN9tYveFT79Qqz4zfvxqVizwTivIdQOGMwsUwE3AGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jadWQe5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jadWQe5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A583FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760028593;
	bh=WfvNeMRtxkFIJsWnxev1lZWbIIifDrByHVhxmw9Tya4=;
	h=To:Subject:From:Date:From;
	b=jadWQe5RxdOvTaomGeWJUVUAPdyo9gIVvnVbKdqzKWxXxU1ZHGwanA/W7aHS+peHT
	 8+f/0mr40Or2x/FfHvAeFrHiNeAbb/o4DNYwwhHti0rpa3fPQ0/eULvNKpqDm+VDpy
	 XbUB0PXvDC3HY3qNuF40VzmN5ONSZmi2FH+vQGBbMUfxETZZPaBGRHRMzP/BUjtKIH
	 VHF6Y3N70LM+IirmLo+7yz8Btjiv+4HXgq3CUsQSKOjyRB5gh4U8dZNDR9lH6J7onv
	 DVuQBkRsQKVUSe8sNqoS9KZHlX60MKdgSTUHO+24IfyN5RZuQ4rQ6LREMt1FslMnFR
	 SpeNq6prwR4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93971CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002859359.653.1414754584789837590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96aecbe7843d6eff59bdecab6b7b0597de88b48813ddc96c78331cda106c669b
Date: Thu, 09 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760028593
