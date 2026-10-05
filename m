Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E1D3DBD60
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791190234; cv=none; b=JEECTZ1JOG1tmDGT9B/QL1n0jV2O1yYChY03LBEb6FEYk5P09TX5UGSUF/l+fKu8qZq33G7RKMV61e5G2xAI6yUwepzUKMIlOlg9MXggjmNVq5AAvx0rM3kMdAaIiw4IwZczbdGqzdHhYxiCy6RjANyzcOdKuJj5BkIfHnPsDzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791190234; c=relaxed/simple;
	bh=IXQuDELTkeWPNLYUwjFgc8TyIaFWFj12ldfzQ9kmSlM=;
	h=To:Subject:From:Message-Id:Date; b=EGdkk4RxiB4vEvBg5/fN7+4bo3rC9qDVRRw8aeBRvZHuEo0uaNBBJs5+BFJK5DdPKYGb77GkT7Kb0Jcd5kpe5Tkds/RcAaSeOBLriAIEUhBxm18Pa7UmFTkTtCxJL+P7Q1CHKjoaoh35mPieBuGZT7jM8r5CCVJCZzfZhGJcMu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CD2H6BmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CD2H6BmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7B4C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791190233;
	bh=IXQuDELTkeWPNLYUwjFgc8TyIaFWFj12ldfzQ9kmSlM=;
	h=To:Subject:From:Date:From;
	b=CD2H6BmSif8O4GQah+ldk2wE/janFBWBel97zt9J5s+faZ8vR+vDalJU6v4uneNVF
	 63S4LofQDyxiSmeY65dgu2AvIvamrSfEdupzdDIxHUs/Yq5gVo6jXAxgr63lgYPQlm
	 Mhj2WwTWmtnOxntvdylqkrIdaGfNaHKOnG7zLwHeWtvbiZsNaPLMdhLdnwqrqkU+tA
	 b+ZlbpNN2J3zx0wqk6OZYArmgvsDzp4vEhR5phK0PZvOw6t661Sb8Yvzh5BmvPvxwl
	 wcUSiBMeeni51lFWSEjF78Zsd+kvaJuHE7e7W182rlrZd/DMCBIEZ45LZ6blEvrluH
	 yBSF7Tc3oEKMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7A8CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119023369.13111.11485029166021696433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e462c44561086a2e5072bae1a3dca6ed12520c5dadc3b3970121dde30570b80
Date: Mon, 05 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791190233
