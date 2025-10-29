Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02B93570D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761764394; cv=none; b=CnqbXN11zLWBslc0XiAhMBT9w4m4DEAl0jXuWsqZvSeLwk/0EUs4M/eJsgck5EZnq1xbBTFm1T1K2jywbLDp9vGD+3GzbeCX/J9OnMShTnp8sXsllF6eaPMwIDHALC9EZz9xW6nUT+5BR2Kh0vVQTEhp45YiV61/v6GXLd2w9rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761764394; c=relaxed/simple;
	bh=E0ooJa9vcPQvZbsxEAWzkc6c5u/M3gUQtkPJZww5ENQ=;
	h=To:Subject:From:Message-Id:Date; b=CcZ8dxKdRaNcLnMhGkYdj4o1LmBYs/jFATQU+sLm4pthqU8qrp8M11xeDNzJEhbT27TkT906eiysGsPdA05cb6lTndoeRNYkoJrZA71wyCevkm2WOJlYGvRUBjXZwsN95WtsEhqikalIdf/CnLgaShDmwtIsCHaPDQpLmuUfed0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+Z82ai8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+Z82ai8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2911C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761764393;
	bh=E0ooJa9vcPQvZbsxEAWzkc6c5u/M3gUQtkPJZww5ENQ=;
	h=To:Subject:From:Date:From;
	b=G+Z82ai8QpQCGvCjcCmc6xrXMXASZLvzbpvr2HcsZ/OGzQuTqEtEpqOGyV0du7rBR
	 6Q1Y7EqoD1fJ9BvmYzaZfC/0Ms5Q1ssMIbQfN62yCgkuIvEkcIYmKj+hpk3VR+fZyf
	 8fBpOwRczZX8RVbtvRo0P0JW7p0mL+0+qwA+sxwmFjLgcoZmG+VQlSuou3dpqOKEER
	 U45HG5syBAviy0FjhZ6cKa4rFEg36aHO1j7f1xfaOnVNbYXOHE7zq/xRZ6AczpecwM
	 6oXyuw0N37a4h8JlIIDMfELrmdv71dM0FRzcuTHbOsXYD8galaeved7jxR0DveuM4z
	 7d7032nHCyU/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D08CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176439358.6334.14986352379915616795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088350e19f617c2e34f4a221f3c56609939013bedb029d81040dad6c5a1e9f4f
Date: Wed, 29 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761764393
