Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2757317704
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760518194; cv=none; b=cbpEVB7D082RngD0pik6PqC3Om8jTNMT0dmWqvGmi/Pur7kjZLdC5miqBfQ202ANT2MdBKlkyd5uA+RY1cbFq3cDQKcm7th6TlcZ0pTWCRrgj+dvRF5QnS4dXo1/gxPmv2Zw4fDogzsx1JOwSmVrxPMumLk21sgPCuIKAKhw6yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760518194; c=relaxed/simple;
	bh=pfehTZBd2YKp1n3vPI4mZDaP2tbxEAKhXD4Yv8EeRWk=;
	h=To:Subject:From:Message-Id:Date; b=KpqdBjboxmOVkvRT9SzwRs/5HI7aON3sWAekAblxS+lRhrNvWWtc0EnoHoiV4XevInyIuAhhgPnoFIK+X9mECxznO+Zko29UpjmkSsaee9eery8WyiusStBhkp/k9RTaA8tMD8z/Pp2TyzO/HfbBh5x/20ZSeWr/Tut0F2axcp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AulAuQ8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AulAuQ8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3883C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760518193;
	bh=pfehTZBd2YKp1n3vPI4mZDaP2tbxEAKhXD4Yv8EeRWk=;
	h=To:Subject:From:Date:From;
	b=AulAuQ8oSGfXzRNQXsZ3+7wkVCZ7azn2mhqdiduX0CKvp03HS7AmsY8OVQxbAf+NK
	 ZzP9G48XY2jva94n9LMHD5DmJoSrgSmntMxQ37vZaTjx/pls0dNnY6c6RoRdtBYIKG
	 kWP3xytrODZ12UKeaFj/uTCKqAsxLNipb0kYssXR8XoRfruUAcym8+JchdwCN386J3
	 ffdhciKTtbqBRWraGHsRxL+xvWbjQy0WyC0BPs1GGlh+0Lh3ypypovMiH3mUw2RZax
	 Fx05uMczwfDreCXcLeqhAyEpELecl8QRz6+65K+34FQRofCIo3uSuWiT3tGsuA4D/e
	 q/0nAtqkszvVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D44CCD195
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051819358.20903.7256133970221390350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c6d06e2d7b5be8f55124a23ad1879125c6dd9f0914d93458389ca19a7ce784
Date: Wed, 15 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760518193
