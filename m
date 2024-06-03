Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419537E8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717433123; cv=none; b=EBTmeWBW/vR0oA+/tOdod8AiLY8U9sXgrQJ5E+J3UrMqBTyBGzhJ9M4dd78Eys7bKecfHe1L1xKzKKCHg6JrXRe6uUAFXQrZl75nxv7Fl6nTEa2DcTK7siF7YkqpmkDVD/lqAf8PN+SwFJuRJkX8RpY9beOIlvUgiagFeDLmmAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717433123; c=relaxed/simple;
	bh=KJlb4o9H7ao1JwJcMhvqMu0jSLE2SKmeSxcgc+RNZKM=;
	h=To:Subject:From:Message-Id:Date; b=uV04gy8IFcbbQTJMtObGPIvrANrjc4bpFIl9Z62ewhGmfYdhl2deTA8ywzxM3VX/judVv9NDCODFktsR/0k2YF/TaGpAUA8DipqiM8KCQzPaPol6GQLrf1UajgBdKlOMYL1hak6PXR2O/B7Kb+cwRzjNyxoyUOOuBR8s36t6P9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdkQj39i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdkQj39i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13E1C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717433122;
	bh=KJlb4o9H7ao1JwJcMhvqMu0jSLE2SKmeSxcgc+RNZKM=;
	h=To:Subject:From:Date:From;
	b=RdkQj39iv4bOFDu/GcgS3Gp3i6+Yes02hMTFNWyXroNP+wXzmyVT9AweTOlqIH73o
	 ejmEETxOCUM8epuGYNB0rG5r9q/TI4SeucrHby4OGOjgncENPbWbeYardyzF1JIbro
	 qR2MrUcb6jO6w+0i+oth2vsogmD9yxvbi+O9bqCT5lVz2sbceYBGhu/gYpDuI9AqI5
	 vbxKmtjXMLwOo+fozC1gnrAMqolsbKu49b1o1M+ocal6cvAo32KoCNvsv2UyuB9RvP
	 b2K8Aqxdq1hg6cON4ccDBnFAZNuNhggGBfdc+9nuV2PCDdcFh3CFXG9i6UmzGXvPuz
	 PcjJk3ThmdjCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFF3C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743312275.6914.6286007314705008596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71df688fd4573b3a6c1ad61b360f069e5c6bfc44d6db94c48d64132d6cff9440
Date: Mon, 03 Jun 2024 16:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717433122
