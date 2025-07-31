Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964BE22F74D
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753961994; cv=none; b=JVPsI6YCs2oGT3xi/8x6GLYM1O/wdO7xaDqZPEJHzD2Jfoo8364xgi3VS0ervF1LHbfWd2O8vP5HzQn+S+PS8wsaz1uBle6sK0uGN78Ku3chIikQJ46VoiIO76mIz+H9pyOWz4X1y/SLJSig4i5LtHsLrguN8Uu40NQLBDXa1Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753961994; c=relaxed/simple;
	bh=P/eColl9m/jeW7H66L53zwqwxsxoALZjDukLMHzSZ74=;
	h=To:Subject:From:Message-Id:Date; b=qeL5nR2dbUGyRRJT5gJurZpqiW3MxKuwkhXzYJT0iRn2m5kDd466MFpUzeE/xaMzorlh7LlFD8cPkJT1/BMkuPiW0yCV7rZ2lOex472A/JZpwMVCxA4k2Jr7IDW5u5DMVUykbMiVdb94RadJj/mwdN5VsMiQd0Mug74+amzAdXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4JuBKki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4JuBKki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C35EC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753961993;
	bh=P/eColl9m/jeW7H66L53zwqwxsxoALZjDukLMHzSZ74=;
	h=To:Subject:From:Date:From;
	b=o4JuBKkilBEv7LOzGcIhmAXnmS3XMwTSPHYSu0XAwV6xvWgvv3dC+x61EYcXkBbe6
	 e9aM7gaDdZcxatuaubH6b58mBr5+6Ji4Rtm9cZhZOKKxv3TQcamEUvfnoNWHGNqJUJ
	 AWqwdM8OM5oyiR4wRo2Och3jDqe/zLsK24pvuZu0kUocS0zfEe0DrkWkf/U3JGNy9q
	 GdVthctBNC8v9I8JBVkd0MTcJxc8D/7yP4fpQsy2guNaQkQ6TXM2IWQvIwgfOXJCg8
	 URDnvlBNlv9qdP4i65+/Pq2MDdm94Wyi+7N8U0kLkSRbLy6LCX1FBX6+Dbd2EIq6Up
	 ZF1GKf/XeogGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF48C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396199357.23185.16945664089465372711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3716852fddcf5040767dead264ff8274227eb984a2a4832712ba2f155558dd
Date: Thu, 31 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753961993
