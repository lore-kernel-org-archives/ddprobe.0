Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AEC32039C
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757417394; cv=none; b=GavkFaZL14pg1nWwdnOSMUd/rWtYhO+Rs+r9i9aLbhursUefVFVLPVUCOlYTpCGbM2QFC4PKfudu2FAvIqq4GYZAKzIrYF7hCQEl/hH2IfQ4wULCbQAOyrcn/7Txeb2bGpYH8fA7M8cdthf8wjm84bjTmzh6ac8m6tFk8kNMsfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757417394; c=relaxed/simple;
	bh=83+nUcWIB09A3AEX/XqjIwIx+Ti4rur2+vPK9nkW2l4=;
	h=To:Subject:From:Message-Id:Date; b=VIkPmYgtl3Re/f3wggQnK4uA+VvDUxjk++iqABtWTNniitYlt8l0u1/P9G2HEMLpKgXn3vh68YZGLPY34J6zdiISl1GtgmIxTiXbdqzhwEz8MvTikBGszO1uaaW9iOxU5T5R+tKWnBY2GUjeZhRRY6IejYiBl1C5blxxaydfgzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEBQ/YDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEBQ/YDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2628C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757417393;
	bh=83+nUcWIB09A3AEX/XqjIwIx+Ti4rur2+vPK9nkW2l4=;
	h=To:Subject:From:Date:From;
	b=DEBQ/YDQ/4bvkTre0sLDCYCto7qbm/xVN2fV/nvy4vPEavsmZeiMYFyMLgsM7q23T
	 BcHS5h60IcbSXtSV9OVohMDQqpN+ALPzuhNxPaoF3DxLPCyVnOT7KMnmqb4CHJAx/A
	 BVq6U1JPGWphVnu/mKghvR+I8rsomIF+uQuapZOXvu4sISxabbwkAHKLyxPTFrGnDK
	 PyDbXftWqsIqvjfocWdZ9PCt2RWJtK7HMDfP0V7b3+lqeeRf1vAhrYXU4gF+bK6PY3
	 R7bkHoe/iFqS58+cdmwwWQ8iK5H3pjPbVChmJddI+AxsSkVOPcKXIBW1HHZGL3tHbU
	 /sIIu/kn2/YWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90152CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741739358.22372.8451175196294244183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a0c32f51aef7fcbcb72de6943476d9ed20f77825319656d81dde0c1f9ff093
Date: Tue, 09 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757417393
