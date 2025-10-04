Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36410611E
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759537794; cv=none; b=KryJI7drkb2P3B3IPPc3Tf3J1o2XX7wIHs3jjh6oRJrmhP3t2areFUEErQTeHd0Y2z3+/S5DwrvYWyhwtV9y+Foj4ay8NVBRUIfPTHg99oClgykYN1G+JmW31uv00vZ2OcBVT7xQd0stOWrRggnh+8hD7qp1oCJoSAHZERZAS6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759537794; c=relaxed/simple;
	bh=zVDPAQ2DtNATGJ6j6g5fyKT+Tx5QjWAFDSbH8xsrkoU=;
	h=To:Subject:From:Message-Id:Date; b=jWf3kAhMWznso2G9GwI8fbjYRmPARnL4+x8dC2TPqdbnHhCUdKbOH/0oES6KeIzEqzHVOsLZC3Z10uEsZJjBaxsRFQ6QJZG9X3B1ZKxScxuGTM6k7TY94NDoNPQs25Q2Ocg3pikZT24iRoG17RJnnGZC/N/Snh7Sj9y5QwbOunE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sU745NJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sU745NJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50ACC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759537793;
	bh=zVDPAQ2DtNATGJ6j6g5fyKT+Tx5QjWAFDSbH8xsrkoU=;
	h=To:Subject:From:Date:From;
	b=sU745NJb7VSuxIHQuUdVujB5961iyLInCJYgnWsVrt4HgKZKNEsboTc2svvg50KLY
	 d7whCwdVblw/XQpc+CEp1FOpKN6oNGHjo91fCaiJKLAM8rnlRpDjCOS/6ML4HiYjXS
	 DJsrv6+mtwQy42+j0k+xT5UV7o7/IjIX1Z5AwxCZT+TIMsbofHwEK5lgzdD+XdSMml
	 YpV3o+al34CRo3bkFIHhbkFjIm3wiikZe3rjDuiuIfgiPqaRqCRVYDPxkfFLKelLRt
	 ZvkQpF4JzxvmKqwjPnfAVL4MeFcPZaigogUqfpUVwpTVRf9tjgz4KhPgeo5oHEL10d
	 Y4f9XwQh1xsTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90323CCA471
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953779358.14351.1692707904204853748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a64273ef0dc48f033de985d1cd87f919348ba430ead2676e42b0242503a03a
Date: Sat, 04 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759537793
