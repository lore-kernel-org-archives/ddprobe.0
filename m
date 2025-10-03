Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A472BD03
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759508996; cv=none; b=VsFKOwZEedp6qMCFVX+ZIOXAAmlTIPi62NEOaYMNiHCaUZOtGcojIVwvkejDmmDmgEfd8WMHsR9V90jpmnTqFFaQZWIdUmEL/um6zzx/d8sC3/qpABw2RdIcYV0tVI4KfW87rhefa1lAmCyjyr3R8kfYdlmBmLuFlMbIHPK8YpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759508996; c=relaxed/simple;
	bh=4xExU8LcM7oD+VZy7Mp3sPlE6KHrHnNTHAuacet4yxc=;
	h=To:Subject:From:Message-Id:Date; b=lx/S2s/QbI47Nz2Y+e1Q3Yrr1snqHaI/TQ+zIatsbnxJfQp5Lhmf6ZxKpZrGr4FXprjADkGYugTSpzxxfU++D3XnYHhlzlyg/vCcZHYvPW7bI+gh9erJk5/Mc8W257hVrRx6nsmdFC4A1obzMJlB9GzBnWZZgy5dqx1pvqN+vRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neVaA6Kf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neVaA6Kf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB72C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759508993;
	bh=4xExU8LcM7oD+VZy7Mp3sPlE6KHrHnNTHAuacet4yxc=;
	h=To:Subject:From:Date:From;
	b=neVaA6KfgpjaLELHnsB/HsWQ6g/c6NGBbhybbECEWJQGnZkCB8AmELwTdchzfZrly
	 HXMnb7VeYAstOpnBGc3Y0hMWnx4dk6yIz++vepZQMyocRHJoRGt+3LYLdUUQZsUb/1
	 M799BrDKaHKLpDh8xq/D1iSGsIEuVIYLySg9+MNWiflLIiyjS68T6QQ2QiLsI+3sB7
	 B/LnLMTtGgGPd0eQTKhuiLjPjIQXtbIcKuJ1qzLPQiGO0+c1n+UsQ8sLYM/1t6PsRT
	 uK0o3zmIs0T26aJgsV9CdpjCzbluIYxuiQhO8voohCO+jgvmoO/S9HGRuvQ/79RuJ4
	 lyb/3kBU0BSGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9CBCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950899357.14948.2771516016584605330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c400e3d98f8f6c374b5c211fbd29481464aba3d1e025f707ba1139aab9a3063
Date: Fri, 03 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759508993
