Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCDE438493
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789503634; cv=none; b=AmKvpJtJe+AGtUj00coHoTkiVfyE01sW3iCla3Q5LiLRz5p171S5i7cPV5QWL5pbBHsTqZZobWpx26Je6a6I5sGBgN+zg8YeeqLbdHGS9ftwcbgg1DCLvabaUQoUFWSZQcXhHmfs8aedsKuSXwqiU+OfCRDWr8ERRVv+iIx4ZWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789503634; c=relaxed/simple;
	bh=eaxQgIJU2j4FiSg7DAFwIwNC4FGNgQ5AWMt9xP9CSoc=;
	h=To:Subject:From:Message-Id:Date; b=cD3C7jwo87Mmv7qYd4wGL7edhiDN6pUi6YVmRFsLTyhJe+iR6iT2gKnle+FCsdzyA/ELBZGKg16bDkPhe/jOtZONx1UdCMug8I9eEIlDrr94FzqkPM/B8xF+xBiEkT21Gd24Gmgsjwz3UPXvz1yoWmfDQb2DnFRvehCmRfNHwt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWg/hgYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWg/hgYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C00C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789503633;
	bh=eaxQgIJU2j4FiSg7DAFwIwNC4FGNgQ5AWMt9xP9CSoc=;
	h=To:Subject:From:Date:From;
	b=MWg/hgYZxc8TbAhnyW0+UAAz+Yk+l4FjchGkmD3EFXp/4iGK3MX9P67y7+eMigSeS
	 Yk1OLIKreLw7K+j92OZ4VI66IvlNh8X1zoe3aY9+SVmDMfhRJ+QWYmbQxW6lmKGqQZ
	 7xTL28vEm9UDMetznA7fyZJdxY3mgJXwJsJrxPPyoraTwx8MlqBRfAVMr8Dq09Gqz9
	 IHuYleBoihKdbuihRuh/MeVWuMXpct0nLlbbsrrjOF1FmhjUDuQaplkXXqVNBScN9U
	 8wafwyAWaYDOfYt3psVb07VrvcR0bZrppPPsdGKvwikBk9yUrFSH3n84bl33Hz7gw4
	 LXwEVU2kEdoEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94ECC88E7D
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950363368.18790.4082199420388785880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e40e28f84c5b417c387ee2d254ae39c1054744cde8fd1f7ccddf4a0493f80e
Date: Tue, 15 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789503633
