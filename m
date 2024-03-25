Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0C984A2B
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711409897; cv=none; b=Xm1CYctWVDyuDBi6OtBF9clpZsJlmbE9wzTjn6n70O1f/0ZonPq2o2iskkJxJliHkdEkuS7YlHauUUJ9YdCGJlNRF0kkjVJQZ+jV/ltfyM3fc8B7cgbCsOzqsrysO0+5WezYIIbtbOHvapx+DrBQHrwVISTAeabnelNDZoJiydk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711409897; c=relaxed/simple;
	bh=yilSbDoveJlEwFPXI7u7BO2FrLSn0KHDJSHCU8eXL9w=;
	h=To:Subject:From:Message-Id:Date; b=C4RRQGART180cyXmzoaXC9k+BScPTtOOZruiQnpLAG1BdkowKDDbkTLvZbeT4Q2hCyKT9hIBLddZkSF2YsBVOp7iH4j94T6/QUE2bYEzFmvsihqWgIGBa+uKYwoACn4ZccBL9rEMtAMTHC3pZtZZEHBks8tOUm1VkODVcE53ZVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRlbK01N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRlbK01N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7E4C433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711409896;
	bh=yilSbDoveJlEwFPXI7u7BO2FrLSn0KHDJSHCU8eXL9w=;
	h=To:Subject:From:Date:From;
	b=kRlbK01NeuRFF4DdZaovEYwXLZMkBMgnsoEgyOercJP7HlcYt/3dVSeak1tA7vfs3
	 MyVTqvE2zaF6yj2/OV+DEEITOcmrb2AfNGukD6XVnDxJymjHL0EC+gK35JvWlhF4Fk
	 bAAHtQ5Gi71FU1ZbwdE4zB6bmdG/AHT/anIIQazIdCqB6jFaq5eLwqH3RkioA6nyvP
	 s5rqHW2svslNJYhQRrlNT3rXXBynOVpATM0Bi/6Qvcuy5YLhZoxat2Rf9ijpX1p6BS
	 uLRDq+D3d3fSDjTX7VrX30eHkfwwAXgLcCig4RnwAD4hkEXGntlulJ73YeT4iaLswM
	 a8x+/K1/Oi4OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B00BC54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171140989651.4551.15252168603288763451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e61ad8501a80efb771b78f4089941f631ca44a3018798fdfa89d0a8fec1bf83
Date: Mon, 25 Mar 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711409896
