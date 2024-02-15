Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B947EC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707959297; cv=none; b=bcrg+5hO8TY/iptknuBuEsmPEycgNdMbn/9qrfC+suwG4APALP43dmX5HHWPo1LMm4vDslVA3WrjCDCJPXryL8qgSJyw3++qAQRslWaC0qRnBQpRar/LfUvy/eSzxHA+0+9ZAbmKaBEqf4TtEj+paNpBISXfzUR5OnWtYARxDW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707959297; c=relaxed/simple;
	bh=VgyFwFd4SfdusdqSVe4WB1izmaCWZ/Qm82XvzlQwfWI=;
	h=To:Subject:From:Message-Id:Date; b=rZuFOsXQzn4MqnaTlAmM3/OVnTBqVvK8veqItyq44fefSb86SKKPbuu8vG8i/H/jRAQCjQdqjQSjtu02r3enaMQmXW7H+C/1K+847Y8ChaO9hlXB6+3p4WF1h4F+uveHlxrE4A8tEI/GbmP+1M8URxpDMMew6UjfWmXJ/dtSZgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeA0qq1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeA0qq1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A950C433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707959296;
	bh=VgyFwFd4SfdusdqSVe4WB1izmaCWZ/Qm82XvzlQwfWI=;
	h=To:Subject:From:Date:From;
	b=DeA0qq1EOg1wyNBWGgp5RdfZGymPEiyndgdpDxmmd5XbRn3Dt1yA1O/w3fFzsUNMF
	 8KNfNkEZEkuSrk0IiKdbPdjUtUcRjjmmKoMwqSAbRCLeZNQCC36lGL1u8I0Lx4LI7d
	 cf+csthBfQHcXHa0LWoDmwRwl3CF/rdupdT3Q4Q72H5rUUBo04nmTowAovvXZ1bAM+
	 ik7cYB2L80EIWYkRiN5r+SEUy8q613OPn5JG2H0SXgvZ30fo8RMuz9Lm/DWO/yNMOY
	 X5T7FVrnAvGBDHXw353dfjhfpe7CUBPNRxQiYtpaUZ4BGusXVi3DQlnAX21FvcYZ40
	 /Izcn+u9UhU1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61404C48BC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170795929638.13280.12971154374863855330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c7b48604c52e889d1563c8eb4b418c26db44214a118ff95661bda54a1670f0
Date: Thu, 15 Feb 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707959296
