Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EE030ACEB
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757939994; cv=none; b=Mc1B3xiQllHf2/27l+slpyDIbf/M8acvHOWhIZqH3szG9s4ctE3k2CqUspRXe2pz9p39CKh6fIyrxACdetWtrToPYTULnTNVMd3goXj24l0kflas9Vfgv8wlZYLUOtH0pZzDhOYJBd2yJ8aSNA6VjjI523QM44s1dFCXmY+18rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757939994; c=relaxed/simple;
	bh=9lE3cgQL7vxpI+3zHU13DK8+R9Jc6DbwBrnNr/9dwG4=;
	h=To:Subject:From:Message-Id:Date; b=MV11wLkccOgmw14lkjXQ5ATycYtHp1PBJvS5n+W+LaY2bgfY8J8axkKIkC9KG3j0Uwtjg0pkK8GmWqoTJ60xpy/OUipmtsSFDWyLBdmL1bmm5/kDp78yUpYFb1VgteQ4xXANQsbKaX8vrZZdHcONhdDhbyKRjPPdyEig0Lbj5go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2CayHPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2CayHPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2896C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757939993;
	bh=9lE3cgQL7vxpI+3zHU13DK8+R9Jc6DbwBrnNr/9dwG4=;
	h=To:Subject:From:Date:From;
	b=l2CayHPnzVvrOZeTyqi6XEQCqfp3yivLt7gd37WjctIgS81ez85tvnDMDxUQ4Lgcv
	 u3WqBXUpZodnyJZmtx62E9YH0ynj0ykJYZFQUnBimsb1uY3OFcEvnnzFjv/KfGxZf4
	 v1N7xbEXW/U9lsDljvaX6QQLnvWq/K5UyKQzAiihRVnoIPw3R/Tzc/UYyfUvfn9ma2
	 WZ+YskFJQyI8+2wlhAf4J3eEF79eBGwfF0Mo7a0GRdka3arZgHDllq2hD8K/SjnoeN
	 YBO0d4V+al/6meGKaTDCNfVcru+5/KKDZTvGKFGeqES09iIGDJgfjijTbBZd5sBYXK
	 4igEH3N6K9xlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900CFCAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793999358.21241.4397966145944624311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b82902efaeb14d57ac77b95dd571c7d79c2e3142f7bfcb25abd9fbf12a71f1d
Date: Mon, 15 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757939993
