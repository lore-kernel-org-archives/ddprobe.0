Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621C71F150E
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742558994; cv=none; b=MtHvBVVtE1Rev9dzhQP8dEMHLhxvZYn1FDQeTqhM+adtwVRVbvYT8PG3VRVDod3Xey3zX6rFJqj/6lP97SHrD73tRk1gjSNuUJtHy6WbNrAi4ggxiSyQQYqWSbcfMSKJT9kkfs4GSu8UNOwWR5URqASHe+ncrg00Y+yHS9dRfss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742558994; c=relaxed/simple;
	bh=yyy+aNklTqTE5krqWqvyt3kqQ8HiqEhh7ezcgx6wcD0=;
	h=To:Subject:From:Message-Id:Date; b=H4BguKQPMYHDmb0kaJUzjaYgKSwNzcdaIgU5yEnrnKcjLrFuGke+I1yMb6DnUcqqnJZNaMU202gIroJ1fTDYv13Wd+W0cH9ArqHwQD2cCl+AK06eCNBjFlEaORWKyTlLEUghnBxJRjNDCO71BWX80WYWftmZtgf0zXX/DTTI7G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CO0fu4pP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CO0fu4pP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA64AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742558993;
	bh=yyy+aNklTqTE5krqWqvyt3kqQ8HiqEhh7ezcgx6wcD0=;
	h=To:Subject:From:Date:From;
	b=CO0fu4pPy1FwLgG+bmffJDVwvOr3hntY6KdGlA+Yde/gZjnfOKG/vwZ1pxMxNi/mz
	 TXKpbFVRd7MENPBKm2E0fGurcAo+FAR4Bg5GV459XB5IwhkONRc2/CL5Qc7ekzNRM9
	 O5GyLQ9bz6WRxv4+MHYUMuuDytjPF5/t9z2t9PAxRMoYvST4JEDaBmkuM5s5SCqVG6
	 gsuxfcrXzHXHi93IWoItjSHUPOLkbV876p+8eRohmfswSGc9G6R+N+k84grSP3dmUp
	 rU09txY/Qbd5cRhxgrX5iipcHLrrxYy+4/EWB1DeCkxzuA7P/UbPPJJsVcHpHbE+96
	 r7+72A/hCfdbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0352C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174255899367.22912.5779279329136895945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9082e2fe8eecfe2c081e24d3ef60af0ac5ee7ef1030124b22ea4b35d82c74ae
Date: Fri, 21 Mar 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742558993
