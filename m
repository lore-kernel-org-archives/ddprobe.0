Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2326E28CF75
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755338994; cv=none; b=oLkQlyXjK6i8X3YvEbXJ2HUufUIejSm86U0arqM5rWbTfpfkRU1LcGLeSWsK7PEpbD80wZkqW29iUj4FpZPwZgvPJIM+BhJdANpsfoStgJ3BdhzHypiqYEUXD4ETT2Tky6NjR1TTRxFXetjx+EDLTzSezg7dYqDjXwGyhT5SMbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755338994; c=relaxed/simple;
	bh=pc5Iy72t/RkSzd+ZjVgpbsIuAHF2nB5mi8ndBOjuC0Y=;
	h=To:Subject:From:Message-Id:Date; b=dB5jI40Sbs43NNnJV4tnNgg/CiQ5KwR4PmMZ6CPFk3vU9YjEtukk5VoIiKv+Dau8H/GRsQBj4Cg2tVdIzBLFyFPbResPKbA+sMeRlBWBrXyw2bm/5gxcHoWoq8jiCFBmaNTzTwbJ2DLNo+CgWhFmsP8DIjRxPl85+8AWxcwauGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBUOVYS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBUOVYS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AC2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755338993;
	bh=pc5Iy72t/RkSzd+ZjVgpbsIuAHF2nB5mi8ndBOjuC0Y=;
	h=To:Subject:From:Date:From;
	b=CBUOVYS0zq6K1IV8kOM25mk6v+1jAUsx2nYCS0hrFhJCYPjQ39sXCA7mohHWLLTEC
	 D43HHNyNhEcg9ZcR7AxNkxWVTpDb73x5VD2HJpIUF0saOd8kU5G80Ma98vM2DLfRRF
	 erEr3op7vRGHOzoEJNRtfubkBcudAF5L31KYlvw8XwwKCDHAtsFExfsff2E4O96xXB
	 8FcECcMbJjf1euSlT1ZNhgtSIfal7HgLSaf2NWnhD9PxbpJr2t3L1KEWQdRt5Ed2Ea
	 bIef/h2xb8BEfSjnKCgWzrmImVp5ZOoKuSBQExOYGXLaUenIFagOc7vl1IpUT/+3TX
	 kwGYejDd3pnnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE9CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533899358.9400.1752386178706460526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a3480dda899811a66b09ecad90134ffb5a0632461e11510624ce59bcaaf29a
Date: Sat, 16 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755338993
