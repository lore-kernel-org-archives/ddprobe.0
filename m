Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC36275B03
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761374994; cv=none; b=W0QX2wYGvSauFnZpTdvhyUvLaEzv1N/QsBglVgGX4eqVTgYX03hy6xOIIEwmRa52UJYVLrY1QM4GomvdTjO29GZX8DagU0mCDRJJM8e+Sl7CRD5W/GrxrlI2LDNoYc+f8LB7cy8qMnbpMONpW+p4nzSYyE1g2IFWnNq/BmXEsEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761374994; c=relaxed/simple;
	bh=61IMWc4EdLUCgKpUUq5fw6yePpHK9e7SiX68GoOZiDc=;
	h=To:Subject:From:Message-Id:Date; b=JItq9Oeoc4Ba38wASlWz0HieGpkf+bRv2RbyWrX9vDuaBvO04KTOBgD4GB4sTnYgvCjDJc8sP4HiENqBDBdheCYY3pqltTcL3mbh+mtkLXjpMchdJ9I6sOw1MVCjLplfppYQ/rd9avMKc4LNYwdefx1Syk27ayRPi376Mxcwy1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HR5X1WhT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HR5X1WhT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCA8C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761374993;
	bh=61IMWc4EdLUCgKpUUq5fw6yePpHK9e7SiX68GoOZiDc=;
	h=To:Subject:From:Date:From;
	b=HR5X1WhTq43eH5igJtdO6EdUOmHQliFWI7wkVVW6W69vHv2QmpYCYOD719DOFjm/b
	 SwzrjByEasMtT86lcd7EmGeLCz/LsNYKdut3a95C+Eb2HXkjySSPc+07Oj6h8jjt4Z
	 WmU6iwyw59g2HuC1IMSIH2rbH1BtM76eZ6XYPRwVsw8d7txOKsXWySat2X3vT/X9Qq
	 FOLtowqz5kZZSbHHBT8SUuWfgIgCsQMW02B8WRbSEbZ9ddU6sOuuUFdpoJ9cCSMxqW
	 l46TTSRtj8LkLw2bGfUs6VxBXkrAbWRkAio2eWnwxwiPhv8WrsxK8cpN+8RzFfitEi
	 SXeNrK65Xj6VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9659BCCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137499359.28044.5048610615946072821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71819fc23d8b3c7fd69fe1771a1d402270435bd7ef859bf0381abaa18d4a6926
Date: Sat, 25 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761374993
