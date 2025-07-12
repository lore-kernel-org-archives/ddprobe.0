Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C630118D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752333593; cv=none; b=arqUQjsu/vXnkD/735d9liL7dMhMebwLI0aD8643m2EHlDJXeg0eclx5HkX7OgfftJv5vOeGmbvFIAAZHbr+RlTHR8ysyorMPiasrp8CD3qdkzkTypQ9jQ9aY6FknDIq8zim3GeuhuBtd8KCLui0eApCQn0YSP75Q+kwki7tBWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752333593; c=relaxed/simple;
	bh=LEbcUGl1vWyo6t1VRg/pZN4MCY4iUb7I+uaZf9yr2bk=;
	h=To:Subject:From:Message-Id:Date; b=u6CzzqLQcy5bK95lcrHmsBUxiByk+F5zXV2AXQFTv4clqmtfiLnuUpPKT62eOea47iiGMSlKfWq/kU4SHh2GNuGYDDaJAttzNaDNolab1+yRryoKqhm8Lo0pgZpMTUxuUf0bdLFekVv3Qx6T/x5z4Tryvt90IMZ8bnKMqWwDeLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9jYlbJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9jYlbJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D49FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752333593;
	bh=LEbcUGl1vWyo6t1VRg/pZN4MCY4iUb7I+uaZf9yr2bk=;
	h=To:Subject:From:Date:From;
	b=T9jYlbJuoOjeIjOu8iTIr7kqo/jh/GC2PTEkrXPEdM2nX6p7e8V4cfxhCmjGU7aHb
	 CUBqubaGWo9pNTDrl9I7/13UcRO1Q23eeIIIrgAj4iDMuTMUdHCV8rakDI/8hZywYr
	 I78dDXDVoSPwWGK5/UNy3drSc6oIfZaOe8GTiCYKLxgFKeC63bU/Zip9l9bwnAvVD4
	 wysH35mGdxf9/+7qD7eo1kzKuWVYKfJ5k7DYh9B93EHamFL+piG4bq1O6sC1Nbo4GP
	 FCASMtEak/D8IHxeaLPVP+IpO3GSJzV5aelF94mB9djXzFmdZDxzGii2BaFlRBiaJ1
	 osvzgp8XDAZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3AC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233359357.14927.16903500820699776223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6594ee0f7ff2ca009046a94692d243b0b03b2db3695efd52b5fe5235ed8a5dc6
Date: Sat, 12 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752333593
