Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E9113B28A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720446983; cv=none; b=W4KlBfvVaVFBwUBUnA/jU4Lu+6WRhI/79ThMOr0V2sLBCvfLbAoxCHwOo6fiQ8pdIF1rnXxYirQ+5dN9Iss80VGH9uWu9SNsPLUIoJjKjhM0isyLfGbvDyroEWkGTkJj0MFSr94Jk2r6pL8/X7vLKRaXumu8DeWhRWSOKXCLVFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720446983; c=relaxed/simple;
	bh=J5jAhJPpLxDHqEADGuFYNH2qDEHGyKUuLa3s+86IQqM=;
	h=To:Subject:From:Message-Id:Date; b=hfF6gGP5o89GGvonwAS8ET18Pv4TCMFBPH07KDajrhSf5vvLLolkdTpwc2duawlYd8pkSuBULsSTHTofTd9JZ5KTEKgZiwgc0hu5DH+3+i906Yu4NOHPoQDaDE2XfSTQSkzR7I1Jphnru9RF2lpdcuZvZcqURAYtLlbtVO/z59I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLEeBgvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLEeBgvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2046C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720446982;
	bh=J5jAhJPpLxDHqEADGuFYNH2qDEHGyKUuLa3s+86IQqM=;
	h=To:Subject:From:Date:From;
	b=JLEeBgvwWA121FQ7O3Se+ESEV7vYjbweLp1Dlt46GizlvOZhV3oGMOEULfa7i92AA
	 Uj5CR5OODQCQHmKxS+4Q5k554gz5AH/0V4/8Jyh6l2A7xwQSxcGOzWjnpmIOzMrg9b
	 RsbUQIws4PO9dyCRRI6QjKIO8vsBdMEsoqxr4hWEixhMgRiL8ENGsCihT00oEDSqTS
	 T6t2xvaOmzDMn/miWDuYydPz9WvQDQBBiSIDnszyK3ONMg922LladyAd2hn0ViPo8y
	 2UV7a/8d4LRr2AT84mSLsCeK4X1GviwbxNl9/0Fdw0OfUV+gDt/wxN23okhG44MQoP
	 GxCghGNRZ+tgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA72C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044698277.8930.15050588342252357943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f827507b644f424e61e4bd50dccb4e45c929e9dc84d8c72db257345aef8070
Date: Mon, 08 Jul 2024 13:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720446982
