Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324B813A3F7
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751969394; cv=none; b=s7n+UytSMSZBUMlPNfLl2BuMaa07u5TE66xRgwS4bD5JQaPHLHu7YSYCUtbCHQLTQeIyVe66DxxTcdfdVEL7vG7JPBO5+gijz0ykoYC/DTwE5YZuuchcH64fjYK5oLwqIe/cEQmd6PJlDiUuMjaZ0tqWlyFX6eNCjfSxcw8Agb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751969394; c=relaxed/simple;
	bh=xBJcoVFCnK0bLVEOsobkN4c/Fi0jJ7WwBCFT+eK7oE8=;
	h=To:Subject:From:Message-Id:Date; b=MHda08wa8w8htrMRFct/5Kyu752INY5VoQ1ZvbcvlaJ0SgMUaMOzywJRHW0Wl95k0OanDjl5ZiSy1C8zujpoLJ2oCmgIZwYitI5Hd4tgtd7u7DVyD1HHgjPnntOg2w58f81ShJQl/TY1dJktpjKXj74IYqtmlviPYxJ9KOt8glw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBiZWBO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBiZWBO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A427BC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751969393;
	bh=xBJcoVFCnK0bLVEOsobkN4c/Fi0jJ7WwBCFT+eK7oE8=;
	h=To:Subject:From:Date:From;
	b=lBiZWBO93PrssIHqO8lr3ujqVMNWp8Ec5GvCct7nVtDK39HB/mlB2j4RuJsqkNaM9
	 svVMwfBjA5CQxoTjTNCBP04MvYanybtMYWTkjXpfmDjQn4jl+ANtoAAoo3HCB7F7f7
	 QnIbwDIE+zcencexR/NuxzTxBBq3CDvgrXP6pwfmj5DDg4GfOB5BTOa0gpNsDfRPmv
	 Vm5ADCjNR61318RA7JA3VPm8iYOCm59Fk16GMy2aX+m4cSaA+7NuAHsbxiGta9isik
	 O1yWpmnmqooJi5tab8V4s/rguYhOUdwZ1NPLN/deeuVa5xkMBOhZq9c6tc41lSfX8C
	 rhcrNMUa518lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91000C83F0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196939358.2600.17655848761012114972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1089acd3c7e909200f825952630b302b9fc94b414a325a4ffacbcbea6230412a
Date: Tue, 08 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751969393
