Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C0320EB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755076194; cv=none; b=hRNytQjkP/8BOv0jBgq5fsdOVBNWrzp/3rXV4npHdHN1Ac2uSu2uKj+AHLZBkpjOUp2KWr+XrAfcDqLMxbVxzxuP2KxLAu4ZqJUYqNmVzRvqpgxMQcofnfg2yEGZ9vIGewzgd4xzGT9zVf+7M08WqVVVuzNnxw17xaCu1YMVdxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755076194; c=relaxed/simple;
	bh=nB46rVLLEeEd8ISFS5GnZpwW6IyNRqZBU2pDAoYl/jw=;
	h=To:Subject:From:Message-Id:Date; b=OcPxjsRBCzaXoGxEMzKA3SpIZUx7MqfqT9rp4mezu8cVf+YgBvTyMWJC2PYNr6yrl9wdAjlDJdSdYkidO+7sUM1l1lVZtjeA8GlOu2u9ufy7PcdoOQy1Py1bbGNiw3157UPKO4AWiIRflFpH6Rmw7EtUyJ21L1vcNfKy7JzxfsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdrxjzwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdrxjzwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8E3C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755076193;
	bh=nB46rVLLEeEd8ISFS5GnZpwW6IyNRqZBU2pDAoYl/jw=;
	h=To:Subject:From:Date:From;
	b=XdrxjzwH2NWjJSY6bIqm+QgTlCGMZesADGqYz4dLg++jONJpQxEu7MQFf1KAh3DeJ
	 G2AJqeXgdNz+4OL8YsCqv5q6AMWd198yRvRF1QMtlr6k9SOl9bCF44/wv1o+MRtIDQ
	 ZewBye8QIZKa4agxsHuSbBl2aGtbVk9kq/VRPUk2WpojT0W8pOFz69vLh9vSqtTCJU
	 pRAWnF6EEcY71zQbMA+CJQNEcraBwfr+k72pZ6dD+LtzUWrU9UtEKdgc3w3nt6Z2dE
	 x674TRyHtBejMntPZ4HmxIhQaZm6OxBQkQmOI1hvYYuUeqykBxNji2vOlkyo0ifFEt
	 v8NrHsPQK5G2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918B4CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507619357.15550.7476207342071578970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025754b63206fa264d0cb1203925e8cf389e4ffadbbc2538a49b41c22d769555
Date: Wed, 13 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755076193
