Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B688226980F
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789935634; cv=none; b=MPLh46DTJBBGc7f5A2Et6N5S3y1uTvy/Y/hGd4beyHrNSUkXdL44ppZJUEG+/ravFz6HTnY3/uUFvLNka7DenCmXPvP+LHfjo526TfnIoPH6WtFlY/r1xHrdo3nIcvabFAhfRynLAsVyK2amIA5eGIynC0/t6IIjOOW8eJb+efE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789935634; c=relaxed/simple;
	bh=QWMV5dpfLL3q1bKq36c0rJG97jeozpi8/evqC/GwSGY=;
	h=To:Subject:From:Message-Id:Date; b=PZC/rH/oRYor3pwVsBPKe2zubIhW1J/Fufuba4oZDvXWJogA3lVWULlrazLyFOEjiqDmm/A8Y5vseZuA2My7FwGo39r3kn9rkhKdPjdRY46Qe/9SaUQ67byBAkAGqw9KYB1jzyaX84lfC6b/4SqU2vbCFRjXINO/77M7EqKPRoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifVA2t8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifVA2t8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB4AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789935633;
	bh=QWMV5dpfLL3q1bKq36c0rJG97jeozpi8/evqC/GwSGY=;
	h=To:Subject:From:Date:From;
	b=ifVA2t8xKPONcuM2EzmVLFksNfysVfUzl7LSaB5/XaasjTFAE/iWEiBbThEPTnZ5R
	 1bPHMjYrW7FoWZugOfo7lrolnGfhgwScqnBHxdKf/d3uFRi4g3Ppn9apXk/6991DUb
	 GAfSU34/iakl9qX57uGGKoXil3QUloQ0wkT3vG/ytzxnzuCd/v1IgJ9AoCUUx8HtC4
	 JpucxWPWazn3Y4cFNVmwWoFKzoAojsReYxhhkvJ0oavH05R5C7k6kzGtnK8DDipd2T
	 ajrCHryJQhkPIZyf8FH0+LNyy/x7M5rWUVGyIQWkESdN0SD2JFYFqoR/sWicKOkiRh
	 mHZJNkZSDVQYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFF6C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993563369.26138.13221575266305822709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c79dbbdf6de7bb2c6600d5949b102d197bb938f6b6355de5d056728bec4f1bf
Date: Sun, 20 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789935633
