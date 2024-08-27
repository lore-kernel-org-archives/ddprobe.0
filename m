Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438E41993A3
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724748954; cv=none; b=KT6X+th57/5cMbV55o+vjRGIp463yc8v2TYf+HKfFD3WwcqS4ES0zHNS7AuE0rt5Q9B8/pRvUc9Up2/t61Oqz1jML7WZf5TtUYf0UtXU9rrL1fzS51kVQ7paxIy/ClcA1wJ6kZ6++mJLovbP0AU02/xBPMRhR9PhiabJ9Rlaj00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724748954; c=relaxed/simple;
	bh=65yi8fC3rwOpyKkeUkeduDl4p4RKrR+zY6xPUdvxD60=;
	h=To:Subject:From:Message-Id:Date; b=A/zrImqAoVJqC7I5SOWE6nGiif/TEzhV57sSfSVjpABFdUbB3jABWXYTAZ9aSkA3zBK1nQGKcgNByM68+6uvNHjCWCKBhJEU9gmqQ8yNqf7of7Eik2WkmjeJ8SvhC22iC5ZQcPEBMFnYuEHMtjlFpiJpsBM+9HJdpww8qS5BUt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTBJQUOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTBJQUOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91B9C8B7A5
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724748953;
	bh=65yi8fC3rwOpyKkeUkeduDl4p4RKrR+zY6xPUdvxD60=;
	h=To:Subject:From:Date:From;
	b=gTBJQUOKUzJ1WBJYU03jBkrc0c6ymvLvHPwYlujrRyFQGOuS9We46WQ/9SaaP+m/A
	 iezRNUDfP22pLcFeny08OZpol8BZmM0RbgriT5Ku2hQtX+fOTKILdnncQzy8HpBA99
	 9lqzlusBeUvW9nyWpC7py8hMr+uLYQtqRCPxSvz5wnH+h4wEx02jwGsdPi8/MqauAA
	 t4XOokKC7KyD0EzRys/jAc7hrzpBGkecEXA42vqtZ0sXH30CPh8TU5FHBRSLvS1YPH
	 E7qldlrrouA+Iu9Z0bkW5rzMhKlSUSgSSr5TCf0X0hzRQ66FiyguutyjMqKqs9tatk
	 HJcttSB7DP/Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F793C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474895363.24022.944300677738729195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d1354206e655efa7bf4b3098dbb2389f383992652a71c80f9e6c71129fa944
Date: Tue, 27 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724748953
