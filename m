Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D86259497
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735494354; cv=none; b=LaiOOrvV5oxyv1RCzXa0/7zK8h+CFK7o3ZSd33H0af63CafBWot3HTCPS+vBobXHtkMvA3V+mV9NZL83KAkvNJ6wUPvPOlewV0YA4qWf1rxUabkZpszMTbddlWCr38IBn8r/+3Oyk/b6uOFIj9yWap+hAw00cjrCyOfhZ8g+CsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735494354; c=relaxed/simple;
	bh=10qTl6LcCN3c1LlvpwrPHbE0xcIpck68jJZmfwfa7js=;
	h=To:Subject:From:Message-Id:Date; b=tMAWBxORuPhaTD/IPZuMGnZKLlMGbouT9Q7RuuXOFuTnzm6v23GJBDGFdJ6uBxHSaKAHsy2v9I3Kse/jvCR2pYLfASEcof7A2sI9W3w6DE3mkIL2sJKs+djl9QdpZHZJuWbWYJ0ia6IAIOYPWCa4WnzAf47s1r5Cun8bQG88c0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NV/yrmpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NV/yrmpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39DBC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735494353;
	bh=10qTl6LcCN3c1LlvpwrPHbE0xcIpck68jJZmfwfa7js=;
	h=To:Subject:From:Date:From;
	b=NV/yrmpnYNrw/30cCFPmXVPBas3W51rtdqNI0Q0sb19mCa8/koQRFhjMcyx5xZeJv
	 1nyScSMJOO1SgkiJo+YMwp9z4eDRzjY8IFIvbOwvGw12hsQnICmj36gjwJCx/f7vAl
	 7C6DC7orMLf5iswgdSKrNzxIylTfGiJaJj8d3jQPbWNDaEsHMzvGjRR3AJdVFFrIdN
	 yujH3GkT5P4k+Zk7Ge/KUE6Jp6sC7IA4W/Rgc0ewRNIXJoehtimC0DBlWgK1pw3LzL
	 K3mOFtEMIHBUcAqyzJhA16NYHZvTEt5OyWD7uPOKqkitorRpS5/4uSlUhFttcQj/Bo
	 fge22Y+z8/0OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93248E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173549435359.10355.15677101195180121648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be01e997d3ceb09b8b89e425374b9593e4912d16c177183bbcc58b364feb031
Date: Sun, 29 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735494353
