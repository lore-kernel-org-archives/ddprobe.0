Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481EB5C99
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722656754; cv=none; b=jERUg3+gnHzUACGbMfxQlykSTQ6Ltd/qpwZSCZ8ztPtgwdUTANeDZ1063uNBpMmViR9iIVuI3aWeKziMLCyr5c/ecDZ7AwaL3B8cvx84tnrfxrKgFpbq+PTHHzjYR++0e2W3/cccBINUR0PAqoMR9uKferI5FLYSUreHuZ2EOg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722656754; c=relaxed/simple;
	bh=VvXlIaFfqFkZ6nmrGbiyLKm/LHE6y0fly+EQaIjhRJk=;
	h=To:Subject:From:Message-Id:Date; b=AGPfOYgVhVErVxoeRFvNZ09x0ClMYJC93n2Uu6Rn3y9QAwo28h7BIQA+B8aHGpONj7CwnM4Ejzd3XApNIkuNL95lr8EKOcbvo+eBNTSAalC8M8kv+YbsHOVIfkP8vsX+4dYEYQDndHmWqnhoNpYTW55nyik3ieiktG4OlDvKVds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byBXiR+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byBXiR+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D6EC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722656753;
	bh=VvXlIaFfqFkZ6nmrGbiyLKm/LHE6y0fly+EQaIjhRJk=;
	h=To:Subject:From:Date:From;
	b=byBXiR+8PpfiCDw5II6rygbb5KLFfyaM7JMWC7z2NsFD5PJOrADMDuWE5x0GQjGqG
	 PsO901OYWSrC/FtW8eRKkInpseNRJW2E2BBGaZzFarlhc+j2v1mC+ZjukeH628dXPr
	 iW9aGlllY5tX1xcXbs4LJTse5Odp0aDNr1L0oxFHnkCcBzJcz6uZDDMrssPsdGE0JF
	 UlQEl9ybFah7e934e9l4OYnCHR3FIMLa2eQFoz1ZKVAdjkqCg/Mt8g5sLSlPy2JXGe
	 5rUrH8iu8czj738uigeqXOh4DZgGjpv02f5Vw78gaOr7fDk/gExSDMqmLe0XohNH+P
	 48KaQC5G3L38A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75C3C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265675364.20784.8701026404502113458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0aba38bf647cb73cce6c8fb9b8887830743bd4d8ec3e9a60a24998dc19d652
Date: Sat, 03 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722656753
