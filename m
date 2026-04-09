Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F76C31327A
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775752054; cv=none; b=L77qUzx1s50ZyIF52VaYohtIeXFbpNTLrTO89paQUBE8fxHXBIec7fqThSBraAxD6MTOtF0FZu3ZWaRvDMnkDJzRbOZhl+pqx5yClU+AfUliIGldVaVDpwDxBQSI7CrhTqxylZcmFh8wPqJg9mvV/p+oQXonHmF17beNtz0KyrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775752054; c=relaxed/simple;
	bh=ntFKc5XFtjWHfOvU2tMDn9GpWVd0pfcTJ3MrzsS8TsI=;
	h=To:Subject:From:Message-Id:Date; b=X6wivhYFA2zrgslQxUDEho/SmfnsOq5vNZtOkimSpLUpIVjgRJkkjaRSxn3SqoNhwJ+B+/8YqRPjCLoNNtQmXxKZSAhISlQhU2jTKhpoLoXFi8C1PI5UQtTK8AY+Yviqym1/2RfaKNMVMXxihtlSxKAbysK0U6TJqgMfEQg/aPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojePhqmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojePhqmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE132C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775752053;
	bh=ntFKc5XFtjWHfOvU2tMDn9GpWVd0pfcTJ3MrzsS8TsI=;
	h=To:Subject:From:Date:From;
	b=ojePhqmfVNpK3wUNotaSRUFU4FPCJNuqMluf/x7eUbh7t99EA5QvyXQlgrKRbH1de
	 U0z7RVZIbu1IJx/CqbSY1drHhgR9A/l+2tEPEj08nc2tILBUm+xusydXH08PEDGyB4
	 rUB9OWtvbEYvw1wHpi7/hsCZvWudFwLc+efl/9NHiyWItjILPH2npNAM4OSl8Jhpoh
	 p7UHpY/MLhTFCeJUWA7wfFn6h4cejyMdEve5znmBBSUH3Do2WSJUXTJqurP1au6iEU
	 2i6WbeL+rZ6pR+Bvj+4U27gVd2J6Z+Fp9wuqSlEWrrjnxxZgnbXUxvgRRLohRjSEFY
	 G1U2WiGe2FZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9F1EA3C4E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575205369.28901.8140366286350174643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cd79ab000a36a9ef975f73773c8c3d3ab27ebcfa144573b60ac113fc140e4b
Date: Thu, 09 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775752053
