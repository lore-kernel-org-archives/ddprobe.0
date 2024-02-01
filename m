Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065DA6215A
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706802497; cv=none; b=uy3Gbj5TGva7PtlQUj4OSwnPxTOkQ7HZzTOmUKHbg1v9SnPiiHVQcmb8gta3/WIl0smS7er9RxDtiqnrGE8Q32Z+iOJbuCGkf2GqxBD8nrkzpFxPjmtEfH4npD6xESaLFHbViV+DxvLj2SHRB4KUs5rHJTE+La84HyaWF4iSxvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706802497; c=relaxed/simple;
	bh=z45s//s1bGa7VxkjBbR29wLGAQRYhzjmX72i8n+H8Wo=;
	h=To:Subject:From:Message-Id:Date; b=USoiUopWYOfVtxabfWbPSFVhRMGGYnLmVqDg71eqRqP3VSZn+nhwfgcQ22tqMuiLAFyX9F8zVsuBa5qPXoiGQCah45m4mX1SOdYACsNdXNHGf7x1n66He4PpEva0yaupVqdVOQiNqhsUn6RpfhQG89RoSGwKy5KH/5C40N263M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnHkAiNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnHkAiNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D47C433F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706802496;
	bh=z45s//s1bGa7VxkjBbR29wLGAQRYhzjmX72i8n+H8Wo=;
	h=To:Subject:From:Date:From;
	b=ZnHkAiNj9QM6JkbXLbTJdVoce3lSrN9PDfuaTFEkIUUGZW6SEWuRp4RafpErBIBku
	 go6tD33b54oXZ4e8RR8EXfyfHKhhuNjsFxjeA7bJqv1ODXMfN3OcqoucFrh7DqppQm
	 O0YJnhy7Yi9VW6vL/oqJcsgXBLxx+/sv/+CBf3HFsszKZR7zEFXtnj1iYaHnuOmtcO
	 y+N9tVmxao0xS5KE7yK7hrn37k3KNPVEymG2sKUa8qpskKSaaz2Jg5lMH104RP6Rvb
	 gMlJP9xP2O3upjy01xtBlDfdWBMT1RCp2DpSZVVBOCzQoZ3ZSJO6M7e0rhsr9YE668
	 /oGuokon1hCXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68237C4828D
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170680249641.16745.8836574034307067164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a60f9c6c7778cb1dba7d6fb166a128bdc030f79a1fce3b32d1eaeea0779f91
Date: Thu, 01 Feb 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706802496
