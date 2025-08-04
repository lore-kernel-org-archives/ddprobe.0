Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B69214209
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754329194; cv=none; b=RLZv0GbLOsl0OfROjMO3Fqg7Gt8WJkEWA1Kr9cvm+zDFOyGVNe/0ou+6Dg8gZbae7onCs9H30zK77JDhx+PDVcGZS6qaXnRGLxHfZoLqL2uBxsb6m16cH6iO5ZBEZCtZNOO7zyHc+G8Ala5FSg8aAQx9GR5+4nUcNSB4EwKIg68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754329194; c=relaxed/simple;
	bh=EIz2mHj13ZRGjisf6aT88SjzVLPyL1JF0xv2asbRKzI=;
	h=To:Subject:From:Message-Id:Date; b=C7wvSfZF/tgNOFLPObVsIfeMdzs33XIK1blY1rMuvuMMEZt0lBGHqWW9DLGnXLP8uEW7gPz8kbXcaLyMby1gQyCXIppDXoUYuoNcr2zf3Yau+ua/uNjg1HrkANJ6jIu9isu9sxKSJL8Q62gK1GcvGtiamQ5DzcmKHlZgJeVVKX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaD3T1Ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaD3T1Ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ACFDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754329193;
	bh=EIz2mHj13ZRGjisf6aT88SjzVLPyL1JF0xv2asbRKzI=;
	h=To:Subject:From:Date:From;
	b=eaD3T1EcWyxpOrI9kD7g+gfSWP2tFJGyOraeiybB6krJx8POvrkgQhVh+nRsBfqvL
	 2HVxk05rxxWekxi5oHGIkblcc/dXSBZ6P3tMPAiq3yEMWZLiYUKgjJ1c3gPylbbzRy
	 CfB3g2HMyRs2xkY+mhNxnE1vX2wmnEHl9bWOfmN+smYQ7NCnm0OevhNc20BDO2OhWf
	 N35Xvj82L7mvPpkBtkBDLHaD7L0Jn22WP/q/Q7QEbXDaQVdnPVs6tYzcWCbeNnTfyQ
	 B8e4gett7GaBUwH/QzN9APqsGZfGl/bEOVT/dGAYmniYNUyepFUqDJYFy1g8QjPes5
	 oYPM4KHjI5soQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E47DC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432919357.10312.3237627357493675510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4674b48137e6a52572353645ee01f23ba01c935b7fe074bf9d7a9195b458088
Date: Mon, 04 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754329193
