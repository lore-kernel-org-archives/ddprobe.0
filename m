Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C232F13C8FF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753348793; cv=none; b=FaPRT6fvAZWhsy0moMEQtSWNKurrYXzeMiMGB/4/8HcDz3g3dmz77C1XmAJtP9gy8u9Usfc+f9QF1vDXrTbuA6WbVSrbRES7cEcLRqt35tDK223uVwbmLpIlqAXc/Y0X8PujANRtVN/g1leoIixBHZdU7kPV8rkjUUaoTTBqu1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753348793; c=relaxed/simple;
	bh=uEez/A+J8JEMpjL8GeGpyqFlIKIxxLd1TswhQAUdkZc=;
	h=To:Subject:From:Message-Id:Date; b=qzDFLeWDfutdTXqRjeloYNp2aqkf34AYtw7rnaQa2Y7M7+HughC80WeLdSzzv6hfOrR7fEWR16y4FU1WUeA9OH+OOrprAKt/ILk4LkyLgFqo17i/oEHUyyZd4wmjcSTQRr/VWXZDtHiky05cxfk1zmg42O7ShMB8ejlLcX7ldyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWvSd4Fd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWvSd4Fd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F64C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753348793;
	bh=uEez/A+J8JEMpjL8GeGpyqFlIKIxxLd1TswhQAUdkZc=;
	h=To:Subject:From:Date:From;
	b=RWvSd4Fd+dXQV9YYpEJ6DXC65HtQWbWLzbFdEDOGvGVgp9XNfQqOL1C57Tm9CcRH7
	 +SSHcrqLAVds6kCHiN18D5IrS8t8m3jA1CumGQVe3KKWUNvUxRC5MRa4wHgrTNPbEI
	 iaWIomXpGnrUAWYyrbzlS/ZT8XDStOZlKLUmt597DqKYqwM+iZM0cMMzPCu1Aiypyh
	 ZMzoIw1eYOHtNV9wi7WIcUO96KgJpxjQFU/rkfz/CBq4InchXbdPkr/8pIpHFSdk3B
	 vOrqAtDIONt5WHKwwwsmcusTuMawo4B9esM6LSy9ujrHY7XGjrGKzSXsq9rGYgb9kU
	 /59fZCiKRV8uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93989C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334879358.20002.8697574958745352117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ef7d3d0c006d12aa4ea776372df471cfe219a5c7897775891363e54aea598f
Date: Thu, 24 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753348793
