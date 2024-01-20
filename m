Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164C112E47
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705778897; cv=none; b=fi0OGHs0/cUboPdO1Fxpfobz++BKKYUs2mLHKYi6LU0zRXXVI62fBsUnwIUScILnGFVHveNq0TfGoXbbY4WBgCAjEoG+nbRVZBE3CacjQG0fquGxzyYa+kU/nOsb4RTTdttU9dUyVJh/dyxKPZckKShfLfBXZMKXTfKA8xcWFbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705778897; c=relaxed/simple;
	bh=uc4H2gEeezm/0TPN+ZkoxIGjds8hWxAMFQ8m8kfhios=;
	h=To:Subject:From:Message-Id:Date; b=fQLkhiLeckOq52X1q9UrIBHVC61pfVH+AWbe/nkux176/gjy+91jyo60BRpBvf8PCYxCjpA+JuBXDeFH8zODSUgtGYtgkFwVgwNXF7oiuO2XtExVWzRkPxyb+3l20ULpaffdWYxJpaM6NTppPPWj2XVMfztvrFmMEzSl1t+1gAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXWhf2wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXWhf2wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D54C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705778896;
	bh=uc4H2gEeezm/0TPN+ZkoxIGjds8hWxAMFQ8m8kfhios=;
	h=To:Subject:From:Date:From;
	b=TXWhf2wby3Ky4H7qOVUD4ijJIWEgZ5wXrbh2VVrkVhZiRkAD9Gud2Q3tjFK+3IYVW
	 J2Rbb4f/0sMd5FwyT8CkczdTjMfP0hMEgesjYZ61bPkLyClEk/SQ7qs9FJ8vqthEZ5
	 OOith4foMcjuS4hpe5Kezx6oc8nmMQYcvA7RgFTcqi6eAHL3sapFzAYrPMhpgVYCqy
	 jqMaxZN2dCjNdOB09B5lPgyS0xBH9tJeNmryjDDvsMteUowGxsaexg1DgaEmcC4JmI
	 xK0ZtnG3HgplbacDDgpnt+zhSUkjGBK5xAL5CjpQfCG6cA5x4zV8v6NfvsaaX7ddII
	 tpwF24nPEZNcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D12C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170577889636.11764.16935331766491311597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68d4c03ef9c27f5dde6a7092e73d91710e59c4d80ffab91fc6b5a8bdbf85138
Date: Sat, 20 Jan 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705778896
