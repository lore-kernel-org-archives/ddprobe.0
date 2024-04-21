Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6339A38C
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 05:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713676223; cv=none; b=EgFvVcEzk/94kxO+7IssQD5SeLOT52laA9vk7G+YID81LKDD8hzDJVeOn/Lcn5Zs/AEElBnUks6fIdohbL0q0/j44JvVY7aoUrm5IETo/jUOcDemrUlaofE/NDWpcIFKAditnx6h9uN3XXENoHsYRuLRk9rtNwLCGs2JgOslPY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713676223; c=relaxed/simple;
	bh=kd0jfOcoLx7tkepxhx60Ws90am1ivynrLPPqjJEFw0I=;
	h=To:Subject:From:Message-Id:Date; b=PHWwiVjOffhst9t4EDnPSfH9YutIPBCObtHH1w+iT14TkPKp8BJB9E/mDT3YDBnJOtqc7fQnv+AiZkmcubWN7hDdZOGa8ls1BQNwUXTYLFmd6mtpim4F6+0a47+Z4yopXZZX/qVTfphoaUz1YJLoRJL6r1Lx9Je5IppLoQXfXzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcwqzYxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcwqzYxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BACC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 05:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713676222;
	bh=kd0jfOcoLx7tkepxhx60Ws90am1ivynrLPPqjJEFw0I=;
	h=To:Subject:From:Date:From;
	b=AcwqzYxucrsVortsYvt0IIiupWRJaYvKpo/gvEH2AFUkJev46FIlSnv55XecJTopM
	 9tlgMEloRFTOgsaItjZSyEresK+3IvDKhdVdoUhJc4gvSkmrFzhqLXu+4wIZiHceGx
	 wce7/CFTOnVMhXrf8N21Ls04jec9DzXNacC7rzwesIssT6ttMUTKh3mKVOVhVu/gqb
	 2/ZxqpkURD/2uowQQ7GKNyCtmdopJp2I57sBrKLV0k1Ce6X6S6xjX4sg8MocdzrvmJ
	 03iCG0V0ehF2Ta0UeNrcNlEwWsMjGqXOjATVbq0g0tLL4d5Vizlnwki17xuTo3h5oo
	 3qHlnNjYHHuQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4089C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 05:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171367622276.30817.4811958040362715483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed32e76cbc31f3a929ca52478e3d331852a1d57bf3ed9c238a57cfe081be185
Date: Sun, 21 Apr 2024 05:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713676222
