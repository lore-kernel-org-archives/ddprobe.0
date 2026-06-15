Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C79403E96
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781538994; cv=none; b=riNnc/5J/l7SCQtgS+e4NS3AGbQjA6SRLqkUX5SO0WqCe1ETVArewAIlcd80txaA0YYkCCjrE5TSy+UWOajU47+RJfbqG8Fn3ATsGsBA+xXaiJWyfXQeGN+eTNsU0dtCKoYMcvTCySyxyFijaoKlf2bkid/BnWUeLDC3cwpUcKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781538994; c=relaxed/simple;
	bh=vrbrhYxYFwAa6EeMbrqCxPCgv53HWtzQvl3C+fT8nCQ=;
	h=To:Subject:From:Message-Id:Date; b=bvhNTtc3CP1ZxXD7MhAwHre5KZNjq9h/siejH/mEsakNan6ZhO3hw9RJkG06xspqCbTrqmhBKHZPQaQFvAzkU3ylTR53JVa8MJyAP8Mszb+uZOoYLk2CfuJtPwM+xdsd5dp8MCxiQbamDmb3VX0RFsBts08EPc3vz1NCfcTRHeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+gMmPXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+gMmPXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE727C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781538993;
	bh=vrbrhYxYFwAa6EeMbrqCxPCgv53HWtzQvl3C+fT8nCQ=;
	h=To:Subject:From:Date:From;
	b=u+gMmPXdp9sEuRlRc/9wrrsh1mgbKAZUcv5G4cdfDHjH9L8mxJ/F+kj5VY9KAT5ZY
	 PKR5M8SqF8CV6+TYsDOmum5Igu7DcIW2QuqYjprs5KpqkupCmXxaHxf9uKwAQQ0BW9
	 art4HDXZPPiXjoCcnf+PfReUnTSKzLmzvOt8rjgcwrCdzKBuF/KuZGgjBB3O+PRmkg
	 G69tHpkm0V2RVTkxlUgUFpNxL9N4IRWhbJok/00CKlB46SowUnoq6X4CE73ReuYVsV
	 av61crd4YHo2UWYHBecDp10eMJFXNqENDjdVCT7VUayotDMONZiI3/oxv6K2eQncHA
	 hPmd0whPgpGCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21FACD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153899371.27133.12204056566027926068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b073891494a187e113d06eadea7abd9aa334409c84c31e85ea80b264ff596931
Date: Mon, 15 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781538993
