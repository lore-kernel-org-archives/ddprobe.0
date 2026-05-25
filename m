Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A78E234973
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779721354; cv=none; b=Qmi0LGXYFX/C/USH1p/7IPzyXbcA+0tq0cSjqg2FzCl3yaAeS0RC4oo5/uVhE0T1X2m0/ehuTjRSoqSXtlWTu0a42wL+mpn88GaZGfNnnTSuJXGCC7ocMXaikILZ9h7Ry7HVHDlqZlcp96DB4zee+rQByTANCFlWkYCahgfT4wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779721354; c=relaxed/simple;
	bh=kVs2PmPI9sUAdmbYy5/3OSaigr2lVFlh/fjpqaoYr+8=;
	h=To:Subject:From:Message-Id:Date; b=dJvUcSrvD66qTN9XVTxV3tZwlM2henyB283TY3QJSUi9CdwkNL3dmfyo4AhFIXW95gwQL2pEkJSm0YqBfFxqzrfDPjfeEX+Fhd/YbfaOLI62v9teQQcOwDNNWHvohelXFd1iuIs1X1PMz3plBN1N7HptXhumgC3BxdPDjic/QVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYkVvDXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYkVvDXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F43C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779721353;
	bh=kVs2PmPI9sUAdmbYy5/3OSaigr2lVFlh/fjpqaoYr+8=;
	h=To:Subject:From:Date:From;
	b=aYkVvDXvMXxIjbGcfu4VumwXiejtnnZI+1yS39DIHafeXsdOWEy9D2JxLsTRFDe/5
	 MVzZikH8oACttfWVcvat6l3aYmJvT8ud7kTmbD/u5gwUCnwsnzq76Qt3PSOb8v+BZW
	 aqFyuzO/uzYpQv6o2beiXp6p0ED+fYNeb6LKXee32oDsnubbd0IwZVYGJOWqI8KoW6
	 lvNfc1/38pyfi5NS8G5Th5ggXZ5L+KxVJoJlMi6HY2R4GP2T75126gIleALOfV7oi2
	 cX/0LFTms7jzdNhVYrjaapYgajWv2R7HSfPS0It31Rsg+Wu+kzNm2yciHhTkh8a2dk
	 BtvaDLsyc294w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE667CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972135370.13588.12238042571452031314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9748a688ede5196f06f644475c10873050e14f98ee961467bb7d37c6816c96
Date: Mon, 25 May 2026 15:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779721353
