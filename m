Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08608219319
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757127594; cv=none; b=UPYAJqTVlY8T5Aqxw3b54LLww+tDXTrzAX/QaEa1eD6bIuW0D0UhnrNr4j4N64OIftvmAkKDM07tfPj5I/722BH3HvcmyG6zF7T/eSBPj2JEHFP5rAS0Uvl7b4QmnnYpYiMVDuZ1GfJMvCksLRZ/I5zKaraknVkepZHbpmpmCQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757127594; c=relaxed/simple;
	bh=rjqwv9R23nUPZ490c42AtFWuIQKMbg22HQSMmeKAhCU=;
	h=To:Subject:From:Message-Id:Date; b=ttFdE8Y7YMxOLXYyJcuDWFNJlHoGvHVDwHJ+f0wX5Y1QYGOUktn0PIDYYS3ubqTLtkKrf/Z4Z8+5CNuO6tMcjmFd5p13bpzDm+Gm2ITyP72iyXV9d3Q1qLR2DHYLQ2gE02z4/5V6GpopM67HbrFQawup+HMZo8CH1WAPEqKIrhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwTdKmXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwTdKmXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757127593;
	bh=rjqwv9R23nUPZ490c42AtFWuIQKMbg22HQSMmeKAhCU=;
	h=To:Subject:From:Date:From;
	b=FwTdKmXuZ53IiQOVJr9Ls39NMrfSLlGch52RI15oKk6xFa6cNPAToP6PrW6boxhyK
	 2XyOPPSKPazxeTGVjqMnuDLa59cH07txB2xUDeRqiPQg2G6qKPcwLd7hsv9fA8Doo9
	 QMVPncd5Fi0MIvnaNnmSXDlJHGodMmzAPiTYisWr7ehvsQUFECAF9E60QyQx8tO7Bz
	 GUPsdua5SlBWXRxQQp51laW7Qm2LAWAAIRlDhYsd6zv8zryOFRldfaz/u/0HdyTBks
	 lc/o8zY7UmVo+9C3Cu5XRM6yRtF5pszpOUcfO8TMpwYturgfYmBOFRJfM8hqCXDt+J
	 f0tu38fLeA7vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915D7CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712759357.8139.12406854335500647836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330d4130a8d3a3ca8549e70e19a04c9886f9bc231690d5838f8be98c09972f3a
Date: Sat, 06 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757127593
