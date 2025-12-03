Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A47D221FCF
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764745374; cv=none; b=C4sWXYokr1YKh6Rzj6nba7lDBq/rAJHSm6l8e9G2zvgRapEOCJe2/5Vysd+lu3VbZ8Kkm0BpE4NnLJRjBWALdO/qKv38zlGw9ZqJHOweemFnIsNqRnVvx/ljhDqOwQDLDqKpVefjTuXNuchggY0zSJirObT5ne+VluwmNT6f7gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764745374; c=relaxed/simple;
	bh=Ku+/pRkG2SACrm0hQdIlv7MUvdXtEeVx9uJJO149UEY=;
	h=To:Subject:From:Message-Id:Date; b=qVKTO0GrLeE81VH11gGQRrmO7Umd1iT6JXRz835DGROU+bOKs5xWBezRQ8fIO9+4Yl40Fklu3LJlIoEra9m38q6uaabBTnGB8Ezu98TNPxb3kM01katezy0WA5odg2VZZUKI2ro8nbecq2W7QG8yr4abGvpQZKcXlUeGlvY2M64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWYxIhkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWYxIhkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF11C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764745373;
	bh=Ku+/pRkG2SACrm0hQdIlv7MUvdXtEeVx9uJJO149UEY=;
	h=To:Subject:From:Date:From;
	b=VWYxIhkRkfplKonPwjvJhwNxj2F6QsFV+TrvfbqrtHJzDqBRDvg979l26uuFzsNwG
	 etcQpOBYy6EfEl20p2scCqPLYHW9L/qpUisv+2byyTpAmTXX89VNYtferVU0zYw1Xp
	 Ac2ay/e2idUTV3vNwUz+vLkUhCshA2ZFXfJ+MwNS6TOcekNw/zSL/3xRVqayAkKj/h
	 7frE4+FGT4OK/VM/9hendSd+CsLOh3NgUFlk18y+iKiYNlOLkDZ2iOmmNreFNLoCki
	 4DyT4gVbHihKXRMKIyUS+f+jS3aeYFyKaAOVBS80LHh0+2dxDcjmwFNOu0xtkNpv+V
	 TVwP0dqLXfSsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91154D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474537358.1263.9423876715226707566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0fa9cf79a3d6fada48b00dc4f704c0fc77dc0c6a52b3752dc535b02abfa7313
Date: Wed, 03 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764745373
