Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10413214204
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776681454; cv=none; b=nEvXJ6jgc5KUm9OD9U5W6hyEJduw3c8fLUVeTDW4fx4r2tKXaDfGhbhZijMuBfywCc20VERjOR38DGb9kLxkiADb08m4xZD1By9Fbkxkx64/Oo1x3VEnVUrdeTT9UzQ/loQSY8z0XxFyN9sG6kNe4rJ/RBYCqvQZcrGMzQ9pEJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776681454; c=relaxed/simple;
	bh=wLjVyBCrjd2TdFHDkCEsLm0ViN+TVcS6rmb9tLEPves=;
	h=To:Subject:From:Message-Id:Date; b=rTABYV+1vOyRfmTpyTlIcIGzgL64U23+Iig2HeKNrn6q6IrXLDnj/FRLrjUivq11ig5l5ZgCJ+6tZGbtaWDokgp2Bvjj+VpUK29NmXudYqzxupKZ0UoFfctorfy8TP28n1V3T3asRY0g9TRFJuzwP/MuPP5k8tlan64vL7rlUP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKUUJx6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKUUJx6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6A5C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776681453;
	bh=wLjVyBCrjd2TdFHDkCEsLm0ViN+TVcS6rmb9tLEPves=;
	h=To:Subject:From:Date:From;
	b=VKUUJx6cNdM4GjLt4JcTGUkM4NWljQrdNEhQ30YsQqhYWoCRMIJ0BEcqPQgOF6e39
	 Z766d2kjj8bjgOoUo4GlMI6TI84GheMj937n9SzyzZkycTZ/FgY++BFQp5sO/VDb5e
	 E2nOwteJBiZ6YzxsKYv78xIKYVdZN32Ya9yzeK2r5pTv73CYaYg9ZYLyyemqc+kqRL
	 laJQ+sxBuKGzfpaVlPnN7GsGpZo59eLPFHjwH+a9kXeQDuREHAGXxj3B042qui0VtJ
	 d3hq4rxmpXbGRp4TdpgU6tzNtIBTTp73ldUl7d5kedbxpmkeFPv17UsPwC/29UirZQ
	 5DnpUl+SeEUEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB06EF5580C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668145369.21486.5138645827013231618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71e3ea01bb223a9621e2d7b683a667d72194c316577a8900f1bed65b93e03bf
Date: Mon, 20 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776681453
