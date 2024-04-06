Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6C72CCA0
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712406497; cv=none; b=OywWUZKVhOC4aQouw9jJsOnTKJ+Jso6Q+5mgHWX74MXD0tZJe0d4q/qTb/njTa/TtcRDeUXPUiG8c7fZfCXVIFCi7Ny/f8vbVqBh5UzDJbQ+YkJIIcN8lZCKpQ023d4KTHpbzBiz/HOmTXrXbVAnG6Ghh0c7IB7GUfIGLbSeE54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712406497; c=relaxed/simple;
	bh=eqTJUbD2qwZ5HdhyYjugFloBoJQ5XYrBZPrHFkMnwK4=;
	h=To:Subject:From:Message-Id:Date; b=R7it+g/1M35UyL6ZhrfekkleM9TAgv45lEX4iSXVPxrkK501LLLDTIAiMHEnYbq8Vm0yHB7xw0JkzO5R4oWhX+ldWcE6nuBljAGHlyt2aWPVhQPvFQqMMWCRYEFUX/V1OamR5zJELvRzwuAxM04iCtKoBK+jvDHEzHC+VUPqSK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3swdpBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3swdpBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2DEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712406496;
	bh=eqTJUbD2qwZ5HdhyYjugFloBoJQ5XYrBZPrHFkMnwK4=;
	h=To:Subject:From:Date:From;
	b=S3swdpBFJmXgr09ZlR9+0svS4tbTjPIq13H576B7/naL2sxyYA8rxwgLwo3RUKbW2
	 EOR8ERupIWDe5DiUrlJFEt9h4BCCaHyM5r7vSn1ChlGQD0nJx+BTlGnhUdjYc+3JC8
	 wKhCpCE3RibLlLepZaBJ9VMCIjwWRX5LF6MJEJ8FZ2BrPX1bPmrPIUdPr0FCsDLonf
	 qvxGttVvUglHJq/XwM/OcMMSMUD3HMQKuwn6XGG4JeYphxMPfUXDM9OjYYbL4AfOIi
	 y+VyVcTtzPTc/fguSCxGuiaEQzSOPPnpUS7Ye3uOUv/D8BNx78HShk/WjYuDuITYvP
	 7n5n1zm8mqhMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BD8C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171240649638.10149.9912474518631607348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f2ccfcc6c66a5d3beb6a75fa022070a64ea412c48bd8a4cd8b5cd410f704b3
Date: Sat, 06 Apr 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712406496
