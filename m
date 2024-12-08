Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDF320323
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733676353; cv=none; b=bntFol3g4cafBjaNsQch0NRTYynjMuJiS8NWIaZPu2l7CrOUhYxHrpfkT+KaKWKxcdZijJ0kqSqaefVXRmpPGPgqDt6OqJ3LJSwBe5Gc+xnCmTKSVzeMjJ7o4LtnMin5KM6Gg5bChemXGTrS28A7tLX4j5QkCfk4s5BiWEFd2hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733676353; c=relaxed/simple;
	bh=Okyawdjmp4T+yw/UKUh1CQzQRPAmeE1+Tjvx9XDkUfQ=;
	h=To:Subject:From:Message-Id:Date; b=HFgBgLfD+NKrj10odFIrKtFuy1L091uw/cnmB2KVGPmpJ9NVyADff7HzSC1q6jxROs0MXZP/wWM/CPj62YJ4oE2+P3K9GUS8QSzFzPmSpzrrg7aKqdA8uRSnK1mpWCsQcMMrzH8+EFF9fykc2m24ebtII/HNxwaxTEoHjCp/9Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tS76ICEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tS76ICEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DBAC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733676353;
	bh=Okyawdjmp4T+yw/UKUh1CQzQRPAmeE1+Tjvx9XDkUfQ=;
	h=To:Subject:From:Date:From;
	b=tS76ICEXojaoisE4PakoxUSZ2UguGAsVvl9KM+E8xFWdquUKmlj8tIkDzNltr+xUy
	 IY70ivQggj0lwkDu9GkzbJt2Ft/8LRU2q2ExYyxRZvA000c/msXRLLy/O8K3MihZmx
	 DgArCYVXS9fhsI6Ca2B3Nii24iQBuypCk8zNFpFx1qXYyd+6BOG3iF41sOoEjaXqf8
	 FpuALI6bY0qF13Sb/t1Sw3prdnrjCTcL0I712Blls+dLIxAe2mWfW0arc+WeDNf4Xx
	 Z+HsIX07v9c87Lo4XN7X7fQKaECQ6Z+iI3TZ/ElGviP7dmaUsQO0eZUlU+VRmTYLOx
	 U003CJN2e2U5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92637E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173367635359.9287.7780286666910656378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84afffb778918815391ee7e7d7d49bfca6d0e70a98f79d83d4877822e199227e
Date: Sun, 08 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733676353
