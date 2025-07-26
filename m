Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED6E220F21
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753522194; cv=none; b=Vy2uMRdI/e4cNsoDRfao0BfKbNYqKEHfUv98kUqiE/Jh16EpbyXIe8hJiKrBZeLd8W/u2VctF77RWtcGQCLAff0v7KBZ8+aEHFMGLaNmv2Am4xbRzYq5w3Ol90HuIHMWyUwc92T9uI7yhYfpDP7zrkRzq6TJDEU1UOQnTz5jsSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753522194; c=relaxed/simple;
	bh=SxZE+zzvE5xqQ1YGCEl+yuj7/WtEyz52MK3dZbY/EBs=;
	h=To:Subject:From:Message-Id:Date; b=rBKYsbpjvqohU+fZYqqye2+zKq+xoOe+p7a3/VinxSFH7hbaTGRqaJBz/AGPhr15Dzsd60mkQjVjcNGSxRIsid6FZVruDAv4O3fwc7OGsJiL41qG9b+R4YCPp9hbRxqpb70Ih+9rLX/Za86XX3x+v98rNYQnA/ISzSv2UxCYHgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCiWCq/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCiWCq/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BE5C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753522193;
	bh=SxZE+zzvE5xqQ1YGCEl+yuj7/WtEyz52MK3dZbY/EBs=;
	h=To:Subject:From:Date:From;
	b=BCiWCq/+OI7p35ny665MHKKzlI3g3v2HkhcUrrbVHOQkKuVNGfpHk/Wb9LydxTLbP
	 YaQ1Io/T/XmoQrJiKif6NaIxq6hbvywAf8I6frdP0rvvIQyGCjJjruedXgzU+tiO9I
	 E8s504cbH5qI9Mp70azCAOwCj62n59436+VkFbpKlf1/J7DjmBBFXFOkuud+rC/88C
	 RrNZgSKseSwpoLsbPYd8PMA4ds/N+G7ck/V1UqpW45nrtLsVL4P9tkwSTB4jREMrSp
	 B6pTEc5TX1c/LX+rNquHPf/4DBXVp2nb+1J/bNlidrtM2gVXgtvvWYQvtQztePFqgw
	 o2G8plp0HXw9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95743C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352219358.25911.5588289349092187409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4921c11f3d35ebf48ba248c93ef73ea0f6a1c359e7093af5ba58a72a430e5413
Date: Sat, 26 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753522193
