Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119A67261A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777214254; cv=none; b=Zl0BUYLyLTKdDi8EPCRLVfRaieIaCijC+Ohi3ektjAD+Ae2qHrplBr3exMa6MQfDAjsBl34c1iBoW8s0KnuiTHrsoN7hz4W36aBzXo++jSbvl5R19oSvnHlH+2tblnz9jUak9199uOzRmyyOGZ67MuvmFNnonPpULp5QOXYB9qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777214254; c=relaxed/simple;
	bh=oH16v/2IzUnj/C1kCRThN/jLvJ8htf5oM+UVB+/GL9U=;
	h=To:Subject:From:Message-Id:Date; b=SHqOEXcf6ajTvChwom9D7pwg3QBBpMucPCOmHWdRpDoW9dFV0X00ZVzNhttAd80DIn8xWYhbXEVNxg1WnAoxNNonfwLt11NCN0dPU4FvfliGfVZywqd93orWEninRLht4AU4Cy7/BSPQEzYv3FAw7yBzAwDiwr6zI6I9KYq20Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDL1Q+R+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDL1Q+R+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC80AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777214253;
	bh=oH16v/2IzUnj/C1kCRThN/jLvJ8htf5oM+UVB+/GL9U=;
	h=To:Subject:From:Date:From;
	b=YDL1Q+R+oFi5pfXec9QLVMLMwXlmM82PoNU1lrQlepsXgw8B271DitBUIUmJjjL3n
	 PffiibCu9J9DKC1fzamJgDl/ZIydWwh0hOgIokIulEPYBXNpE1aZ14seiJO/Q+oOkm
	 RO7V3eIWrMlqKcJu/CbSBKHbvnDYRzpduDOg9+n3/9djFtSH1xxTfPpdrxRDuNjUSm
	 RafVUUwkKU2/Gh2cIVmrzdBVjCU/VlY8/LCV4QtEEYT9EdSOlM5adR7XLHdL/jEUMV
	 6SQSHHj3eaborsy8M1ffPrLu11h23rIB0wc5uKgzw6cYMOCTJ/2MAaVrv3U6boAwEL
	 IseCj5tD7Tysg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECF4FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721425368.19440.15201684732680268796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d1f5cca3adbd045242d203fedb78c27520119789629411964fdc9ab99135fe
Date: Sun, 26 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777214253
