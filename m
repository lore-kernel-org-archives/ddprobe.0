Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327D01E5B7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752302994; cv=none; b=HReB8XbtnJF0ONGL6SdSuP1L4LSyKVPTfH/iBzqC4nDPRSu0iEy5owUzlfhIEKE1pbLfr23LXF04Y94S1nviT2uSwe6EvKZDaAtAK2uZphlN2NAjbJ70PCoAJjHGG5IkErHFznURGyda52KrsYmwNlWhC4gOHQUCxS0ZU7L6NxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752302994; c=relaxed/simple;
	bh=iyCdSOJg0JmSzmr8sjall5gNNfwyKxtWKG3z78kl8XU=;
	h=To:Subject:From:Message-Id:Date; b=DMTqg7dCbnO4CnYcczRngSizsJVFU4RKfPBtqC4ie+FibFPNHTxElv9uBDMzb6UkT9bMr3beUqiG9TJUr+KQCCgi4IgbcKAQO8cZGiXQoUx1fV0BBjUlvHx9g3KdhDA3RT142/zHRGxtCYh6upc/Rd7IWE6nt3EwvI6+Hi3grFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uM9vsqUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uM9vsqUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC70C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752302993;
	bh=iyCdSOJg0JmSzmr8sjall5gNNfwyKxtWKG3z78kl8XU=;
	h=To:Subject:From:Date:From;
	b=uM9vsqUlL+Veb31MEnx2yq/CIw2AvVZiDJxgOrzJbl0acyqMghimrporRu5AX7DZT
	 nUQnDPegbTjbqfIP224vcmIvXeftKHQERBX4wDbVIN0I0hBz9sRYfSz+vAQMlThArg
	 a48EPaBLARvEAanEx2qGzexptA01sQlKijLz5kgscO5KfDqCP9rKLjuhM6fo2Ox+If
	 Q0DhLJOmD8eHHrI0RocWooj3AQKx+NpInbuZY0Q3YmT9UpG4d7pLpB5CoU4zSHWu7+
	 OwowdP4oQIO0TfTIesAf6WdOTfQb7iolq5YEGA3PEpUU8pHmyBovhkwrifUj5r/ECw
	 eWJhq7UthTrXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E716C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230299357.18717.7679628000385632687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6587ccb171bc9fcc973a87bf423e6eba0a8180bdd1da84fd9f32849280dd01b3
Date: Sat, 12 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752302993
