Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37A32D7DC6
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766229833; cv=none; b=T5rhAKCH8JZatQdJHL/OY0qtsFiYvitddoVgUOtDIo9uNqWzm5RGpApMPCYHZeIlRUL40bJDgA0oWIt9Z2Obo0KkyAQw1ovd3JsiEuUfDJOtF9hSSfwAfMu8j+qPdHO3NN9bN8aVhnm29Y8PZjXLbI8RYSlxI+SrX0tvydnln0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766229833; c=relaxed/simple;
	bh=a+RKo4QepGDcOX5JEQY/7qo6wWYH9AOh6KABPm6TPu4=;
	h=To:Subject:From:Message-Id:Date; b=XyvSFdk18eNGA6FDmRW7yI6wJ0K2NU5Ab9B2HPRqysFN8+IOz/6K9IGqaK0wVAKkJfnnF9ZwKZzU6wr2KUpwm6t3Va/ml/6C8MEcUBwcLbLs2i8wgp2SRWzD13Ffe50i2nmvTWeKA6IOeBTHvucVBbuKyAncVRUBaZMsrVbD7lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/RsPaTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/RsPaTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B313C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766229833;
	bh=a+RKo4QepGDcOX5JEQY/7qo6wWYH9AOh6KABPm6TPu4=;
	h=To:Subject:From:Date:From;
	b=X/RsPaTLdTl9fzPGBNaBM6k8Qq1dQq7jutqEeHJ88ghRnUc8TqTv3ZjXTI6OXqfEn
	 H+1cH06FvEk9gzKu+4OW9M/ZhwUTZ97Rurky9LTdAFRsLX+bbIV+Ky/cbrs+P580hK
	 WwUWqdTRmcELGYAx1qRlrgkUcTfeQ6Kw5fJ1/G3H9Sk8RrkA8bsw1gMIFPd0mZC6ht
	 xeQKX+8tSSM1uc7Cmt63MYnLcndxWsyhq/BCKcCpE0OfFXJpFv+f2g0WQvrL/dmrnG
	 QLHHURzTkLSwCeQP0flpes2uvMwzFkw7wLvhv13+xXdZClVnxC9tG8Z4Z2AysFGZQX
	 v3Ac9TJLTCHtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BAE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622983357.29353.2630577151782809146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac2f13c485c5785d5dada2e512320a749a533170325bf00e9f7702c73d27f96
Date: Sat, 20 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766229833
