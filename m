Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DDC249E5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765683174; cv=none; b=HjTHC2Ryme5R3//7U6pHqRljmwscomUK7Od1c1pe4m1XJ+hw/FIk5R4Uz92DLojx5iE2PsOIemqh8eOWLqUCKda/taaHiW/Jue4GqEpQ6McFDktryiVwDe3+imZ+C9ufCu3zVNR4pi6YZcU2WdX3dYJGUAyKXWgtD0z9/IhG/0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765683174; c=relaxed/simple;
	bh=XlsIcXHN0SBOyQxaiVsBuDKYhcxmYLfyrGdAZwlhfZE=;
	h=To:Subject:From:Message-Id:Date; b=OhJ+T3jVDUb0QEqm0ezma5WPZknbKDH+Q8ggF8Zed9yxVjzwqtmEs7RBJKtwatCuRKG3PRdydpQK/mTCxIh7oPWAMmsY+tHIREio9qsrSpei1cdhOjd3gKhYpjz1+mWkp8gnjDlDP2GvVCKeZhmHqvpjupwTEMxrPOCglfv22j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0SwAqvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0SwAqvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6308C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765683173;
	bh=XlsIcXHN0SBOyQxaiVsBuDKYhcxmYLfyrGdAZwlhfZE=;
	h=To:Subject:From:Date:From;
	b=e0SwAqvrhIG6WSx2u9zGir2Y1gcskXN7sWQVBVSpylqoiTGQiHSkcGKNW27ed41//
	 UV5Sx1MAp13PsXXb+xXBiydfs4gjihQqT4/EiEdJ/jwsi20/61svY+XDY/gR5/hZWW
	 /OxlXV29bM6FmHbOeH+k7eyl3RWwfJSEkcwJx1PKFavUxrgQ5OAxEyxvsdoHIXElBh
	 diQCdIDLsG5HV3lHR9LYGZCjiZP5Jc/Dd8qSQj5vxB/YNhCe8LdUcHIisgvvUDSSPX
	 fQoMrF6hubX3OQvQ3dRweBM4wgiTzmeozmFpIg7dBpASctEiSAvFIGldOw+wiAq+e+
	 0ay5v0BdIVjeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B53D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568317359.16647.12193433436259523112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b91f92ffce18bc810435b1da6995d0ec63c26863a015b4e07a17edfb71af65
Date: Sun, 14 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765683173
