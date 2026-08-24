Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7DD375AC6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787547034; cv=none; b=aFPTG1Rr2aZkIBa0OBj2vIcPhHRmqiTel+GLJAlHP+EnE/vBh7ilBGzrUKVhfUlGOuKMhRXnJrlaKRO9ZThmY7K3iJRs5lmx6qidpZOfBnEuXd4SyfIsFBXu0gi17yiUWFTrVVhh8p+GgvxH52xfB197a8lJNgyE/LFF2ZpiM0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787547034; c=relaxed/simple;
	bh=PYeOwGvM2+5Gee76p5ms5xlrNbQnZkcPQuKfHZNpfU8=;
	h=To:Subject:From:Message-Id:Date; b=I3LK+aUy8ozb0OF1D/3ttRj9RTJjvBXXIqxSxSSTU8oZpr7lZt+QBWewJMmLdFuUgLllRanlphHJJj0ggFnLqFyrBrE1std4p9MCS7zenI3SwdnNK5e4/scgGFoUWnCfnra/0IZWPta8PEt8EbcG493Vz182Dn0Q2d6pQN+nVUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Egy5mWN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Egy5mWN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF02BC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787547033;
	bh=PYeOwGvM2+5Gee76p5ms5xlrNbQnZkcPQuKfHZNpfU8=;
	h=To:Subject:From:Date:From;
	b=Egy5mWN6RzcwODZa0MNqU3zWuQIuYSoycL41cPepUzPQIME+rauFO8bE0CAo80SHS
	 IgG4aKkJMwZS5h3g3kS8KtQSCCuJMjL1XKX69ojxsdVqu8yClJWge/9EAYyxVjr2/D
	 rw7Up61zEgKzFo3d8lxFtN08Uthkd7OZW4pHKb9Cj+zeTsVJt1IJ08qiqffP47mtpu
	 yZMX8E3Z6Aq9YSxsEgbI5yOIdzhNXoU6HM0lpbNxUT+Rgy0clQUA216jXYUUmfJ9kv
	 PIUDrfXLSPFX0SJadogX3ZtYIMForWKS6TThkZt8MNr7+sCK0HpfuoJN/Cc8jUjc7H
	 iuajruWpfi/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB26DC5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754703369.29108.8049673062790927798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add6643fee4e213cd49aa642209df5765899a121ab07d4a5f4594cef14f0708e
Date: Mon, 24 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787547033
