Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C26136D
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729341954; cv=none; b=okUKYgUVLrbd1w/X/43OZ0KjBbD+9NhrLDraZEoIXRcXNROO7lGCk+l2uMbwP5kC2G7adkcFNHCVWuOr6YSXO9yJVZwi6HCm3R/Xy0aqWSVUbD1fgOlbGpP6ADjt+92WCm0LCR4xosblvfRte1dF/l3mVxApSGD+67Y0BUJ0J9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729341954; c=relaxed/simple;
	bh=vItZ1D13ldbvJ4EQLfMmpmhtRXVNZnwneqcGEx8lWBQ=;
	h=To:Subject:From:Message-Id:Date; b=RfTsiLUXVR76pn0a5FFlZPTdCHZE5dbIyBgePJzOHCnfMLodlnLAGmYlDUZLq1YcppcE9+eV045Q/zvSMAGF/2C2BN9AMPO8v4UuIpsIv2/TDv61LVyn8vZiLN962x81JC1d9OvYQ9sD437yN9nf844tuLB87q+6+eIEkQDu7Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgNErAr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgNErAr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB35C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729341953;
	bh=vItZ1D13ldbvJ4EQLfMmpmhtRXVNZnwneqcGEx8lWBQ=;
	h=To:Subject:From:Date:From;
	b=cgNErAr+3KHC50owYCuXKpw9rLH+pmkbOwQahwwR1uiRlceRhsoH6Xq4hSUQTt/mm
	 5/Qv81WBlu4nCEgpHpYHJr5yxAA+vEEECIfIA5p/dQCT1nCEdifOo8SN2JLx0Nyvq/
	 2cNcXjvmJAcpfTVMJFAnot7sL9bPi8ymAHNB4IhZjcvwqOlx/vAIRkL3GXeiFLC+jW
	 FcDlLfe5tp6qLrDOoDYgBYIRgcEmqMLfqu8YJN/L9tkLtoR/rpWXyhlSwl0HxFfTSl
	 LMxRP7SwpAjDT1SoEUAl7uTrtG0qJOro71gFnF5JytBAu4gZa6l6cFkg50O/1b1d2M
	 +rQoYBuPokfLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ACDD3C90F
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172934195358.11711.17190232832310098638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0080113101df207e5d39cb61086726d0bd0879aa6669336cb0d13aab9c6b2f3
Date: Sat, 19 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729341953
