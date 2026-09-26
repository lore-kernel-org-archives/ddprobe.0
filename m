Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644DF29B78D
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790388634; cv=none; b=Uv6Hm5g0OnVCc82uGZ9TOA5QfPGeDeEnIuCFXL7DOSQNm3Qs6RfuE+gPN/ipppljbs6zDlyowVYFJiqKII3Kt/7atNhYg9wjj3ja2ae77yOeqWrs0BkD3LhKhTNu0834nidE+NC31GmZCNdjO23cngK7Y5tVimou+LYy6iP50k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790388634; c=relaxed/simple;
	bh=RFEGGuZLIJqN8Iyq0OMsz8lWyxSnFn8NVuVJQxcMXqw=;
	h=To:Subject:From:Message-Id:Date; b=pruWqca/2WuFQucxoq87hdekwzqqBag8RtD9qyd6/UyJ8Pxoalwn5WxXqafQ/dJVVTS9tqlnVppB9iZYkc2q9EtA4JAk1zzv75PftBw17EohIzsL8jzBfJ343ch29QvZv5TKG5krRGNv+jRVbgfVVUhqbbnkvK8ncEQ/Rc8uBLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8OaOtNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8OaOtNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27FDC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790388633;
	bh=RFEGGuZLIJqN8Iyq0OMsz8lWyxSnFn8NVuVJQxcMXqw=;
	h=To:Subject:From:Date:From;
	b=q8OaOtNq+FvR1dHahVEPE5wmOU3v8JK+fxdJjgOX/itPtOBfLWwWKPKPDz/8PksKE
	 YjJL6sDsvmSVmm+Gxh9jpHhKs52K4KHEOy41idiwMRrQSEMNS+DeUu1BQTNrMl+Hqb
	 0hitDOE7sPmaSxN0Ktr0kdoVNuXtj7m3oC5Z4Gwt2jmyAOZ23Gr90lDhidd/MNFlfc
	 0lgCQE57DEPDDG8Rr5+j15QINCpn7C5Xr0qYxuONtCWHp+v1IgLCsplDIcguqHx+cC
	 Jd6hZmPp3cDS677kndQxtK0L5aldrlpjznKtTqGeRkPgMMv5MGh/PVh8NyPOuXFAwA
	 Wtk8myFJTu/hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7EAC9830E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038863369.18459.12633377056924154464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e724662a8b133be04c8a77cecfb9736f3f1add568bac441e940f2a8fa7442ccf
Date: Sat, 26 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790388633
