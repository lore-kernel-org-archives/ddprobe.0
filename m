Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF7C1D63EF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754109594; cv=none; b=utflKQlryZbTIvt0xRI+rXh4UcEQkowqKTlnvFg09aFVlee7qhs1gEglMIQe1ZfiCa5SJV9SsGxaOkD7ZYpbZ3Ko56ZcHf9iVUNw01y8Jtka93z3zpI4C/+4H3BD5+sz2UMX58uyCwp8zwCZOi93016HDeyTtHZOuvlBWCgahs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754109594; c=relaxed/simple;
	bh=WgkN2TjX4Q4ashlDIgYJecVGvtpp+aM5QmqazDpAejg=;
	h=To:Subject:From:Message-Id:Date; b=LqerHjQ+hmX99DR9n5fSCNWgd2tO60JxbhA/MzDWNxKmbwCVUPb4pCYGwOqq/PWaAhCy9Z3XucMc9YKYBt6+e+8KLUp8UGmrrf2Qz4JpVULTE4mMOnj/fpfuAPSEs5AKkVpkfhpL6Tdz040ShsrA+NOzTWjBSPWkG8C+lavIsFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uriqZi+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uriqZi+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1FCC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754109593;
	bh=WgkN2TjX4Q4ashlDIgYJecVGvtpp+aM5QmqazDpAejg=;
	h=To:Subject:From:Date:From;
	b=uriqZi+TyWrP9689gstkNq6+tydH2ePQX75zpDwYwElOEMhunlYaeXN7ztVv0UjCZ
	 g0ZIpiHDAa3eYuxIVFQG/X5NRe0qoDyBjTux4d/DJWJZSRvz0rdMqcnsWptYhP/pJI
	 WVAB0c0nzH/C3ovBajlEWjoDtr0Kyf83gJK9d7bRnU6sOPeI3Ud7WwfENKQURgaIjb
	 mEIG38SokhfXOooHkQWVFc6paJpQSxGy1yv0ekcug+oMoQV+dTAWL0QC9vpqFkUOpL
	 YGx7DYWsWRcTyQOK9QIN2sHdGwPqBl6aF8Jsyeoo54kv+mJQjKL3Q3ya8OhZWMZdmk
	 42fqoWOi3Kkxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995D9C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410959362.29581.9122026197830155550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648ede6c127a25167b4aa9614b30458941ff2dc56373ef77cad7f9dd07ad084a
Date: Sat, 02 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754109593
