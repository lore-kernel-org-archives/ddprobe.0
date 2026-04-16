Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388C21DF748
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776299854; cv=none; b=PYoJBiC2IeXLFhA285qV88YvlGZWRJf525cjz8fLlXwxWnR8i6nZtewpWc7cHm25tEYR+IPucbGPy03mGHiDgcn2cIUL7ni5mrvSAAjGqOiG9NbDvVY37iWVtpouHvCWWX68VMVLNJICrKQDwzSgPvhyuVh4qBj0gEz97Ze4aUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776299854; c=relaxed/simple;
	bh=HVaLfGGApelrOUKvDtG3r0GUUGtauSM3v08M/m42iP8=;
	h=To:Subject:From:Message-Id:Date; b=DrJ2FlSHN91ewFE+iKEB6jioyjVOSHQstp5zvcFl05XHtqANmINlPvjLw7z6d4mevpHF88P00sybhOMaGA44FqilXCdD0eMCT1CsEUwlraiScnYeq+Pez9wh+pCwKE7RxBa67jyZRnLxb3+krkA4HPxT22E40ky0LyCvpcS0Hek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwyVer6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwyVer6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4281C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776299853;
	bh=HVaLfGGApelrOUKvDtG3r0GUUGtauSM3v08M/m42iP8=;
	h=To:Subject:From:Date:From;
	b=XwyVer6sS7ZY28lfhh7ASIcjrTr4Gl/gJIYVQ90IGppdUeVBFJ9FMjj94rH5bXZwA
	 gWRj8sTMJGGozfhhRNyIPp+nsdxowwNjGBOkyViX3HTdg+VXag3MCXzMDrRDorC5GG
	 ztmmO10eMPpC5QAo2L9fC4SNm04G8YDJPPXcRJwM8tJDmYj5uozPuIyi0kPxbxvHyC
	 cO+4i+hgXJm3m3eysoj/eTW6RVmomVi4wbyT+0OE9jd9DlTsSchK7v/4Clde1O8pHD
	 iUykcP+vpM7b8qiKGVopiGihRNzdklHf38fAgPpHUCGC+/p4CM0A2lNRv2qrQJzpLN
	 6frdDHWLPZJBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B7FF433D0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629985368.3844.18145034737713242888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be88668769f7f74da0000689c727be9d0bb09bbe240296d675efc69b030da07
Date: Thu, 16 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776299853
