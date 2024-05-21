Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE141F947
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 11:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716289403; cv=none; b=NVtO50P0BQ71gEIQMGdNCmpOaMQqF7pm7lxVQIDk/Pn0HMLQkm4ltcHt4nOxyjXAfifTc5SkdzRfvxgf0bUNNtQBr6SvypQJrukw+wQyEqy3LxUu5z0EaFBryk9U82B8qGD3DzqbhZUVNe5tyA4wUMYEwLdGSfKGApB0TA+FBTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716289403; c=relaxed/simple;
	bh=gLN52biDllFbuQf1/+Jmr/68oGfdu3Z3pW9WzBhLG7Q=;
	h=To:Subject:From:Message-Id:Date; b=Sf9/4z1qGMEBc07QE6Ufly9N3TGp2p2GYYARmQpOpwbda9nD73ZTlNOzWTb0AlBc7E130qkiGEV0mZJHS7F8tKsdIMLC+RRJC596k1hEeUTgexNQOMEE+2CrRcJoC8MlVIxIja06UNsqzB8BjVcZT9Jmvh2lisotaFlYKxBNNaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uX4YX+S5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uX4YX+S5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79A8C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 11:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716289402;
	bh=gLN52biDllFbuQf1/+Jmr/68oGfdu3Z3pW9WzBhLG7Q=;
	h=To:Subject:From:Date:From;
	b=uX4YX+S5aK1ZdZK4/6maw6Nhj9BVUO5XUig48JnaxNkTKuHdBARq3s6zncKMi/nw8
	 hqiWSik4PPxBIsdcYN5VnB3n6UOA11hwKHdeSf280+8s/dxt1Gw7ZqgLZjt592WWXy
	 meVoqaLXe1f65ePdfOdhPRPo37qorI3UQz2kKdqAvUhAfrQeYpwhfOg+ia5yCkPLXS
	 3mCa2gUohTt4NlGg9d1bMTUsH7DLb9uwOZwrhMmMEncyjPvNP9n5mKF4tePysForN6
	 DA71+Q3+kWY327h0PZ64C7A7Eaohrz3Ox9IOlXkUm+tfbAIeD5Vdsb8ipc5ikMM8H9
	 MNQHlsoMwTBtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCACC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 11:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171628940276.32499.9859429682393025922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8587c04b893c94463890edd673648feda0214931703e587f1e21cc9ca7ec89
Date: Tue, 21 May 2024 11:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716289402
