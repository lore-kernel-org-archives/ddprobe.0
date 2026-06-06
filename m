Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C9330D3E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780776874; cv=none; b=BGgPBX1wrhCuVnME1Vt1aETnQTWh7AJS6fGtCMpc8wksgsoeLhoC630VYxw/vJpKv4H/BLzaudfi0qjN0KN8lrrw6sIM4EaxEM5VHhdn+QrpFPAPSTqx8KQa8qWaF+sZX0xccpaRpP/meX6HTceqys6B8L4qrKzZdWbQogdK+y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780776874; c=relaxed/simple;
	bh=rMTl6PYHmubsKGI5v8yOOZ2GhBFL4/wl4kkLa4ohvvw=;
	h=To:Subject:From:Message-Id:Date; b=JhubMs4CbElJ5wyVbO2LGLzWH4Xnx4OCZKLLdASKG3jLVMohN0aHnkYjfLlpQRhr7DPT6GK2bzHCDf+roP9N/pWJggMXt3fX5Pu+qH8ErnQe0fU7u+wnK/y8ovauNjq/Vacfxh8ZJZGXUEdFk2LK+o+0nsAFIee3VQsqXmRP04Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzTrNIHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzTrNIHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4229C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780776873;
	bh=rMTl6PYHmubsKGI5v8yOOZ2GhBFL4/wl4kkLa4ohvvw=;
	h=To:Subject:From:Date:From;
	b=kzTrNIHvKpT9tSwcX2oGcg8u+a2nnwFDYGiQyTgl+irwJEWHx5/cipiFDXzFNP8Gr
	 SH5/5csgYdy96Rs6COAlcw82wI4lPqOAf8ZcrkmhLesMR55Tl2tFHmT/gIGen8KLF2
	 I1IeR3y8H2NXjrdApY6EKrFmcOOZrPgse+iwoIrWXo1YHlgNjQgPxRXoPcYpRu+QHZ
	 sxe+Aj/9O1OeKsjJEk9v2WcS/Bt8PYAmEfpn0r1eg5XSlc8CKykTIfztdm8v5IbTim
	 h48qOCKjvkb/NFIPquYd+2i5GcWq1TSETfao1GCRbjVqd4yje8wUiSPhV+T+vSRR+p
	 VmU5kcEbZGNXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9343CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077687368.15365.1669978391400238258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc04b0082fd6c25cd261a905ef26875e6243f423eb26b7a830a7895dde2e6894
Date: Sat, 06 Jun 2026 20:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780776873
