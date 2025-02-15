Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A28E15A850
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739594934; cv=none; b=boLjpdxFA3vt8j02WU4+M8LKk16Ur7GWy4670YcRU1iztxWUfVs0rgCw4F5QlqUsYHm6i9JKtwcuRiIcMHPhsqeRjTbJ7WICD7js3gZnQYFWZg8hbCtbp7EGEOSGPFbnUHZXCw7ieBHpzwRk4pxnISq2kKWwvExF/Z12Esr+wfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739594934; c=relaxed/simple;
	bh=/gEf1Pw8yO78YTX9lndddetPy2RKL9dTMZz6pOX1qzo=;
	h=To:Subject:From:Message-Id:Date; b=i9ADTgBvBvd24dxhsmf+QLE7hhh5vhHEhQCEDLdtSfgfI7565qzDKO+uS5RnlyK+94WNtEwV5dnMLZr4uGG0DUV5cJqOCIrOaMkFhii/HfS8wur2/3mGrXC/wyL4r/daBPIdbeHo5gElvj3YI+OZuLshYqc+DivWG3D5UThVd8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oswJ2Bhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oswJ2Bhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4F9C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739594933;
	bh=/gEf1Pw8yO78YTX9lndddetPy2RKL9dTMZz6pOX1qzo=;
	h=To:Subject:From:Date:From;
	b=oswJ2BhlKWNaxK4NVm6thDo7Nuezs8CwM5t1EsSBz584gB4t2SKteibWCo3nmOTvx
	 wbbwxmkznYAdJzzqBddBNFWgNX2rmbg7bgsOHlahfvDlB57LEPAOmBT2/rJ8KWi1Ik
	 zt7ohOmrUneBsY71SqyvgKjmL1vB+9xJlROScJv/RzMLUJl/CrrGqS6xjvWxf+s3S0
	 AAl+L6aRWMy9XDe7pqj/DswyLTCjCN5G2Jj2DjkGUt7eXiaTdkVlTltRul1Fd2R/vG
	 qX3uy8J9pI0uwzvP9iGbhEykXSBeuR0J/jSDzC50gVjQKUiugL2QSoE8xQc9s1xCK3
	 cat78ulOs7IJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A549FC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173959493363.15005.1899521647291933278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca1e50f616162518d16d039931ac81d82e1b00edd9b65fab3e9cd4a22f31ea3
Date: Sat, 15 Feb 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739594933
