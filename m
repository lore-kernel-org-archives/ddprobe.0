Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03A52309AA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765164174; cv=none; b=siJc7457mte746WEva4trETGslQSsRzcdSeFZEa2kuWgg6zQpr5a/zrUdHqF57Oi1CGwsjUrTxt4rzU2DQxiXIhPsvUsRq1NrcoktbBUVBjN2PMxdDh6yHx+5b8pV1pYNGpSgJo6kI+4LXhPao/BG1CsNWSXN87YXrW7+bwtNYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765164174; c=relaxed/simple;
	bh=ElITdY380RD9nH5uFohcDFMts0BPKRhAwET1KI68CjA=;
	h=To:Subject:From:Message-Id:Date; b=eKo6m3DVQ2HC/fz0vHVoVlV4HuNEmtUhes+Msd5EWMp4XYghGmKuR0UM4oDgbvl0VrKQguSa7Rma4kF4qYWbX+CPZaFx+pxzHU9at/BVf59eW3O1NgEQDMDacxe5fcnAHyiXkuPBv1uJVYNcQ3WFdzCQu3jgIPLDbQ0SyJdu6rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2EqWaFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2EqWaFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F06C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765164173;
	bh=ElITdY380RD9nH5uFohcDFMts0BPKRhAwET1KI68CjA=;
	h=To:Subject:From:Date:From;
	b=A2EqWaFnNetoJJTfUpwOVIR4V3WmHPZV8hlSdMqbpnkCcMLWXamCO+T7IgqywZOZq
	 lNvmxdcsqsc4cARLHFT5hgsiUP3hr3AW0eV/j0UE5mpfPDkGgbm8zSxlDXSYtd4jOn
	 RD7C6ZG4OePQhgTKhD4usXKupkeO/40qSmV69D1lfEQidrqpHUF7SZPTMVbGa9HnY1
	 l3UmqjJKpHIO40fprP7Vdm/qH8TE0m7tBdgrrFExYCOjSDmypUzL33laBLw7cHa+1e
	 Z8VvQYTno2dsGpjz5STd/jcLtmv/QhiwXLE7lmBFScxSndO3RkSCU8nEtH0bFhmSho
	 5TeQj+TvdWFFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93336D1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516417358.10902.2548884377080500747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1cbdfc4a81d18fdc821c704637e2330f26d149e133c538deadee99c1e3e6261
Date: Mon, 08 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765164173
