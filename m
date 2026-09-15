Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590334AE12C
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789509636; cv=none; b=ECAkxIPHe5XI60T06XJEU6gmJIHJuC63Pyf10e+g++l4b2WdEIqauqlWg+axdtGvO3ist/3TLhNzKttXcbr7NxF28AOyKYTyisWC+xez8zIVE80/gkxhalC0m4Z7Y2OdOfsPxspzAjHBpQGab7/Dxk0jmiK2ttIODNthM8rUhqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789509636; c=relaxed/simple;
	bh=NzepxxcKPvwv1vMIgL4c7JJkGJjouikEg2HXf0YgK6g=;
	h=To:Subject:From:Message-Id:Date; b=Z5ZCPe/pT5Y5p5JzfSGESZMFSkIlI5+bM9B03JhvyH5nhhSyQehMCEn3LNcztBIKmbRksVUuk4JjBiQtshWyp6QNZ4TIHil19T5twnJdimOKRFpEPfnUYD6C5Uv4pMkc74FIarOpClXbPKcIXAi/njqTUm6aFV9UW+DqUtOW1FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhZ9jhF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhZ9jhF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD63C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789509633;
	bh=NzepxxcKPvwv1vMIgL4c7JJkGJjouikEg2HXf0YgK6g=;
	h=To:Subject:From:Date:From;
	b=LhZ9jhF18oAdW8JAU4bR7e+emTwrXrE2hbwb2kUrff8L8vXd/e5QxlbHb0R5bLzAP
	 3OAH2RTSu5KeQNGy+GNvyGaFLXwJELDwbG8X9WtQqncrf5RYoSdfFwCHMg1xKPvJKR
	 RDR4BlKvs1jNsCJ0GSMtUctuNn6Or8/je5raPdumtniJNV087UQKENDOcj41ZIgMez
	 Gd39Fk+5X8Ld4tSbTaCmWvT6sdb/H1vrc0iZ9ebbtRSFK414uxSzcaHHW/y+h3OGFK
	 iwhfuFr+MLRMSn4gYZYODwtcAMh7uMcYz5L30p/VOcsHyKi+BeDMKR1E/cfOAadG/N
	 17FYE1cSpNtyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A8C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950963369.11745.14206744660727758146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a627aec2d53a95f4698a6c3a5196ccf0d43837b87780de02e6e3d1a9b0c373e4
Date: Tue, 15 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789509633
