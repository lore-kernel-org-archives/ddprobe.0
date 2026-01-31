Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E662F0C45
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769872434; cv=none; b=Z4mjS0VNjIPWaVVYE2ZAHqngK+Y1evo4uqPMWQm1eyzXt8cyyuv2xDKAIsVffYhnyiexfLGix8fKS+D1vfD2RvU82uqwZ+7C30K6pRT58Fb+iH8JdNQm+ueib8fYSRmw1ShNiHyMpp5nX0AdoUlyHw+EUQRUC/ETW9ET4tPbZRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769872434; c=relaxed/simple;
	bh=TQJ6loJYvFA5+cQSxJp1nRI0y2584rTG3UyGN/CfoJs=;
	h=To:Subject:From:Message-Id:Date; b=Hk90TTgPr+uBLBjKwyaM2n5HKK8dc78OTePSZWiBEFZWVvL3Oc2Oj95iU7XdTA2UoizCNjEp6YPDaGMfPs82u4hCMmUfyt++0ml2ho4V1wI3CSLxyPyFQUtqSy/g7eCPjaHcUGjm5i0dQTKEgyRdoJBC+XCafOLUhwCT3Om+u+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uz/VWalN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uz/VWalN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4479C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769872433;
	bh=TQJ6loJYvFA5+cQSxJp1nRI0y2584rTG3UyGN/CfoJs=;
	h=To:Subject:From:Date:From;
	b=uz/VWalNeVit/Nsa5rtpquC9ekHwNy/OOfXEclE/RY9JggQnqwJXvzl58NFh9Y3A9
	 DesqdSeCteW8cijwggFxAb2DCEjyaLGr075TtYX/ekx0TLZzsyEgIjE693uZ1UwozV
	 Z3sRisnTvREN8sc7LDPn79ky2dNIdsIws27ELpx0hA8I9yuz3gExEUcmyaubX9Hjv6
	 /hK++fJsF5Bdo1hSCTtStnBqKb8JbdZLHgkXl9xR323pUSXnW+fu5vfMg6koF8gU4P
	 9P8sHBahKy7eLAVmz/gRgQB+Sqw8Kj754ViGpgggkOxGMwkxqoraZQI7q10MLojM5B
	 SlowiP8dIZjSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CDAD79773
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987243357.26260.1846415307399399785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2870393fce68d7a0ac47b80c2751b4be822f7207e435454882a8b1c0654e62
Date: Sat, 31 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769872433
