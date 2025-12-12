Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EC61DE4FB
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765500174; cv=none; b=EXlf7HZzAv5B94bKb1tqLY5daOtIKk7KZVXAlN+iWB4CQh5489Ls/RPwjZi4FGHS/VHwK6OU3b1+Q8s4T7lDtqk0qVWMvgLYxHCc4jtiDDY44ZBHOzV+rRKLqUiySM1qPNVUaFLK8VVBXTKJONnUEtxEfWI5oI337KR+TdvDfmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765500174; c=relaxed/simple;
	bh=2ea1eTt3fN8xHAmGUPX3QAkjC6qqc2PUuXYHJUgXWiM=;
	h=To:Subject:From:Message-Id:Date; b=o7UlNz0RslruevWJEfZG1Qpg61EnRcDC91nXQioTaIuvZg5rWWqJfWb/DgC+k5DPsskWzaMfYjgfe34RQAdK4Hd2bELXkvNd0QdIIBMERViJBGi3nsn7hyUQQVVVZWwDK4hNOg7ZJZjUZfV0cpwNxL3bpxVS6EOr3e7VXEHaOAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWXepmpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWXepmpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97D5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765500173;
	bh=2ea1eTt3fN8xHAmGUPX3QAkjC6qqc2PUuXYHJUgXWiM=;
	h=To:Subject:From:Date:From;
	b=DWXepmpMhQUy9K2Wt7AHcAJzydFYmXFfYL5i7RzdbCtREb8LBLDzVwka+cOoItfWU
	 ZSNoRCwt1qnHOB1xBeGYulrfi7gVfkSfAgCPpuAuUsSRPNqZU3yQPvljFZcvwhaOum
	 i2bSAfvhsTGbGa6FALQG1b5YNzv3/eAfsx6GXqwSj+bJP7oh5pn/FmKnytTf12JZ6Z
	 H1iab3W3492sq/bx9OlmfFhL8YFDef0t9RjKfjgbLLgO0i5UNuwQbmJGctyQO7w6Y8
	 oGZEVBL8zQqEbAahXTZaB6sEhyUStVZ8A/oANWIOOprcQz06QZ6DWaU2MBLBDGXkEC
	 AQ0tbVE0y2BxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9858ED41D74
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550017359.22713.4010151641193375928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081a568cd274f4fb2a35bfd643cc2bf6144443999011b0aa86d2ef83ed86d435
Date: Fri, 12 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765500173
