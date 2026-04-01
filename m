Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE613AA1AF
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775036734; cv=none; b=OmzEOHb9/pH2p1hPvrbSZ5qae8emR4SZIs1EQqdAbl5L5mlV4q1/J7RZtZhuYNNK8Khgp6j9J57MY8SzOcht0UyqWtCiEMuqvcKgCkbEjltpZdHf1wtHA/9H+c0o06xdyEkMeTOKqNFM679G/OXXLvWgn+gPaHDkei3BGXZZPSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775036734; c=relaxed/simple;
	bh=ycjt915KKh64VDQGpcq/lu9yacEn77/FLTuVP4Mo/QI=;
	h=To:Subject:From:Message-Id:Date; b=iKXoz9BRBVo5ZWlzy+c5uclTVdBZi+zq8mffzzM6w506S1h7IxvrJBuNzbIsgCeV7fEZ4sOlnG5qa8jPOvBWiZTRAwKCdfmRAbl8ptr32Y01138MDOncAkWeB1wcnBY1lYL92jGiHBxSd04ZHbMpAqW7Q8SJPHleWEyM2gnPmSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyNGnHts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyNGnHts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB17C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775036733;
	bh=ycjt915KKh64VDQGpcq/lu9yacEn77/FLTuVP4Mo/QI=;
	h=To:Subject:From:Date:From;
	b=tyNGnHtspTQQpE82fIn3GytO4/NgCphNU01oKs0D+6B/HYlLpfeThb3ccXYGmFKET
	 lrffBqrab8mnrZJ+B48xW3eYE3E1k7O2v2rpME3cCdmK+68ueKQLXmlglDknnmekYV
	 q94NCNxvJo1rUsNZ+M7g6vekr1m1yKTGnW4zkAHQLqSpIzxq8LzBJBGWiq15/S7KbZ
	 Yo6o/v61KG0LzVCjcQyjFd9jTjfsj/iRDWh3xUVxSHjpGtkPTZyP78ELmbM9YIGvJD
	 J3ickB+LSjuP1KJ6RqgIQoOIRGIuACayVW5CpPN4dF3li4kkJeh3grCzh2r6cy851y
	 s3f4ArdZexz7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC4CD35163
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503673369.11789.3531595645996977362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f6aea4d9b01274869218018feac5c71054ae1f9a95ba838ea639e9dcc3d1f2
Date: Wed, 01 Apr 2026 09:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775036733
