Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1837F2253FC
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777880854; cv=none; b=CqOEVuMRIa9xAxpjcg8LTpFzLs+5py1DYlNpAWGcuUiRChwlkOuYxifllOo4V+eivGTRhz5BESFmo/8oH8+bmP3iVQ8en1Ns/uPgcxQ5Y5fNHfRIFZhJZUghI/NUENRSzc19+wj4VBw4L64XvigvJeyzBIi/meomOoqCsdgUfi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777880854; c=relaxed/simple;
	bh=B6/mkKDO5gt9YForebKt1xY4EJKgauCCTfh/Eb323/c=;
	h=To:Subject:From:Message-Id:Date; b=Na8xIWwT/vr5/d2CHoo/85w0fzdmGvbNTLJ80bBeuTVfH62YQx1ZuFMpEYUbvIX9OA9YkNmRmVmag3+Hgtpg3J3aQX0r1MkPlQvzsHgledn4nZc1UB0M6GHclAvhresA+ivtH+pNwfGIMdfKh2IRkvadUqyhn78YjVzjW/UWCBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTZGDkVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTZGDkVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD81C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777880853;
	bh=B6/mkKDO5gt9YForebKt1xY4EJKgauCCTfh/Eb323/c=;
	h=To:Subject:From:Date:From;
	b=YTZGDkVe46fppMoLlA+yE2jFfc6GEkqB0Z8Xw/HOUYNBVs/lNhm6cEPzYbiyWFJGs
	 AIYf3jVNIwzuz410CQshU/2SpxvXU2ha56C16fJpnYZSLkxH8JQCbhFrwRSaG1h8ZU
	 uWhy9FmXnSNX7jZ1D4p/bgfyLiJchfr1/OVQ1k2iZRlsdg6/YY8o0qq5/+9fxVxk1A
	 Zui3eNibrDFXi2+UBF5SxRXkuVC7NYA4379M75DCBJ+b5qLVQWwSCs1LvGsYUe+fbh
	 Xqw2IMKnG3jo8G7PCsdDS4YypN1TmSkuHUSFgL8S8lrlG9RGo58SQhzTKuql4CA03W
	 1kkkjcMSsI21Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF334FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788085368.18863.14433129610611938428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51374b2e5a1a5aa0ae6cced9dea66a8a6aa953b089aad18f573fbb75b00c30ed
Date: Mon, 04 May 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777880853
