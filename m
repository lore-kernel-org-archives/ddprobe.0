Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353C34499B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787662834; cv=none; b=udo7S7aRojzDeLR3eYMRHlN9HeznD2apFlQaskRbtXw7CferG+GWs5AqNepyVwGvSYm7PyHQ8gSE/0dI6zSwl0ZWb9sIYckaTZ/0rA+7fJ+A/UxL0QBdOk7yiKwBnUB/cKfccxJTt/a+sB2NzR55ynH+/GsQ6u1a5Zj5Rek0vBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787662834; c=relaxed/simple;
	bh=D/8e8yxnf6utHuO9EdOpHknJjtNGRnE37tucouJLnM4=;
	h=To:Subject:From:Message-Id:Date; b=pRqmUQRLmR0q4HsV1FXsRpQEe/OtOOfqULpGNR501lEangL3YjCmFtvMBGr3rnGUUCLxHRTSzJJAVU8EsLZZK9cyi6jyCAhfRuq+r69nFRwriA515oKJ2Ai/sVVrNeXyzI7YIJIpM0zrPkugdiGYvxDyNfc22XH+ls8UWSrcemY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAr1VdhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAr1VdhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59FDC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787662833;
	bh=D/8e8yxnf6utHuO9EdOpHknJjtNGRnE37tucouJLnM4=;
	h=To:Subject:From:Date:From;
	b=OAr1VdhQc70WAFpHmiviaVxsLlOheoVV6HdB7t3NbSNpX65Yv5km58blvE8i/Utjr
	 cQ945tjko2lJB8s7tHJloRta9v238rOZ5sondjbBV0S4pqsAuajlbOt3exFP22huj0
	 pE6iwlq2aFReHruIGQAl8gya/Du2JyHBv78bKXwH1x57BZ9mOFpp6ep7WcKJENsZwy
	 UQmlmgI1H7IFz5mlOl5/v4/SY23Ux3lv3KsqSCwcQVgskU5HFnGUd2hL1KcX6mwzcw
	 t5tUau6U5EKFGEnPvQfEHqlp7Pz7u8h31dD2u5acmuiq702r4TpFdxXcC+gAKAiYbd
	 Yo6Diw9+kvrVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E9BC61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766283371.26222.6139013887243046970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7947bf252d8b355763bae91f485a34e0ab561d594b28a120e9979470baf4a4ab
Date: Tue, 25 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787662833
