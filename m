Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52597229B1F
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744781394; cv=none; b=ctJK/rVn90ZdxixX6X3vQkZEbtLEVb+Lo/zlzwF+H7uKLXsbRKN+jCAggBGQLG9MLyVeeAUXgeavtMyoeN0n6moplTK1Qzb325CWYxOBf+bZfaSmng/yKhXR8ssabaP2firdGGhfeHdBSukwo6jIp4zHOEaJe9m5sdoeB4Sm2F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744781394; c=relaxed/simple;
	bh=RXKoZloF4Ru+2XCcOby2O43+MONYqpcHelx4GA5bnI4=;
	h=To:Subject:From:Message-Id:Date; b=OVju6hQ13lh4eu1j3sT1h/TUY2sfVc1MGBVNTb4X8qwXK1l2bq7+Mq5s1onmou3r/G/9fFp1AALoK0/FJo3femvlgLM+Ej+1pn5L5OWT944tzt6UOuqFH1n1lLppq9b25j4x+FJbxRCIdsqT89Cp0c5i9pxG2bFvxvj7Lhxkpx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLeGCeuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLeGCeuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C54C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744781393;
	bh=RXKoZloF4Ru+2XCcOby2O43+MONYqpcHelx4GA5bnI4=;
	h=To:Subject:From:Date:From;
	b=nLeGCeuFxOykpD/WBOT43tc/c+CQPNukm4yzFy6M9hBDS7GEECmELzGpG6LEbo2kM
	 jtVUSQ19udvc4AwMYiZY6+xFvHV1jdVwlrAf4sd9d4kyttaMEh0Eock/MhktRaXrl2
	 vKyrzwYSsuHKxLVFf08ehRTaSnQdxqNQOk6hKKoso8IxEYOr8azoU1S9YLT+/Rp7q/
	 9ZnPgZW/oXE5OZymqSZLtTTEuLDyr5Gh36x0+H7VU0bCnocsYS/8sSAV46xP83SuFs
	 WqLAg0/ac0CqDxDRrxV4CnLi2KyTO172qPGg8RmpdXzitOt4oKzG4OC6sDgBzIdr8D
	 gpojsgJLJkyaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B6BC369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478139358.22667.6327883343826452568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb500395c937f4b09a3811ec6f98c0b4ee5caec1b7d9ed6b73e18dd0a5b9d3f
Date: Wed, 16 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744781393
