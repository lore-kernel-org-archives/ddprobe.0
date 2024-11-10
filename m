Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD9F13F42A
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731225354; cv=none; b=EHMKkIVaWc0eWoIuisMnYeBGVsh+/bzwDcRi+PCzGZFed1UsDba5iuqaaliWjx3jkGeLVqKeFewUz8U2nmg0e4n9VQBvIEwquwGZN0lRLDIGitweA7XyDHAgHNuKl4/BHm81/SwgjrD8iKXYd2khLWS0CLAThCFVlb6JwQswHUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731225354; c=relaxed/simple;
	bh=k41V5nOUnwo7/gSSkv8nX9UyZLpLx5AoeUy8c2dvrSU=;
	h=To:Subject:From:Message-Id:Date; b=L2swyQ03Dzo9JC4QDeHsqocD1GHeU/EvHce3hbqsU9SUrvJPBXGd21+dINbuinXQ7BSboxNwZoMiqgDUvOiK4C5xqI8xZ2KQVhiAuo00CFr3zq8wtch6JpurW9byWOB8ODoJ9A1Y/1fsHadDbObPXJ4D4M7L8UrQvnGqQhvVnsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIcDHtgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIcDHtgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6293C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731225353;
	bh=k41V5nOUnwo7/gSSkv8nX9UyZLpLx5AoeUy8c2dvrSU=;
	h=To:Subject:From:Date:From;
	b=cIcDHtguzjkgKQ8s66OTSjUyow1zT95zxA0oa9oSCDvccyBcW4G79Y/MPHzWCHKfL
	 AWvYU+DB4N1WkZgzrLgeNjn6tPHOso5SLGLKUzo2SRwRUkm0Y3OU/OvoFEgXf20GqZ
	 NaCFGvv5QKb/6Da5wLevcZYhllu+FjT2jVjA7OXlweu8VpVJfU5Kw40zkjLAUFgHhB
	 xEBGpm4Ecj0WW1oKbNXUxhOamVHmaUo8c2oJhAFetFVOAZqpT2kfNEhHV44CwQnOuz
	 2VkpE24M/tfze+P7XAobsCApHD+cwf4wf8xnAC94+e49bRFX4NvSQSBTs/QnGez/3X
	 p6+THu/LBLViA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9744BD5E37B
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173122535360.14670.14570261408829236692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d527bc2671fa7a71042985b1749b9262fa3522cf93c16ea3655d48214a97fd74
Date: Sun, 10 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731225353
