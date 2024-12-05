Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415AF217F50
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733408754; cv=none; b=Vh1xBm823EPfFaudiHcMEvtbKMKd7JBoGX912RQQTHMEjo2cH48+olKX408xzouCM5JLi8Hs3VAsgkuY+KKl2kmJfEDraF9J/z2TeCLhnwPXwF9itRlFu+7niWvWldIAzxMMX4eNv3lOQT4IbFbX5Oi9gXpw3G3Y50YQJ6+FEYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733408754; c=relaxed/simple;
	bh=QpzeC+hHkvql717C8PCalgLmKflAaHgg1RMqf665c/Y=;
	h=To:Subject:From:Message-Id:Date; b=F8RySXVjVJ85CrYQO5YIZgLTBFowmUVJAPAjT1xYySA06oRJzwMCQS3HWZgTHmNSXinotwzljKB3VMyULBZXLx4NYn9NlAneFw9yXIO3/RfzZL7HpWPNqCwzbywrMXdTM/J4PPqf7062RiFvbBCMq0aciHyI1I0XpyQGjHeJGh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUV0C9Dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUV0C9Dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C88C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733408753;
	bh=QpzeC+hHkvql717C8PCalgLmKflAaHgg1RMqf665c/Y=;
	h=To:Subject:From:Date:From;
	b=KUV0C9DwJ0VY0fY+uDxQ6gYYeggaqvXHH1ZYOhpkffaJyoMi/eUtYHL5rKHDnuSWu
	 P8ZGpkiX56OKxm6+CdW0Oo19gswExxBtrSY+Au/41PP+awhGj3+Yr27qQRtWIlZ8LM
	 nqXUR0FTJaj0WnBrJOawUbnUHUv81W+Gj0Y6t28TN7dzYKTvsy0pesjcpbY5YbETOU
	 BEb3n3UJaiy7/07XXaYAjG3eVKaUJwge6mAXruVwYVkdy9s91nJ8K6xdpcWTfBpdOc
	 EMPf3MHr9zqWAUpeaJk2zB1MFgLLdarMzFcGv3fVdhhIGth17k7ypgQoOIaVPqK2d+
	 OtVOsJzG14Lcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD576E77170
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173340875369.30967.2928277281302800238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad4e7995a4a3381a025860e638cc45a6edc105b97fca91736aaa36f91a7536f
Date: Thu, 05 Dec 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733408753
