Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6451CD25
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722306354; cv=none; b=ns1Ssok8coP8W5szEtqYmtWda2z37utBoksAlI5/SQkWLHyruEyhPis7WiIwD6YgR5sDAkM+U5rback+l9XkDJmyuTuhhU3f3hMu3DEr0M/sncuWoh6gQgR3pqZeHimQbJsYQxdAkn73A5E2Zk6+W61Oz5CQXrbxwuFP3zW/ZZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722306354; c=relaxed/simple;
	bh=tSDDq1pJE6gFkNH3WG/vgSyiCT+N6fW7X6brpWWS+kk=;
	h=To:Subject:From:Message-Id:Date; b=j7ttl3lquXgKrfy3Lvs1c0Goy6YdrMZAl1nTxHdPuU9oj8kYhPJpc5XPtkhBqqJYqTmUxRF4HJ6pDmNRapBhk6/eFvXmWgol0cA1/GAkVgOzsDKtuqNSN+h6uHXidyL08qpXUi6MivjQNGR3DZiWit2yzckqK1aMvSmMIhD1jzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cwly/yaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cwly/yaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70BAC32786
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722306353;
	bh=tSDDq1pJE6gFkNH3WG/vgSyiCT+N6fW7X6brpWWS+kk=;
	h=To:Subject:From:Date:From;
	b=Cwly/yaJocklXUSy8Hoc98FoR4hAplyV5o5qQ4MRratNPMNoKchWiFWDcU1R51B5D
	 9EuxmC4mDtaABwUudGtdnRjxiqGQxljA6VzcCjWpgsSK6LckvV0Fvp4oUJLAQZHMsJ
	 Lf7gmcfU8/iuWb+cfI6un9TQ1jfEIviOkEHdeMYVliEN4EjeonORNL3SJbrP1VBRa7
	 l/56h5waZdh5pSuN0bJKU01ohusmbAzgUFcgrfOwQ+6tLe8rCgJbuQAWNwcfxUvhAB
	 92HG5mrXFelbiFZfmN96KRDx/zJftG/NS6n8K/FJZhO4mQfzp9SazXjoCwe4ELwB/G
	 uKkSmAKGbVwWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A643CC3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172230635362.5205.17933115285098168220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f61d12bbfe8519510f75cfe3af305d1cc3f7fe53eca005092ae05522471c463
Date: Tue, 30 Jul 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722306353
