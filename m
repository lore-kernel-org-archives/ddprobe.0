Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368851FDE22
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735926354; cv=none; b=cnuMYy/lK9QOBL+yj+8pDOJ+WFfXrg3OA1Rtuj/5Asq62pvnLrJjHMb49QgQHSKusn1zvn/kTqlAVxMGMOqjt4FL5mFqwZLBsDTmqGTiupTCOYDOH30K9//Zz+4lPbbCO+sMuiNHT9Bg/kBezHda+LTR+oyRVJb2+gQ69xQ70pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735926354; c=relaxed/simple;
	bh=vRH81FoqMXPulCGj/1XM7O4vkjPV1L/RV3g+/7wTlbY=;
	h=To:Subject:From:Message-Id:Date; b=XBziPipOZ6n7uJnOamRr+3I89sTwFD2Jq+jOnOthvKcEzo9Y3GTy+3EQA5QJ/+MfE4HvhtOm97lpbkpMhqY3ISnO7+GwmCH1FpIOiFg9lcDbPBeRYX4i7DOEAINUoEy/5igjZKz4JTqXPNP/JFuU3Dy/0dUvV4iyhcDpSbD4Vyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUPb8K66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUPb8K66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8223C4CED6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735926353;
	bh=vRH81FoqMXPulCGj/1XM7O4vkjPV1L/RV3g+/7wTlbY=;
	h=To:Subject:From:Date:From;
	b=gUPb8K66P7hSNcKb0ZI6dUfIqQwz9VIajgzL3GX+izyJ1srN8ljStwNw6+4jqc77V
	 qkjcdG5ehLfY7lppGwlbC+FaqyqlTwHnrENmzmxV/VANADrPH40Q+LF9M/QBt+9zrR
	 R6iI82CYQuOhccc8/0wXhBRKIyNTVHeI1oumUTGa0q4LbXlo2DspvPE0Qh2xzu1O5K
	 sG643/UYhX/tfXXy2rcHXQEgInrL+HLSpAb3cdBThoJ/nfMB6WAeoHnEUfBdQwEVEO
	 /KMJlGIsWz+WgYLi8SvQ00WkLOB0UQA0F42+n8NdMHx+N3Hpuqv77Pmkw2rr9S32nY
	 0ndjVgsa3ZEfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BEDE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592635360.28410.6031171669289044253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068e30e3c7fb2c59eb08c854678fef3e0ccd9dd07806d68793f33b0793ff717a
Date: Fri, 03 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735926353
