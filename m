Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096243806AD
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772025296; cv=none; b=E8u0782+FJmjhizvWHekt1rXG+L+VUkcLF0abqDJW1m9yLeKIxMhrJNXhGSE6Y2lwBI6YG1gyRs6urgeupT1AT8rkVGVmabZD/fuZF2eTBsirDpW/glztD9gWvtTdsTzK5XIEkPb4nlE0RVcjyzqXqZQ4dZmETjxoq4Ea9mJkbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772025296; c=relaxed/simple;
	bh=JPYPhNd0MslcBmmaEiYCo7rX/DLZrzukxkUz1n0XgBM=;
	h=To:Subject:From:Message-Id:Date; b=gFEuvyOqtK2CSsP3YPXRNakQnfobpJMYcf9e91fgHeOeP5rFi2hemReOEFWD9dxCCCmi/njUDJsFqy63NzDQyamATRco6dVL7WvpvCS2FdfZaq+exVhoiXDOHtAVV/uvOwAMcVYSnri4+TAeDd5O9/FNFROURN/DxtuCW+Npd7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWg/fX1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWg/fX1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE7BC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772025293;
	bh=JPYPhNd0MslcBmmaEiYCo7rX/DLZrzukxkUz1n0XgBM=;
	h=To:Subject:From:Date:From;
	b=UWg/fX1WLfWQ9U6DD5YT12RUmMRDvE3OzjvuNcc2bZNgMUaq4rtBQZrzRHpsvBifg
	 sVXgqfBaRcBjQdNz/CHLY9FiVANu92Y8xKh4m4xp4FoCZn4zYJEmbSKVzI9rUmL2Ux
	 73XFZ1nGaS82Q9TrLGcZ7knc6Ho6HKEl9b4ED/DlAuuJtRRuQUUBstTSUXRm4jsyGm
	 4Kgb+jgla15F6R8Dk7iGnPng97x0xIbMqhebgUUoeYNMmQI2BtET9tIhT3n/FlPBbV
	 JDGnXVEW005OId501+lDqfsVMiAnCeTPLp8uZk7UtEY2F8ZAyEDbdP1T3Bq+H+MH1i
	 obG6zIkwMbYMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E46FD375D
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202529358.10291.16230452462374099847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09319edea4234b67f675428c9b05d7552699510587ce0a07b8ac165ac9278fb8
Date: Wed, 25 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772025293
