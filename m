Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A431F583D
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769341434; cv=none; b=D9Jxh6TljvjqPAsnJTUQVkjkbpMfKQFC9qa2bsa4H7Qxrex7rQSQ8jYFhCIEG1L7EQfGXZzLQyDQE972wCv0NYmuoN+CbWDlyjBIBIYnB7a1l5p+4DVcIBWlR8OcbTPLmWwyxRJr94FFWC+fprxoTBbCOoOgUUt4lTHOoibmqJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769341434; c=relaxed/simple;
	bh=2O/WvpO3K7N/ghBwQ9cToc9ycoWHZMYYUmgfvOB0/5M=;
	h=To:Subject:From:Message-Id:Date; b=rTMFtQKxCye7E/g/u4Q/DYCsFt/zRST5bKifqfafYRoATS45ZDiekSlWGvX5oLYm8ACYslaw4RVIMuoVwYnzZN+zOLihzxYkQW1GrFrNb8LhjxN29Tgh7vKmCLYUFeyko//ZAq7gGJfyUqS9+J0PFLQ9Z0wPvMRFRASXE0R1RpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWH8pHmu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWH8pHmu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C544C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769341433;
	bh=2O/WvpO3K7N/ghBwQ9cToc9ycoWHZMYYUmgfvOB0/5M=;
	h=To:Subject:From:Date:From;
	b=HWH8pHmuAopYiaFcQBacTXjlVyfy3hxAS8a0dJJJgZdZFwT2lucEA6RcscOamjjJY
	 /taigoYpG55oTEnEC/+UTTfgfI2d39jXhZSnyRpdjx+rQQF7iiixNe/kHUIU7zny/G
	 os5fyI6zJjiLNw1hTttljvRBCzR7CULKXw4swCNqvCG72FNVbUQo11Ig73aWD2/qSB
	 /hQVDYYAnm8CflXNrr5SBBGwGqPrqcQfTAn/42KcP7tH4ChTRO8lrwoCvKBc3mmrxt
	 QDNHfMlIvpcOXs9241lKDZil310SWRoS2g5V40O24PHlIFS8dkV/CoNrhZYXeWCmyh
	 XFZQI4mMl/iPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E49EE63CA1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934143357.13283.17884793492672610179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf509a2002bc89efa7758b621bca34e0e7bfd26d5b629c96a73d88b5485c107
Date: Sun, 25 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769341433
