Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AA0285CB8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768737234; cv=none; b=jQSMP4vTapY//W+c7+DAE37/bENxIaQpku58L0IZpDWgOV0VnLKwK4IP8oMcp80jxSPjiiKNoW0TSova+3poPqqMy6/ZFjw7iz2GtQafT5lgwYvAZfMyt3GTW6Z2eGesbheYN5aUKME9xHRPwW8yGKtjpTV9HWdDhbOvnuAYaD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768737234; c=relaxed/simple;
	bh=5iwhlejQPc+UBiPmTXyqVXXL2JJUmkN6cJCXcJOSryk=;
	h=To:Subject:From:Message-Id:Date; b=geTf2MSJ5unuzj3GjbHT1YbqBSSh58cVFP7YwlsFv3D2Emm5tHMlBr/js+4vytUyebCHtkPU33hnmgoOc2NdQUCCql55+PrSH2DPDfn10LeULyRjQbae9UG1jrTyYfioGAzebK/s3sZQWugEefbWU1cOOYPgUy1ymKWSgMKexIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAkq4nQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAkq4nQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69CCC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768737233;
	bh=5iwhlejQPc+UBiPmTXyqVXXL2JJUmkN6cJCXcJOSryk=;
	h=To:Subject:From:Date:From;
	b=gAkq4nQqHm1bpPr+O1s57GgDbs/BDLe7Srh1Ba01MKebQ6ubKqK89V/z3S1JiHQQZ
	 mgvWNwxSpg5Bl+aEKz+q5W677Fry1Tt9ugHU/s4z3mbyRxXmyB34s3cZfXTUuXrtRi
	 SExXestA4IhTTPxMwV0nHvX9p+p8Wl0uRYx8nVCa70vD0BnXIWWIYCuTrEmVdDz4UI
	 spnyNOZQgoWUg1IezEbqK+DhTEqrDTVPw9LdD2lcbX00+TnwwUd2UpJVoWugs8sMDD
	 jebpE/HPRlkFrTWdCEozCGgFLiSW7ZFeRfsvAX7e7+YWNvVGERcF8nglAaeMNF55H2
	 97k89M57lXCyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D60D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873723358.28789.3213966260525452983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81793c23a2351837637fd4c2ee90a5a2cc72735d1a34578fff2e31e6db8487e3
Date: Sun, 18 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768737233
