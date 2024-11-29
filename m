Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37284AD23
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732916754; cv=none; b=nX/VWcUQptd2Be7Jl3Fdh8YgsfYR1qWVQ5Oud9tB9XD+TorYYoqveIVRU/rbGgmENKpqIs5leV+JlikT9BN3l8JvaRspv6etWJWWlE/17EO1MmsK733ONJcEmxOJthL19Q2erUqp1Zxu4KqGVDFRzqsumVDGmf1G7+mcQVB7pyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732916754; c=relaxed/simple;
	bh=Er9mhqrUoIAQPOkZgidYt4mkZMtVRV9qVZCz7eOzY9Y=;
	h=To:Subject:From:Message-Id:Date; b=svKHezK4RZOVe7Q0S/jaCQ4zX/LMYbD5kWYzfWrOLsu/eZTm5ffrkN4vYTCAT6beW6HVlswKJl2tDGdjWpcYtq5Ga56Sz6I3zBd9ZusTj3TiiR8LBQcc1T+4n1MBuz3VNXFLdTVeyr133aF3fuusEMKVqCTisqAGjyabQsBpfZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXtaJF47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXtaJF47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70A5C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732916753;
	bh=Er9mhqrUoIAQPOkZgidYt4mkZMtVRV9qVZCz7eOzY9Y=;
	h=To:Subject:From:Date:From;
	b=tXtaJF47jR/6Mh7w4TLQEPjFYAkh0yQYSWXlJfYbYAU05G8/UIxPVNWnaXDgzODFm
	 vj9AuVkusBlkyrp1fdujKDjw7CaXAJOd7F6/j4Qfnv6EdlWL4Y5YyDqY+p29K10aKV
	 bpgFOueFM6uJN2eJNLXSL+x0dAVDvsFfhRkiYQv/jw/ke0yI7N/rsyVoX4CuF79rF8
	 VVLqPTUh0uJL3bo9mJmQ0vuCCI1i9eg9/ffaIqutmD86tbW5ePedZavASpmJxfkyno
	 lN0qhSwXrpvLzg29yzeVNrwfanwz3XXfooDelKD9/VaZFxqbmPr8aqKYmcW8OmoFXl
	 Pys304dbJqJrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D924D6EC0C
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291675363.14368.8896930301885231692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e75d03c08ec841df8f0fd5326f67d80471ff9c241c60946a1adbda2d190cc2a
Date: Fri, 29 Nov 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732916753
