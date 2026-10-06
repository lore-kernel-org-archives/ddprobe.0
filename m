Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACDE39A7F4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791313234; cv=none; b=nR/a+rZrAJTfcV8jV6H1zMEbdIdQWvlfjw/Xf/UdokwBHGwUSB/ALHOyA8mQcaHsbxjMX5IcHxD4paysSYf0P1o8uEzNFn4OtwpP9pDEhZFAtwGjcWny9UsH2rOH7YPXQSw+YgszQTX4/dNM7x9RQk7iHG7ATxFjLujVSZXOHfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791313234; c=relaxed/simple;
	bh=hMQdlRJNab1TYSY5FoGe4HjQSO4U08MjRagEd77jdCI=;
	h=To:Subject:From:Message-Id:Date; b=sMAZHGAL+OB1yNjhVP+BmHarLumSInLM5yc9A4AoZ7oJNYyKuH/DSW/Oa3xZHXyoyrYwMCHVT+IFkjnoapShFqeOcu40mllwsVl7hH9SXF8oMP6JZ5uMA9LE1duxEBdbmIE6pcWDEkUJxi4p0NEYRL5b6ORUF3569FboQudZpHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8piwqZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8piwqZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1460C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791313233;
	bh=hMQdlRJNab1TYSY5FoGe4HjQSO4U08MjRagEd77jdCI=;
	h=To:Subject:From:Date:From;
	b=I8piwqZbHNUU5zkFlmzlS18Vwuv/WoC4Ysi76JeBZusGcK+wxQD+Q72PZlXIkKoIj
	 9TH611+I/F0n9GInh+6EMgHW9N2z/oRBZBScslQFqsrkunB9/qHq3uFWy1cPMeMKq5
	 JB3L8OeYrXQfqNNPHWEAFbL0WS9E0AmZKMUJymgJEiFH0hsbP6m8a1fXq2C+VzwHn8
	 F5Wk+JqQchII/YL1/dq31wZQBftZswHN8AJVhE8nFTVVATP9m+uwYLkAH0EXvWyaUG
	 Qv+hxVcm/02tcjHQ1h6VwPeNzn3vcDk8LIEsUh+3/QhSm5Ymi3O1s1CgWFazopRPoo
	 SGbElC6MqgMKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF15CA5FFF
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131323369.30930.8905887422586919709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972d7d8e95f612f1d5bee0b4346775936220e52afc4bb9ae35c17c13e059c94c
Date: Tue, 06 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791313233
