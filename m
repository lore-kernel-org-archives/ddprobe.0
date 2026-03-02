Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E4430B51F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772445294; cv=none; b=PToQD7akCiE65Wxb2KIrZN1Wtda6S8cgraZiKJV+D4kvBKfgeLieYCDfx96z2nF1MB7Sf61g5i+0txP+/Qn3bvy1uz8vnIctQBNRYa7/dz5W1EJCZ5kPGrwOQeYyZVruLPVDc14BrIjiem20H9IQF7W4eapWF7nKZhhV9HtmVf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772445294; c=relaxed/simple;
	bh=rPArrPOYVxtPwVgY168e+1QxlXvvG7Tt7hV0S8kOyHY=;
	h=To:Subject:From:Message-Id:Date; b=DnvgrdjCuFPCWbWRM0Gblz36f4gqUKkK1DsHdJeO9rupFTXe7RoUZnHKFhtcqzhRBR+h17g+6Q1+55PrujV6qNBnoycbuy6n5p5CTYIUpG6+RWfdTTh9sLzpLLFsFAD8zmt5rL5rtqsfcK7tmP7/o3uiULkA6ntuT8dbPbbXS8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNQn1m96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNQn1m96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAFDC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772445293;
	bh=rPArrPOYVxtPwVgY168e+1QxlXvvG7Tt7hV0S8kOyHY=;
	h=To:Subject:From:Date:From;
	b=MNQn1m96BcHTfkNpjrWBrkXDJ7SJJPNtvy1jW0zn5LddDAjTm4BkmQ1sv+Eqm9gbi
	 N7WRS8uWiJU/tzhch0ukABDFcVCtvS6NzeEtTW7QtNwmmBqS6ZwgCphwUEsTXiy2Mh
	 VHPhMvBm2snvVBQx4Bhg7pv4ySjIgT9dH8aT7Pb7ZGEEy02nFBkDYHffKLGlMR3RFG
	 B9es1LKArmKKfuu46x74IRxhpd6eghNJMivRobXUAGbDBn1F9UP2ZbwzJmLGjC0TtM
	 dwosTgMZYMvswni5oyQNr1c/PwwrkzUzL8x7laM5ZXO5DzjenueMLZ/qE+Pp4mE4wx
	 +AAGrZQVjzlQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97079E9B34B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244529360.14483.16967544598539505921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6d7bb9d50f7562d37ebba8876a65b0ce3c59e516ec0556807c435c9c1515a0
Date: Mon, 02 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772445293
