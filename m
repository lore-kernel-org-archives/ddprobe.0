Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6146015DBAE
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719924923; cv=none; b=E8jtYFs+BHHwtZqKVnFahgSu5YeED9MEL5Z+YP6WulQkBGiHWoNV8ujgTtvDivm4lQU5UPDX8j4nTmy02Qg/xC1EAp8Rtdk6cXxUVm7/QfJDRKLUlaExy4ZdSQUFjCZx13ZehbyrWk33Fx/htlUgDJh8rFkHMNwFOn9yIM7wucI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719924923; c=relaxed/simple;
	bh=Cu0zmrC4PwSsnm4fvBKmbBNlao87i0/WlQrsgZwFJjg=;
	h=To:Subject:From:Message-Id:Date; b=PF7ZQL6BZNIPvj/vv/JB0XHSR5RVOZbTZ2ow2MaisQtEmx6Gcf8lM2E5yY3WYUF4+GQsMO5bRLnmrPBnZWV7exaMphINL10lnMPRoaN9JazcbIxzmnr9aakTXj4Ijx5xU4Io1FYv8BD2ZBtNOBzRZxktGxGWA7lr5vf3aluVgNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRK5dDMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRK5dDMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1809C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719924922;
	bh=Cu0zmrC4PwSsnm4fvBKmbBNlao87i0/WlQrsgZwFJjg=;
	h=To:Subject:From:Date:From;
	b=eRK5dDMnDSjvizsKtu1QJTrwdRtAup7aE1a2F8j6ZCTIbdhWlQUUdtWgm/k1Q1WQ3
	 mr084GdiNhr6OlXQp8k2PZ7hJRS4j+oAHZ1woaMC3AXPmBq3dAtjQCF/QkPOc5+YSY
	 h9El6jP0K8d8NYZUaqzr1rZMt+VzFUZnpEG4i97i02r4fLaepRhX4j1dDmwkgrW25i
	 g1+UZxYeqjK6CI5UbDBi7DBTXVwBTUa/apcu/uz7UqYWD/OLC5J3auZH22RbC/gOD2
	 c2+FGnZ2e6+/PavzSAiMQ/QAljf7RfUhrdJH7TGuh1IXjySPBzDlLznJ5iwtYxHW1q
	 +BvNs2fE79FNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8CAC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992492276.3135.15322122939799808598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa47a6e2420d7191a2ff3059ec71292f06dffb0b4cf71b792473831e95427d9
Date: Tue, 02 Jul 2024 12:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719924922
