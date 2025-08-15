Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D1F2C21C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755224994; cv=none; b=Hg5FevmGNO4iJQCvMGaeeS61sPZ+LOZW2sBgX5CMEruI4SuPLPbcqR5s4gAgHiTVCq5lvxTrHP3sSDS8Q/ne9vVYfR/chEx+Fdulcfc1eHC5bS9UNUA6kWyUdHRaz6IWowUY0D4C6Cl5fnhCLh82WAHM9qn4tKWdK0vZr8Gw93s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755224994; c=relaxed/simple;
	bh=YjfIhfCHtd5rrSNtT8G+l0kcPW/HvFQ9HZ0RiruweEo=;
	h=To:Subject:From:Message-Id:Date; b=CLCMUw7jF9wtHDD/QtCSHpxj7kel1Xk8B2AESqJM/eZHENVdPTHVCPc1F7QbzIZem8YgwowbhYTzKD39K3hz7yLt5EQlVPcaLvoprwZRuhgGgAMNDLAya3tUqsG6alMJyZZa/O9dz4ieznN9z6hZUBV6KMlte2Olv6VLYliwbQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQQjuzYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQQjuzYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC66C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755224993;
	bh=YjfIhfCHtd5rrSNtT8G+l0kcPW/HvFQ9HZ0RiruweEo=;
	h=To:Subject:From:Date:From;
	b=TQQjuzYyzt1G15BOgEplnNEeTHmFcH6do0dGVGxdgVcIeKfCIV2ovqlwJBDLF6Zlm
	 2eV2dkliIF4jpUj7Bgo5XiQqo6/87NidtcraNMHnTDuDBY5OU84vtdvEohQ9HubAmB
	 QTz+0c2c0ywer65vIWtKMUUHEkYRWSNx4vRXNmewk5OeHK649APigUz0XNOri5TwjH
	 N+meYSIdGWhF+jmVKT+p0vzU/HKUQXNFIPkdOfkddxdsGTwxZM40Bu6vsIZfhxoaoO
	 1ZGXcCalT+Lkg5a8+DpBiuveWMYRobpKISOZ96nlxRT6RNMlu4kNw1PHCH6UqijF6w
	 PrM/o+2ABEmrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9210DCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522499358.8061.14630098823366223306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f9105fb82baee54a9b4ecb4c3501341d24eba38a70b04144e762afb094550f4
Date: Fri, 15 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755224993
