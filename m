Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ED122A813
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757178594; cv=none; b=KG0stm/mrTGrT62oIqMKPkt501MsFEDhe7jMLZ9uo1h4vQ3nqXaO1fIrhVpxMTJNljfmXN0pt/eJlG/VacRY5zBZOVOnVmSiKoZZ10j9zs7eFQ7X6KJGUoBVAjgnNYyBhqPGIsIb3Hika1yGSzdu/GKA8z4HLg5IvvvG5fqia80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757178594; c=relaxed/simple;
	bh=HbAO0yTYZZ8nXh6jmg7aSQpxI641hSyWvilZl8WIQOE=;
	h=To:Subject:From:Message-Id:Date; b=SL/6dPXLh91efju1BarmHlDlTcyNaQFlIhdxen58R5Ya8lzqOa1wclv4KXqHedhvj8X2Q9HwJxNuIY36S35HmK3PAqF7M+IqKFs9QIt86M13bqlSfzbf7u6kTDFPlwktyhDAg9qPxnWgcI+x7NCCR5KGtu+la6/8B6iO26uFvXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUgZsL01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUgZsL01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42AAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757178593;
	bh=HbAO0yTYZZ8nXh6jmg7aSQpxI641hSyWvilZl8WIQOE=;
	h=To:Subject:From:Date:From;
	b=RUgZsL010RYqMTLMJ0AhnE6BwNoaOQGfI+V/ubOLEBf4qAPZtt7G3sA0Dzl3GVeZK
	 crDRpiKUXnDWSQv0v7qrNpW4Klpw94loB3QNeGztA05FZ+TOF4erfsArqxYTMJ5mQO
	 Z8E79VYoygLeir3uRC4ynbee6UpXiaO+w7ehLnS/xGYKivYvyrhn2/3ukWxjro22cB
	 BPx/TOB5r7Vhke986Sh9aD2xMg/E2afZqN1lU8kD3JzZWV8NWU2XGiZ4FwIExA7z5W
	 /22PgmGM5GljDDZg/SBVnGglRh0U1Me5yyNLnppzWAEb02NIXeT0lxxuZhWXF2tLiB
	 2j8EEtBHSSCNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926BACA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717859357.13647.7690848251591386158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2347b0b4cddc3711feffa7b1a15d31ccc60cc076b7ea4cc649845c51f5c8f57b
Date: Sat, 06 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757178593
