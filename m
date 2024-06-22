Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B0428FF
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719020543; cv=none; b=QicW8i4EYtU8Adz2QWCVdB69XMyQdmKXId4Q7j22ixueg2vNV6ETjG4LisSh8NjoLjcXmgOTxPYW3F0ESiDeHy5Sbxqk04aFOGS6Xwk7otGtfBx9EiXqN1C+S+TPW7Frbq8PNHC9ZrBJKKJTY4jql269ZmUGGMKWDZ+h2MJ1H08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719020543; c=relaxed/simple;
	bh=UxayaTEgsBVRnXoAS2ON3DYGUuNCI113UVT0FTD11ww=;
	h=To:Subject:From:Message-Id:Date; b=kgIfuJpDRqt0AaCAxAFcbmRYgYmTPQvYMyOxpp8PlCQJ4ZU4CvjAitaTBLhF3MfMOMbv4IPUk9nPt/URCyKl1SsCF6y8emIuHi25EP3CTfvpBPOW0SxlTfGSBd+e4fL8salC1M42bz9yj3alADKGAFcdhVOtPzMYTqeQ2tZy+nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGRwgEyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGRwgEyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9583C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719020542;
	bh=UxayaTEgsBVRnXoAS2ON3DYGUuNCI113UVT0FTD11ww=;
	h=To:Subject:From:Date:From;
	b=aGRwgEycPW/wE05q2VE4dzSrj+puDV46HJiaQ9CIJBqIzD/SXlhIjFe77yB41taab
	 C3oyzUI9CXaTKfm54byF+ZNHpPUqEHBPaGZcKzF64cHFbPr7Prm6cir+ceRgb135Bp
	 jEELcLLLqLLIqWf6yRs6gFpahY0XQIY+XO0D9SbbqWBowcmcmLOhDGaqmk7NTKfVMi
	 yhGZZmihZj3LsIKhBUkk5Kzw/CD2MnaFrTb6USGha+XUlq/yVp2eQVYYwjngSpGuln
	 1N1e9mdw5PVaCP4fGoKnn3OuPkJqsUSwfuBkU1iezmiOqaNj77MvL/C37rYNoAxDR/
	 i0xcvm9lDshtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA58C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902054276.21388.14086235596420940545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36d3094870feea63541089f4b40c147632469d0cd480319756959988cc630cc
Date: Sat, 22 Jun 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719020542
