Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB2338FB0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738038356; cv=none; b=IuhuytQJ0Vs07piMnZJixuVyaW8SViAK7a04jsPLiuC8XGLc5NAuRs+BItsIIWeNGQThMA++jd0yu1LnKXI6U9DxQud7FU4CrIdyXxGycYrgp8ncHMpSOMs8e8y1BREVAYtVo7tcpdXQYA8v9EOXN1xtk15JEt95jFhv8kAY1Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738038356; c=relaxed/simple;
	bh=hB/I4VR91F0fgmTE3hXklBR3NHfHWBgaS1KWareCofI=;
	h=To:Subject:From:Message-Id:Date; b=ZjAGmG4H4AUT26YcO7exEMzIJm+frRnLDbPCCQETkh2reKzUnuKqLOsKoQ98CYnN3SXKRFIPGEQBXgGIpe2nogu9Ku5pzeW1/ofTfv+u0plmVvz3ImdceAkHDhyBEkk8biLHSLQ+EKhKkvquoVkdyAvnXETeh2qTnUHaCHN7/DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZe2M4Ef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZe2M4Ef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1767C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738038353;
	bh=hB/I4VR91F0fgmTE3hXklBR3NHfHWBgaS1KWareCofI=;
	h=To:Subject:From:Date:From;
	b=IZe2M4EfftOCBjXB7HgvFZzVb2rNNw4Tj1lYPSb1wJNh8j1YLcQIKSdML9LlF61IY
	 HLNmbNw3oXEm7+M7w2W2evgImrlSxKcMJgRH/QrlkMzydQbvtdjLl6MvoPOiEYcJt6
	 y2D8qEc8yZqep7maBAG7MYykNcKMIU1OmFOD7dlsFsVsM7gYrLyp1ZTqqy91Ldlort
	 0ZqNDcZPSvua0lMqDdAezWCY0T8A1TLTOv1YmqV8IJCKt6uFFfepNN/L9Ek6BCpeCe
	 9SBDuSIKs/RA8GDJWIskO0DgXgJjqUqjrNyPzT9jFQjXjDyVoB818/h26r+UvK6ytX
	 oV31BxBQtB/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78F5C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173803835363.3203.6595173348133162168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e814a3261336312f62cb2ad75e714cb3f472bc7a452e9d8e4b6db16aa1d901
Date: Tue, 28 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738038353
