Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DBD204F8B
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759967394; cv=none; b=uls4wuK30FqOXclmMW0W4uceJSzMfys0UAN8quF2wRoBrnaK4Np91gLkCcyE6wYwxUzFOB5fOq6MJm1+F58/NXXOs/WAjspLaMMFPm6s1wECo3OsYQyPhQU/l7l1lzYX4o6v2RshmfO0cgKrevNSNSFkOT75P04tffGRhOY2Kfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759967394; c=relaxed/simple;
	bh=Ll2ovr+6DDunIdLXt8Lytc4fJYjqFwgs3iEdaqueLX8=;
	h=To:Subject:From:Message-Id:Date; b=Zl4MPKpSRhmk4HXnKxWay/NTNKIRez+42rmMkanffnD2A42WLOtiwW6ReLNOvSvhI1pXlHjM7DUIMDpnPFSCTEGSmAX+KceByU1qlPUMpkncN3hQEs2v45fjYutTNe7hS0fccTAcrccHeI8SmyCxpzilBeBEow6peO8fBaTlh4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVS4kFXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVS4kFXe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7844C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759967393;
	bh=Ll2ovr+6DDunIdLXt8Lytc4fJYjqFwgs3iEdaqueLX8=;
	h=To:Subject:From:Date:From;
	b=BVS4kFXej/xOd6bWZnifjPChFCsgN6U0sYHL1XTp3ABOiBE6TVXe/S8v6HVT3y+TF
	 2Ll/hfYHjqHFN23zGV3avppnCahnbLOEbm9eNueE6ztRHJjuWjQBKy6Y3ndv4dyxbd
	 tCAd04+O5ltVnELPPrXo0Z5ock4c8KqbSfS68q4Uxfp4ou4D8jYHZXwgKUWxKFe1qh
	 2sjagTVl2L6Oo/Q5Z5tZXhP+F74LF74WVxvePzcIHzW8hTWVz9yYrs742DM2No+WwQ
	 IlZmfT2TuHmjcsmzJOGoaMMU0G/PF/ycZ9f1c8b8W5MvEXgm/TajkU4ParNIOaM/59
	 i5CDWBnidfPJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE8CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996739357.20764.517478630580716638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487fdfd176f74990d44021a1755f1de29188852fd40dbd2204a8c017fc4cb3c2
Date: Wed, 08 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759967393
