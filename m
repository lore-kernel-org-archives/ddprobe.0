Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D5F2BF013
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761607194; cv=none; b=cu9K2T8XF6cfzD81RlTJqt1oto+SpBW5HBhNfz6cbwSWo4ntCgT8ag5Jbh4981qa8ToBmQ3wukQ/tFjKJNhDQISGMNAhzzHG3zWtS/AiHG626L3/sUJFIxx2ip/gjlB8m/7gxL0wzPxrtnr1vOktSr219Co+DkXRQ2l8wiiZxZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761607194; c=relaxed/simple;
	bh=KNndPc1pFfUph4IQglq1oAXJqNIqPpumpBh5Ch0B9+Y=;
	h=To:Subject:From:Message-Id:Date; b=pDqmz3xF6b8AdfvbNXqab9VTGDkjthAQZr7UtYrf/+jC4JLsNPv/WnjNWOKXh8jolGfoLNT/bbA+pFNzTqLmvZ+83p93g7kT26zRDur5OplIatnPn/8yGituI6sTJiJTKikONl7EB28rbp5SUGzkyC2LRgFF8z3QoGHXhp6f1Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/l423JT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/l423JT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E1DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761607193;
	bh=KNndPc1pFfUph4IQglq1oAXJqNIqPpumpBh5Ch0B9+Y=;
	h=To:Subject:From:Date:From;
	b=S/l423JTNAxxZogq4djjsL5I08MtYIE4uvgKgZLz8B6udqMWLuz7FgBRX5UjgFSGj
	 K/aRjGqJzy5SlWooz+GJ5OHw3v66x9vETSvHvVhTct8XpG/0kPg+SaPUQcyk0QRuDt
	 9HnLLUjk/2janDUe9NHToAYkI9OtJblu5Gd/kc0NhaHjbyQPzoGIRn+HlqY3eaYUCg
	 XTFSJLCpGoX7dimrOtKlTmdHJMkPhifqi7mcnDqGjMCprV49txuy/i9FEIAGU4w6nC
	 GnyGHOrmOl+74GxcfX4vH1dkC8t20jklcQPMYl++j66aL6KSPlyCDdN2lTBOv2kTlS
	 4pUk9NCvueJxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9016CCCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160719358.31839.1266235797940852130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3e57132de8d5e82f61c3536299ef49331f2ef77d238309f083818f144982d6
Date: Mon, 27 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761607193
