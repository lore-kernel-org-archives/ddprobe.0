Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712533368B5
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784318314; cv=none; b=ta5iShbBSJ1fbBLMhx2fSjW84pj4glkSq7reeM0nJNN9m5wb3SV+jJvSQzV2/xOpdDE4McHqSNkr6kptV8gdqgldqBjnSitsAptYdOQn1BGMxLdpNdF0rJ8OMCr8PKfyUfXi2CFM9rJFAlLo1DAyFKrauNZNysDP7Kza0KDXGRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784318314; c=relaxed/simple;
	bh=JL+3vHEusC8OPmfTfYgDuP0dvRDU4iZ/aeUmE2OUAtQ=;
	h=To:Subject:From:Message-Id:Date; b=tS90vpjz/oIuXo3afBq3mPs0FZw0lBQVCUZgUPgFDAJrM/Rv564Sh24TiSh5oR9FlcPZwB/ASGCLa3li9Cl2AssGt82cyiEvQ1uvRUgpirQDrzeT9EXRawuQVcqoYES7FjohBsbT21X23EXZIMKLfX/SQ5bxbnxRHX/N14Tilj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8Y3QKsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8Y3QKsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02078C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784318314;
	bh=JL+3vHEusC8OPmfTfYgDuP0dvRDU4iZ/aeUmE2OUAtQ=;
	h=To:Subject:From:Date:From;
	b=V8Y3QKsae+DbaDN6WHA1ShMIUDibO1R7afIP9v52GTeKjNqM5NPm3cFVWaPuer7rk
	 64r/YNzrO1OacZmknXx8+zyyHirnNQ1WE17vmjqc1lMAWrIRfZ0BgeE0S+NLybcEi1
	 NDZNkHHU7ODx7n4rG9nAGXWeLBQW7HgeIdDZmQrFi/QSV1FS9OpQaq+amkHzRMSlxr
	 YJHb+1sRB1gprzo4bEYFMAJiEvdI1Uz8UGPtdeXSg18QJ8DZyQDXcLj/lnx217hPnf
	 gxytqYCjqwAgP9TzSnIt8WNvNfijjzTK7EAsxbD0b8ZFQYN6v69B+LQPpV+peosrrV
	 IMYR3LEkEC4xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BE2C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431831374.14853.6193566422869119786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13feaa1fa3eff8ad84fda47bc666a79284062d7c31222818a348852f6dd764a1
Date: Fri, 17 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784318313
