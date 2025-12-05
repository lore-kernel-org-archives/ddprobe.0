Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C47278E63
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764930774; cv=none; b=WjgH7tldtzQ1+U/EHwJajVJ9LUPrfPgq6Sh5iGTeBbjUBJeT/29rkKSTqwc+ZfiO0d89AMm4jxhWSX86z0fUXf+mfn0JRl9x0PArCiZ45Gioa6vZAhLKAFiodXKCwXGFGBSZ9Vl7tY4k0Ivp7DVqvSkw8/9CqCmA2ze3bTYbl0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764930774; c=relaxed/simple;
	bh=jCfqip6mdYMhQ8Oq7gW8REEAFnW9n0qoHUIQwo40u5E=;
	h=To:Subject:From:Message-Id:Date; b=LiZ8DPvGohzKOn+egtW73RK4GVVEWaWvAz+oU4Z3CjEzni5o5oqoqu9zITiSWyjCWYYJDimtgiZP+aALmRKuXXLLD1PlgHv0WRSrjbzUwZi0uvlkQBGwuLvu9QURlJ2FIsCdA9hytpGHlhd36ZAif454FM9LMibrM+o6UROppzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDVXZQ/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDVXZQ/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7828C113D0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764930773;
	bh=jCfqip6mdYMhQ8Oq7gW8REEAFnW9n0qoHUIQwo40u5E=;
	h=To:Subject:From:Date:From;
	b=BDVXZQ/L11QahOgTUhKsNwGDMggw+SfroyRDluS4CGmH6IyD5/FXQcAmTvtmuWnjG
	 mddWLo3h7wQhax+rvScoRvehkpHICjzcDUnv/ImrejgXwZqSNZg8sYDtoxiXS/B4tD
	 ycQA0T7Fczc1Qo59c39wUDwlyAMQ+Rvj6FK6mPRkkAo0d79b+7PofOrJkQkmq4gSae
	 qqLeWvmtGBeSSbwlnn6CTd+bPlVH+ZYrTiT6C2KJpZ6CZsrnpNmV5psdHTLjv66zOZ
	 0NzCi8jqejkKlaXij2Ted8UJycDjT8XEbgOjsxwmdWw1WAxQGRwisaKLcZjQ/MKm6+
	 NboujFWdU+i/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C2D2F7D7
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493077359.19950.12867020804994402913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030ac90ef170eae0cc258967a200cf9dcd02c0ab41909c85b3e98edf86459929
Date: Fri, 05 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764930773
