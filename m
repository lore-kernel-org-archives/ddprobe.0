Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677B11DA30D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719960323; cv=none; b=OePSrzIzmqNp6urjCGu1EPkoGi/4qY6GCXdqlvFC55favSEMjkfYOi4DP5Iam9No3udvtJl7s5sJG71M5ep1kX4ilBylaBMupeAjK9nvUvYqxOPKmmPVTt1dZ3CfEh8U2k0ZeGAfGvXrlhQ90w0R3TpqWLAwp7thjhk5KX0T4N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719960323; c=relaxed/simple;
	bh=0kdebW2DAPecCU5ftU5GnyVj9MsbbP2M92m7SXDuMnU=;
	h=To:Subject:From:Message-Id:Date; b=Y1/gPNajQbptv8MjybY6TT4ix/4g43WLKkIXU6+oQWczZmlJR+fvc6hf8ICsv5HqruJq1rckGZmFWuNevBlL2GdV/fgtWi2SGALrghbSDlTRDH5zYQ8QaEDjDOOuo0VfytZckvpMty0UnF2lvRn0qU7pK0XYgixon4RfsnCPwfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyf5Gmtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyf5Gmtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E708BC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719960322;
	bh=0kdebW2DAPecCU5ftU5GnyVj9MsbbP2M92m7SXDuMnU=;
	h=To:Subject:From:Date:From;
	b=iyf5Gmtg4rHIMF8NIi5vc2AR89dfxEmw3gORWxlJELmxWFN/bWOGsG2IVrzmEiO6G
	 n2jQiuiD7esNYt1UUEs5Ln1NHK8tMyKjWSbgIHY+nFtAx/AOgSug/iqc3DfwCV5FE8
	 dAOJuiQjF26XhesIpllyXpAEnGWYx+BAo2e+IKFOTfTIVQ6JhsIPalKNSMcfWaxrnz
	 +xE0Sv+zZheyCYC0oXOUnw9g2VtaAbA39rI0Ex4NZFXahx4AXm0rZAXyjnUPtL9A0F
	 /c5Ypc16Mta/UqrvNgFTg7u/IrKlllDcre9BvHc3kphbQjJmI4BiGrW936pdq+uDQi
	 Q0VYACWzJDoVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D48B8C31D97
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996032285.17378.10405651744231195228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100273904c6bd7f958be15298d2c379bf12126f5c39647b172ca158b27dae662
Date: Tue, 02 Jul 2024 22:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719960322
