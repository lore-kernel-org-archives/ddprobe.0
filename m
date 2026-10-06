Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F137360745
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791263434; cv=none; b=m6fKAtumTfYxtW2210d9cW+qovy27YTLyUwx3Wj5TZvEG2xB/sCIqa0cbumKPcLLKmpRRvlo4MgjSnz6XrkwMvd0aGDKdEWuU4rbyjvbA3CiieKw0B+gy4PqxQ3E7uCtWR5iFcHAoM2kPP4U+15R15ZyFJ1DjExVGwoZaLqKKKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791263434; c=relaxed/simple;
	bh=qHDLp7xlqmPpAcznlmSo+b4U4GegOQDCCuXTcYvH7c4=;
	h=To:Subject:From:Message-Id:Date; b=LoRHVsqZz0G61Gus0vM90EfyGOuoFU0H0fG+1I/RORh/th6Ue+8pwajW2pd7qwvLEzm1w5wY/c8+kVk6iU3XLysz3d2g60ayV/n7sjhwq8aGXOhaI+ITZKi1PhS+7sVS/p5tvjmELpp3+BLx5PtCwLfQ7UkuBx1lKkDgW2UVOm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5ho3dLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5ho3dLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC977C4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791263433;
	bh=qHDLp7xlqmPpAcznlmSo+b4U4GegOQDCCuXTcYvH7c4=;
	h=To:Subject:From:Date:From;
	b=D5ho3dLFUeJbNTZa2C9IK8qX4uZ4z1UYvPjYWf/ieJzMLXlkCACZGJul1nmWJFptT
	 iM7Zw4S2AKpFstKeUpwQWCWyS3z9ixPImZGvvrA2zREBwb/GVN0RRkuHkm2C11oCvI
	 rEc9oqqlguZ1uF7QxaGUnUVr4/MERhg7egjSWl3xaoH9tFzAJ/VlU46ekaeiNsuyMz
	 QIxeXeYb4Fg2TNMR0Sp/S2IwkaBQx3YatnKA9P+/mekJdg8/MKhbbZeO5eGBQPyAmM
	 rxbva5M/3MpzFJxolmNwa/ryaMHBLkZlV6D33f0Xfa/t9rHcRXfpcD2gSN4lbwiFAY
	 MBxpyJ3dPbslg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B6CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126343368.1484.18168627385199023087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94281f80787a53df5b74cd8522d25822c649be6f07c4c8cb3332370da019cdb6
Date: Tue, 06 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791263433
