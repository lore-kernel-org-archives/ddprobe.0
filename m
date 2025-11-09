Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0334634D395
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762660794; cv=none; b=ARQkZgaRmv5olqFuz4F5L2SfDxUb8LdgTHmvrAzrfbRbLJOtt2gQw5v6F6VK1xnLcwCaa+TTr5Uf7btmdUQzb7sn21ee4fZLzvMDSl3VNdM0c6eZXyPSZlmbk4keuwjo0yElkrDu+t+AaHVHI+TBai+zDloOtKFYA/rEIap45kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762660794; c=relaxed/simple;
	bh=//TS7r5g5UqLXtHBW0Jq86hr5ma0fo9276aIVF2UoNg=;
	h=To:Subject:From:Message-Id:Date; b=IWRskncfSfiJLdshsbeZsc+YqeGNcr8gNhHYi+shr3+ja0penFgb5fylTN+5LmQYhCBk27c8lnh3fSnQX3L35e+qoL4bxCSwCx/hrzfsl+/5PlPpSlvFZUG5uOdk2hFtiQElEQ0wC4SZkuTcHIqP2RtCaTu0OKHrmUS8Y5Gad9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUa6ios+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUa6ios+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBA2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762660793;
	bh=//TS7r5g5UqLXtHBW0Jq86hr5ma0fo9276aIVF2UoNg=;
	h=To:Subject:From:Date:From;
	b=BUa6ios+MYXc4CNhN/nqsfs8CFZ24fyYwmpLKj7+weHc/43/WkpZSftOGKzqZ3MAk
	 gj96pItfpqGg3wyTdLJbDakc9fwBJgX6zkOJsBHkPLDFlanAkdh9jK8eJ+l4aqBeSL
	 xClPqORBEYQ1OfrbAPAfNiMChTJHLHTrwMpU5+bZtDe2GjbDF4in/f7mlh+y3ZFjcp
	 GzpR6gonLBEeKCJjCB87cx+gs56OEyeBbd4gMCD2g/xjF1VYvEvI2FL84r6v+8yZwj
	 GeYPXGe31TC1DGg/j2KAo1Bksfk9JW33EDrUcCp9ml0jEd+9EPRdGS3dCoxKHG4cBB
	 vYlk9PKIgU+4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E305CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266079357.15427.2452689020857939546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34cdb474a033a1702e10f77245230fd1f7d38a42b1f65809d7a47353d123c1ef
Date: Sun, 09 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762660793
