Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B7EEBE
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726956354; cv=none; b=F4Yvt6nmkRqHcr5CJlc3xSg0ejLWqWRYXbnWQcGMUTYPDWrno5Pk2iw90P3p3UXX+5iBogwtHh5PZi+tAnKt8Xh8nBn7ovAcZtRJIytoeRp1K9O3eoZB0ik7alia69rlhmE5bC5Qq7od+eeTJZ8BByiuEDI6GGrtsOvV503l5fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726956354; c=relaxed/simple;
	bh=Md05z4G6kkSVlLVsOUtYMK0UGu3/SwRu+1gACv2weZQ=;
	h=To:Subject:From:Message-Id:Date; b=XZEBao5yiK2CTmA2DNlNCMTMyymUBKzqlgJKQcjxvLB2RSECespYYuostH3w41Xrq0roe4nmVII7yTtjme2DOKeFagtkmBii6nV2GLDHxhYgaEt6krw4X8VbjcT4UrXf0gWnqVFuD6iMwsupMryO6OtKiM1dp2WR+NpoQphKt+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIwEmdSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIwEmdSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CE3C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726956353;
	bh=Md05z4G6kkSVlLVsOUtYMK0UGu3/SwRu+1gACv2weZQ=;
	h=To:Subject:From:Date:From;
	b=CIwEmdSsexXp0XK152MNVVlPa5C6wwsKdAQ4BgAeysmnPgnqehqmFYaPeAACCLcox
	 365XSmOB1mGHrnNMHKOqbc93scCr5T3JeSKsfhRDwInkQxztjqNAD5mT0W4TC+vOJ9
	 EUjMoNm5dRJcyQcFDykrwl86bmjVby6D4aaHo9x6aYtBH04EPPTenvtwyttLk4YqYx
	 4bkR7pFiqtvsrelYQRTIHhANY0O6Sd7/k2fHFvwkWvqlDSIiKdphXTMwX6Ijtlnq81
	 em1zHtKLyZTTSd9Fb1h+Yl4KL/3lQz4lwAbGRZ6gsUmS/3nI8C70YkcmzIWp3+4kXF
	 V1Q72INuqu6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B222CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695635359.11247.16523656559821758163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fbde69993189fc2e52e19339d92d9df99642abfbfedd088e5041078352ae5cd
Date: Sat, 21 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726956353
