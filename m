Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F4C2D6621
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760941194; cv=none; b=Fj1BUHoW49yyUMN4P28Q6rN5wRaq7lmDnFM3c26oGPdfLft95vyDc/sJUrS1CFNIgvwclSlI7kFNYARmmV4/4m3xIWFoshBMzU8/Pj0b0nQpL+48OpP6oP3flqYA1gynwy56V7xl7vykSPvX6088WTXQ8m78f0nfZfQ8SoFMIcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760941194; c=relaxed/simple;
	bh=Lpa6NTp4WnmjE5cyADmOrTMxD5kzAr6bQklg/ZFwK1k=;
	h=To:Subject:From:Message-Id:Date; b=DrkXOmCQ6/5B8XLzH2xZ3ttYjWDihaK5tzYd0ZQ4Znuo+9J96M1X8kzkOn8V75QPRIuaFWnVYzqQH034IEKtDmxnjWp2vswBhXK/i9jZSd55duFPtkncYTSE1nL1BWQKbcu4VM/uKOogFjXnHoPhY1NyPeBYOn7bRdSC7IAIa1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4pvMcyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4pvMcyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EFC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760941193;
	bh=Lpa6NTp4WnmjE5cyADmOrTMxD5kzAr6bQklg/ZFwK1k=;
	h=To:Subject:From:Date:From;
	b=j4pvMcyfNUP275eUCgNCImlXDuP8IHmFmQApSKLdD6MCpogU3Cnmk86m4FSKfpIc2
	 UJG7fiSK6kCn4q1dicjW4/VwvqPXuEZVQvBDhygWfeW48hFxcJVJLpId4hGBdRCBi8
	 dmeW7d2k9WdK1kf9AMYmfdXz4siygILXCuKWwoMAOyJCgaj58uDPFJZgd5XsWJUHab
	 sDeE7BGwJh5gPr6Gg7rQUHleWeB+GxdjyWPRss1lW6GznB52OZ0u7UgOI4LSRilaC1
	 YaIizODowUkSNYxCWFdE8kI9S8fBKCiZwbKlxWZzxdJO9o3Xb342dEsbqocrHdimyl
	 9HPbZzihYowQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB3CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094119357.12130.15697890872748548601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986da4bd6698af2a2970be6c84c8f55f380d8f49cd903340e9e2191d4027000c
Date: Mon, 20 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760941193
