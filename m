Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D6A30CDA9
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757349594; cv=none; b=u9Ncc8sFGNoFZx8ocBBh9cZn7llHCPXXOoDssz/lMocaWzCqCwSDToiH89JkOJKDUXxOdzjI/oo9dt1a2LDbeBA0pAdK5L76IT0kq7Eaqi5Nvw2rgLUKCJUVd/07x5lsv0CADy0MmHuBfnhVzCuZYYyo9K4mrjG6Ywpsotw+tK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757349594; c=relaxed/simple;
	bh=jvmc9U1BGpp0anuhMwCn/idULxNiylPc04JUGqzHRiY=;
	h=To:Subject:From:Message-Id:Date; b=BxuHas5FbN1HKewtyCXqNdGlOSlw5DCBHwpMwU/jCKmadcC2qU5G5QxaTyxiKum1Zy5lYMMKSAGHvFXWTJnqBnk6e6Bd4Mxaj/2v8FoZJ6bh8NCoW4hmy3ATprXmoIvG7PPBsxMoMl4gyV/9sM/Om6lCh5Tkfm9AtZ2gGohYI+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nL7eILeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nL7eILeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11DDC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757349593;
	bh=jvmc9U1BGpp0anuhMwCn/idULxNiylPc04JUGqzHRiY=;
	h=To:Subject:From:Date:From;
	b=nL7eILeNPrMwvcULYX3KcrqNdPrUiILne+60WGiuDTwUdCbh1tHrNPopY4iufFHmp
	 AEV6p5agg6JVPs6iMQSfKIH/XWM5GhOklZTXikNeH42S4kYpma3Gh0jMCeVCaG+lY9
	 420JynnBlk69K7xGge7XvCJ3DKsIgSeplVBFm25jgMvQiCF5sIJQmMXcBR6O69tqKC
	 FXu5kLLGeY/kv3OgyUTt8x+vH/X3/pQkTT2/wbKcDGZJD5cLkqOE3Nz397IaAawxsq
	 EQ+Ml/iAzr3Thqy3vxpAW3mMvtM18QsYnZd1gJd0CClIvK4j33whaLbrfk2mmW4y+X
	 2KBtCw8IPL+OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE9CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734959357.16529.17800056000315791255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50f65c8cfa2b62cc90bdc4e417a51cdb7262d2545ca3f6e6f7bf962e448af9a
Date: Mon, 08 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757349593
