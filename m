Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EA3F505
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720915223; cv=none; b=j/yaSpm7/SIV7uUOfrnZxQJeK2Ut1EhT/iybg7MwC9bHsygPTOqvXkVAQt9pJrew6V/IACnMsSBsyXvJft0S6Jq6eUXoTE9tiJbIUYRjiU2LTX1MuUhepMhRpbkHp+H4WYGykYM2nZHq3eiQjpizlgQHoSuzFnMai8+iOL9wT04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720915223; c=relaxed/simple;
	bh=HJ3y/SAuJqrjHl5VnCIXdpMlx9qoJrfhZ8K9MvUSXVI=;
	h=To:Subject:From:Message-Id:Date; b=Hd8oS6EBYmuw7KSNilZP9RFZkjUcsnvuv6uc4bd4NbtvrwJpsNqKrSkQQHbJLR9K2xi+30mrIwKVyiakrSyqybyk9B3NW7+ljWC+Xn33g/akyMqBsWwcF9QI0ubE7HlAmT1cSl1MgQlLl3fjTpaBvlu5zm5PJCJeAAQTKGoVrh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUtoYY3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUtoYY3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67F5C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720915222;
	bh=HJ3y/SAuJqrjHl5VnCIXdpMlx9qoJrfhZ8K9MvUSXVI=;
	h=To:Subject:From:Date:From;
	b=VUtoYY3fpfEkYp9yFKo2RRSW+Cig3RvHBRUrvsC6CK3jdXOOzrG3lWG05G0qvdNFI
	 /Y2tGnXQZXnS2bB9HQ0B9PKN5qeLk9T3MFXdehZ+uqOvBZ/uuV0Y9i2m5RQhO3bVpq
	 FP4Xv/QP2OEt4UOxvSu3SD0AGs/vmCy64Vo52UuoA7EEmTtpdLLMnwN7ccqZ0TLd6N
	 6/gXnph7Vfb9jR0WTg6wturGs9s9WMf/62Sb4al1CmyT8kTlDzKw5PVcmRRrW2Ag5K
	 2CRHSklnbLtpII1C0OT3QgF9eAeG+Mr7lzucrlfw5b5m7uirbGxrghpbdqNKxK+ORf
	 Yt9wbeXqDlYjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC5CC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091522277.24375.14801715424690650628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b4bf9fcb4b4506d46cd94c6b89f7df9099f7eede99eaf5f2d3b664a311f01d
Date: Sun, 14 Jul 2024 00:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720915222
