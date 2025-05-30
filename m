Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFF5BE4A
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748564995; cv=none; b=koQdvlDm98RnydvwcsAlXY6smLZTjovaeRNjEDaeuoKxYZoeEmA/ulkKMBZnE9YphBrappNL2tb8NGj7lDP64je/iwwpLn/c07ENMCLoObBroJeagT4GM1AnAlXH0VernBb1BOu9c1hrX2PU7SC+Ksu8DhcGmSv/p4FdbW5yfeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748564995; c=relaxed/simple;
	bh=Vs+gXxkVJnlyR7godlajUlPSBXvUTeFj3qyJyX4wUQI=;
	h=To:Subject:From:Message-Id:Date; b=jgBei39JWq2CuS7B0mbRzQYpWzC41dKNWik3yEaiSR/pG0kK4J3zho5OsVDNkM2my1iFJ05csxA0o6sYQrE4TJlYdeENkDLPG00MAxVfLGCbOLOmRlGe5iq3YlP/AEPQxB7SDDRn9Fufho1b6b3VQUybKysMxihVqixN8v99ZBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ev5ahOqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ev5ahOqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DDAC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748564993;
	bh=Vs+gXxkVJnlyR7godlajUlPSBXvUTeFj3qyJyX4wUQI=;
	h=To:Subject:From:Date:From;
	b=ev5ahOqovHYT3K0sI04KefMBZxi2XMN3rohCco8AwBy5W4YkfSZWQh21rWNR/4dEN
	 gijQtVOMWIn9vvcnGfVPnTKXaV3iyYg8vE3JrgYPV4/5AGHH501wp1yf+SmIRj7wzx
	 hCTbLEaXo0wZmXXe1CEj6fXLHLAizUfqCbkep01idzfYzwq/Dk7UzXlnK3x+CEy0tV
	 YLWiUFvX9mePCGCZa9f8PUw3a/vC3ZwBhH9iRXk7sXIExHz/R0dEtZROoUNs9Vxsoz
	 //iUk4fVlgw4UIEnfBeXk/kEoXDht3+EKhVpt9in/2lMAp9OIm7FQRHoICN6M9J0Rr
	 aIAHQQVDK/aew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E6C54FB3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856499357.6449.1555446051913372190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e577b3f16a9eaddd92d9714e6a8f617bae31f982af87ad84ba3d355b6f70129
Date: Fri, 30 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748564993
