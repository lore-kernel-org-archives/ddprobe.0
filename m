Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0438332EAD
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776568655; cv=none; b=hLrIIQPP/mQFi8Kb7YAEwiJEbi3rsBqk//ZrxOAloyN6yXsRq8ufcZmewcgHLx4rqXu8MXbEr/mfTjc+kC19IesikzGD8hEin0+HFLjlE46qcsDlqWLWqyTOrau1tUjxSdxUKZseO/2W+lcb7lq8X9vP+a0WQnF0QlENa9i/+Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776568655; c=relaxed/simple;
	bh=gf6b3WUn/giYxW2xZkXSTAXhz8BMEMzU1fTg9cDMhIg=;
	h=To:Subject:From:Message-Id:Date; b=hW3ZDhjeR9Kop6CaIKSCcomQ6yGrciSFxGZqXpASIljkzffFnjgPdABEjzea/XqauLfknGP8P1zmY9xsnFiM1nE5JKmCeXNTEm+dEO3Ph0My7euNUnvlW3L7DQRO7LiuJS6P2nmBDhm5v8J+wmGMbnR032nD5C9mg6kEVReqfrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBeseRT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBeseRT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30DCC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776568653;
	bh=gf6b3WUn/giYxW2xZkXSTAXhz8BMEMzU1fTg9cDMhIg=;
	h=To:Subject:From:Date:From;
	b=fBeseRT4NvKaY3AtHUpHScZsOnnBQnEeq+6b5b3dXN3iith1+Lv3qWQKkFq2GYnKx
	 aswm6wCsB5Tv2Pszle1D0zzwKP5KIfABTo5q9Jo2Id3AcfUR43O60NEAUDtMSE4fZy
	 0pX6RiiebTqKx/eMCFl+1cP64OnddYhuB4NLSHa0xuxfG9EgmogkJ+W/5kKLF5mZ5A
	 w7gUmkiHZgPVR5CxEf4njJ1gqHJDAcSelYjo8zRbQJgkAbrxqn9MB2JC0q6f1pk32s
	 cNCNCBX+cQlpA0eVbLXzKjBW2uE1vnx7MTQHWx+S7zhOE4DScqjMsj/SX+zijUtl28
	 ybJ9KcqwEz91Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F4AF99C98
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656865369.8624.175522413785507399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f4394c1f8b5147f6c22066aa34844161c1813773d34fe99416524d27ccc620
Date: Sun, 19 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776568653
