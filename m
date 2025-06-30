Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2017A25C833
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751293194; cv=none; b=dqL2hi2UD46Uv/tqa6aDLJz6ZF3ltDqP8sbW3/2Ch+Myc1Ral6lBVuSGFabOhMtr0RCzjva2sikJ/9MSAly/n+wH2/n3RApklltt0/VMwCvcvunUB3Tfu0E9R3gdBT1AxZT6803jlJppZyIO3elN/MnwR5CzYAMlAHAnHSXmp7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751293194; c=relaxed/simple;
	bh=TZlHW5QRuG1q6UN9azDsxAAWeZ3iOixMZ7nlDQupTio=;
	h=To:Subject:From:Message-Id:Date; b=g2+BriplXVZzoxoMrNUESy4oPtwar2WMev6zTbza0H/NTQv9jHHI0U+i/CsI4AbGkOpSwBVpi5Gk911IIpiUYBaXrMCRC9QMOMjpdf0ptTc7EGg8KQVUJTAHFjOv7n1XOuqLBhjepcPImfNUJu4IAdatIkGY3NiSeSGsH+Khy4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7fUAS/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7fUAS/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95F6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751293193;
	bh=TZlHW5QRuG1q6UN9azDsxAAWeZ3iOixMZ7nlDQupTio=;
	h=To:Subject:From:Date:From;
	b=T7fUAS/xyQ0P632EMP5fiqjlh4tehrbavA5Fbmm52uwcVg4OlAUdPqfXxBhyLzAMj
	 BG00547Wkskx5/RvLxWiPCugxu0HqENTWpPvDrL4ejmuiGSE/d6oVxCR64VHaaGTHc
	 47g2foWv7bNif1uA93V/f6jyUdMadzeugAdKBeflKqBFblGpe4CwgXlh41+5q7USWp
	 mWsGMKrIGWFx/k4iv/A9O5fFTPe7+4m9m2AX4U0tupwiI4Z0Wk1goc92AOewr/Sgjj
	 R+KBXZvhAulCx4JYBXZBsyfjb3sxOMlu0BhYIkVwVv8xep2eU97PhXHyKCp5KakPXW
	 wQVa/on1P2dTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9422BC8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129319357.28169.5456580970649129676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d2ed05e36192e159fc923f6f7e424ef055b15e231da8225842325c420824c0
Date: Mon, 30 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751293193
