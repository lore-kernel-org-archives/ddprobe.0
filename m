Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484BA168BD
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786862434; cv=none; b=pmnr6/5PEKAvW20AFLBPHmN1IQ8e3Now2xIVp8VDcdRf3Uy5KDPXtO+tUD916cW4UEWsPi5jqsenXODXP1GAFXFalyYUZgFNbrirOvxfIyhlUcmNQ3OL6y+o0rLSdWl//OHsskdx9NObBle7P0l0lyIEi+wtjJP/9x8MuADb/wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786862434; c=relaxed/simple;
	bh=N7jgXjpVKVQ1vjfeQpbtPBuPZtGja6N9oSay8LeV8Fg=;
	h=To:Subject:From:Message-Id:Date; b=Hc/zBUxLEfiFMqhRWYJLcGK2v96FGdU87GRA+DLm2y7u5ZyDBHOXvIizg6peiUazD2+Z/XajNzuVjFFfqUNlc6CIpVeeuCUbzk3TDhP6iMQBUeyf59/1I0VoHHoAmHnDful9gOK7aACChxVItEqM2O3GipoJfmSl6moDFaHbloM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7UdH37a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7UdH37a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76D4C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786862433;
	bh=N7jgXjpVKVQ1vjfeQpbtPBuPZtGja6N9oSay8LeV8Fg=;
	h=To:Subject:From:Date:From;
	b=C7UdH37amjIKb3LkEeU/bLdQx8QuVQBy+tmqNobnQuLako1/e51yFEroWpKv1bCTu
	 XWBzeKSbyEF3TH1bGubZkX1FWwipAXkQgyv7AdxQMgO+jTBuVoI5r80Bvlru1+1/zb
	 pjrG/aOMxV9ckK0b2gmqOOaGRRdYzsdnxTkA1merNMzJTbGyRE8RprQuP8yBoNFncm
	 webd9tQ/RLigM+C4SGTjGSiqd2JP5s6pym9f/nU1gp3pvjeqYarfG0IdodlrET3G9g
	 I7toT+1pGCSGbPdsZsJEeWrigMhUQN7As8JUjr9Ksi9gJYWihk07NgWOuGAOSkpA+8
	 z4tRDiAgBdjKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE9EC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686243368.27891.17507434415842520261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b1a4a4929524b0617c8dc9104c0ecb97a46c0cb158624d30480038e4797dfe
Date: Sun, 16 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786862433
