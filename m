Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D1A1741E0
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732270554; cv=none; b=GjSVj5oL34F17AdCqKTF7f8qWgD8hgHAtxGwsffdt4aRP3/MqbaQFfJ8wAiqhhU5luG5UavZB/OeY0gY5OdnwVH4lkuw77+u24E7DeDstUcSydvzZfXbQloG5eijNyFyGmI2wNAOBS8RyB8WPAiAAGmpTT4NIfWBZOCJvkzIEEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732270554; c=relaxed/simple;
	bh=1Fbr1pIeQzurXGvefVWslJLY7PPT2G6E7lZi7rqRzhU=;
	h=To:Subject:From:Message-Id:Date; b=cElstqMhMTAQ3leyNjAadGzHNeX0DPRW3bwgNCmAcBQYkqM+P6hU/a++U3S0ee5u2j9KEibFAekvsETL7q781Mo/aWA/LGPFJKIQiTfI5tNgaYQjY+btyDZOYOpoWCJqyk4OxQ4M9HH/LTK0+XmeowOPr7JQcUUDnyt2VR/CWbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqwpGAAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqwpGAAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD56C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732270553;
	bh=1Fbr1pIeQzurXGvefVWslJLY7PPT2G6E7lZi7rqRzhU=;
	h=To:Subject:From:Date:From;
	b=oqwpGAAdWZDMo8LF+oBrQlyepsxIhYiAcHPel3WfN+MeT8967MEB3/ZLcXXKc/P3p
	 VErgtJ2Eks3UvjsWjMmTIqZA3x/9M+C7q4XJAOfwz5hEHjcyv41GalC8X542iCJQZl
	 cXbsWyl8pQvw0eGwvD/71ayVjSEWL5AI6ZMcL1aNQSpMhtsyEOZpuHK3fcb+R5qvTW
	 SIy0Opun32CXSklsfMBgzVIqFTSQWAZGUuSC2qTRN0cY5xwFLV3+EOdaK7pdRkztpn
	 3flEYK8co8gU8PCAKoU7OlNssEOznDo0Cl61ILuvmTNHHWdLLhh9MrR9q4GPVDA7v4
	 eFHuxH4A37nOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8127D78767
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227055373.28109.6036612735369481441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770e39360510635659098a5896ed0963242839decb902864125802dad2c08afb
Date: Fri, 22 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732270553
