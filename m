Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05670386C3E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774943094; cv=none; b=PPGq9wF+/k+8tYrL6+VXaM1HVUhSbeVJiFg2dH6aphrTnoh2vK4JigOTTU5kVUjcKgK+aC9ceEJsTj+rCQoe4Ua5/ScSvUkKFnLcFP34aA2/T4B2EaL4NDLUdkTdENWEAiq6vupbw2zJwRIflr39wygwEimhKh/k084ORxnIS04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774943094; c=relaxed/simple;
	bh=fJbl38cIaUmqLjvp0cCMle59Maw7KLrm/jQw3sGvWxk=;
	h=To:Subject:From:Message-Id:Date; b=gd8eK2TtIKiDTLL6IHlghQCEoTv5uJdpacFZCFF0mlGi0/UETwAM0A6itcrdfDTs/kBdMiLS/PkkMKrd2XLH/4ZHu6LFKlU0lNu2pAEPw64YEAXiJLTTbuMDBf6un5DP0K6cb1/9FX/kk47u/zjdPuTjH/35EbtRTgD5oZM/cFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYSZ7XjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYSZ7XjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A4C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774943093;
	bh=fJbl38cIaUmqLjvp0cCMle59Maw7KLrm/jQw3sGvWxk=;
	h=To:Subject:From:Date:From;
	b=rYSZ7XjZPGfDlrsaAIQ5RkkId0Os/+bHczYAwck+9243ag4fsFupkzaoPEFXhqD2v
	 R8R7MoDrmm8oRoaBAVZHNsYr7qvUos30pELcd5xnDW+NgsRBwK0Do6NkWKYdMUXUpi
	 jrN09ZQSEezYsICVUYiS6pu5c9b2DilPh3cz1HHKuBgNi9HxOe8uBIuxW99p67KVYR
	 Eqjdq+lrjWjJuNdcwkzGwzZlfs7b8b//Ib5r9A0oRxAM1ZfQ6e4qNLbiiPp44tXqzX
	 8C8JO29GTeY3/dwFoAxexS26/ZJcoj/9E2qrU41nWvkrKFuX87Er//8bVR8356+p1T
	 h36fC4qQ3G1TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C5FFF60DC
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494309358.23215.17042302149054645273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c867fddc977d965eb9cbfcb6684d4a727c688dd225a44f03868c97f571e1e0
Date: Tue, 31 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774943093
