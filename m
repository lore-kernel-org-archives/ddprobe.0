Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691DB14F9DA
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720701443; cv=none; b=kh31Y8ZGjVOnkpA1WqKsFOkzw+J0D+KEUPufcnhRaHlf16JFMlrcXzbl1bxJD+FA8zkMfKsVa9rmIp2afiruHmMo3qf1aoCr2nkp5jbuby5dY3gUrO6i1fah+dV6HfVXPPMs5tWHcHoarcPB5+31tr0U9wSowxrrDdi3xtjZTIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720701443; c=relaxed/simple;
	bh=jBcOzHFZhdGzYTgA7zGEqIFfo05uMdRhq5OeeIiYIW0=;
	h=To:Subject:From:Message-Id:Date; b=pexNQxsjTPH7j/pCxVAIgCqUTUDcFgshkARFBai8ADsbM8cOffFI6s36VYPc4ehqqzGjB0AOGlPVKO1A8NBkadDTEYiwn5CcEJqtTI29SrithirGjo7wfZIAqd5BFA8ZZk5Aio7DEzaAJR+Ngv/ugXwO0Wc1UMyz4Q+guZ2eCkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1V3HE8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1V3HE8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED6CFC32786
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720701443;
	bh=jBcOzHFZhdGzYTgA7zGEqIFfo05uMdRhq5OeeIiYIW0=;
	h=To:Subject:From:Date:From;
	b=C1V3HE8Js8cw7kpHljdiqx8zErpPVM8cvgDfIhs6nXknGfXiUPrPd88KmZq24dlcd
	 qDVwfhoHsFAcZqceu84piS9qakxwVooeY6llZWDiQiJpN9xzNwE/tcx9PMiTAO0JD8
	 jjom6KswBwDIsu5PMN+6xaoq6cZhAtfxMn1gFsczxdA1whTPYRIBLOXtbJUlFl6Sgl
	 BtVBzREvBls056wvULBs/uuR8v3yda+uLL/ossZYH8ok8nkbjvyQgi7LzACLtLOMwg
	 gJCn0FefWBZX5aZw7r8+rhkhZLoZgDLkTsEtivVO2JSreqC4RzCEWuI2mCKRd7WNJJ
	 ZxNLfz/Yq4Vaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD08C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172070144281.14973.13723500502825754338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d1e3d1eaac7b6c07db0348b73deade06d32ae350eb25f72111429225a51f6b
Date: Thu, 11 Jul 2024 12:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720701442
