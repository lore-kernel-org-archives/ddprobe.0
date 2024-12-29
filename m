Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3885A210FB
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735497954; cv=none; b=C1QL5RuJHHE5aedbVUNQlol7iqSDgdDnWFz/MVyuNMHXtsk4mw+/fPb0v20HETZG9Jr1MjM6w+WxFcfCyGqKsvMULWAPQ4pnP3JDa+urOEru8I79fYfBm2DEWwSArVUqKdK/813RYbfTe6Fa6X1NoxBNIRYFuLruBSO8cqw+up4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735497954; c=relaxed/simple;
	bh=1fId28wjcdlNwhcNY96VYZa91UOxkVGRw1D/AGus5A8=;
	h=To:Subject:From:Message-Id:Date; b=Pgjr3L1R4plRpBWrposlOWLJ00G6qiEHfJcOV5Y37AIH2kbforKUy6dL8I56Goky6DfXZsEuDWcV6aFiSy+iq2EluHLFWHlcikXRHhthzteeBakcS9A1ggiaVviqzMzPrw8WmCiVKKQjfLrAWBzUucFa4mokwEkFSYPWA9zfKfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCBUWD5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCBUWD5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ABEC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735497953;
	bh=1fId28wjcdlNwhcNY96VYZa91UOxkVGRw1D/AGus5A8=;
	h=To:Subject:From:Date:From;
	b=lCBUWD5QT/lSLewpGLh0SCetQvC7Hrt0xJaVIOh7c/saY3tXuZu0XleiC5z8wX3Od
	 5qDKArZCTdpuy8wEzdm6OodhDc61JFLmUHdPTZ/0Q9Pf18GYOQ+ACmFQmSeG1ZVwQA
	 72BVdqSnEq1shr91zyGgDoK6v2wJer8z4lZmmGcJncjLKd209/ptJZFoeg5HIloF11
	 EaOhvzcq9fPV6dRKWB8seAx16MCuw0R1KW4m8FkwoZHtKGkdX5jk2iKqQaiDFnTDBF
	 VXe38w8nAhgV7mOyxZbCkdF09B1s9YyybHiD3+ttrQ2Ou1nzoMgsGFB/t4Ly7YOxve
	 Lv8DcrDK5yqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D00FE7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173549795363.18873.18294614922014860845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73029eae1ec0ce8c641de8073e742e4b7dbc6b86f3fb7e6a1db6c4021e57571f
Date: Sun, 29 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735497953
