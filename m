Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A3B3328E6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774535694; cv=none; b=nteLbC0aISz4FA5utvU6Ldeq5Iy8UhJmTU2b22WB7/uTDaLKP0qB1vpM9EBl/SxuFAZJmLNqwbfqUk9Eh77AISkSrmXj+/bF0ByFeUrfs1+NldiktC3dTbxLC3aiJiTAwcrbOPCiQoWWfR+PJyRw1wSWnv57eF/fam2nVCDgdog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774535694; c=relaxed/simple;
	bh=j0mRDRjFgX6a0iVweVqAphEpqfgT5eV31BEt4ed5tpQ=;
	h=To:Subject:From:Message-Id:Date; b=Bqg/Fb1Cl6Fqy4SW2sNZlqvM1Tig62KJsSjze9SlLrjLUJ0yCKb6J+sJWN0kUyLr13Q45yNtZ/iHziAxHmXmNXIKShjLNDDYUaSDSrrAjYCo+RaJe1e94gepxiWcRSsMGg5lspUtev13DLuZ9GgnzT2l83paC9jKj0LOvVrW8Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hh0micW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hh0micW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A4DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774535693;
	bh=j0mRDRjFgX6a0iVweVqAphEpqfgT5eV31BEt4ed5tpQ=;
	h=To:Subject:From:Date:From;
	b=Hh0micW0zT4ww6JohCMVeQCa5PtDmSraCWaTUzWRuVLhQpYSEfotJJggz8XLDzyuz
	 QPZ6u9O2gDCD75PyBPoB4rXx8t0zd2uQjDlxEhUt++m9TZU9Z9/BOQh099ubtK6+u9
	 M84MAGrYMjE3kECC3oPrlUvibHAbRqGs3+H4LGMaGrChR/jrlGqA66ZfunmkQMPW3g
	 j2adKleHhA9C0A2uBvo4TlK3jelSHWtg8rXuH0ca+KCSEZBm3bm6fhXuIRvBX0owr6
	 unzRLEsg5o71aIZp4FdZ6fgPs+8qSpBQWiMn2WrQWSbE6vCasuMmfkx14HLkPsXHCY
	 mZuUeuW9UikdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D4C10A62F3
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453569358.6355.16890643405033702023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c1ec4d1e357e77798a3df6b3dd00a4a27d2f80d02e34f9922263fb7a9e23ea
Date: Thu, 26 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774535693
