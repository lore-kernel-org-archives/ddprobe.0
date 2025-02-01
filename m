Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577604A3E
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738388154; cv=none; b=A4G7ve7MKEP61GkvPK8KGBz/YBQXTPXzXSHO7SfQ4SJar70nWTpqextucOLSTuhVyn7p2sN0B4655kJr/4Wn57eGGwuCiNLJpNTUZwX9xSxA12IOuOT2R2a5o3VwE8VOs8wE6MX4StDB4uniaiZb5IFohfC8ZM36y7VJGAucZMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738388154; c=relaxed/simple;
	bh=PPdxjHU7HZfps6L8NVssOoEziZDckKvDDztLn4K/hz0=;
	h=To:Subject:From:Message-Id:Date; b=kgeE2dUqFz4iNTm2vQPAiKQFCQlqZ53dEhqG/TJiFSfWk+zc0fZ0mRxvW4PB0qgak8F6sE/xNrcot2xI5ylY4Z3dgTOb3bmavxvK2RdlMWtNm3/HUf9EGitay1xNMSk8i4bPmDjiFyZIW2BTkJ56LpHvzxwJbUb2H+yiZJ/R6cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jw8zK780; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw8zK780"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE79AC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738388153;
	bh=PPdxjHU7HZfps6L8NVssOoEziZDckKvDDztLn4K/hz0=;
	h=To:Subject:From:Date:From;
	b=Jw8zK780EYFkafLdebrjt2cRnXUVcWvMnxdMbTKKw+x5L238mCDgeFvFJr+FkLc3F
	 r0tMVK734iXYZXAyG04TYQevv5IU9nI7KgnsatApN8kCfYoIQu76BfXhedpjYB6FCY
	 G9zr4P4VlYVA7VAXqsoYNHwt7F+qJu+zFQlDGRzUmT3ZJLkupQQmrAuCb85LpzL0SF
	 2mFXi8PeJsMWJpfrJ4MvhNNp6TkznG0jXosxVo+GEKRv3u76UeFXwrCowV/H8uvzOS
	 os09RVEIhgjTmWNMRkGKjR7lcVwQBa4mzOOZEnTKTrP5Odf1QjhPQ3Qk+RD6aps+tr
	 j2Cogkf9PmOWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF24C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173838815360.30885.11413236948613016807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5191d6b3dd320e397d0c9d7a930a00bf8a52aea8536fdfc31be11419903b4e
Date: Sat, 01 Feb 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738388153
