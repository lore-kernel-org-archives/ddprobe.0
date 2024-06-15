Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FBB93BBF2
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718472503; cv=none; b=bCe+hMLScTcPewrFXCE/DsUjrv6taP305czeAisLGJTM9bPJmKJ78+x/6ZyF135AeuXVY4Fsl0cljpxC+367kZljsS3gJUNXgBH2fSI9b+NDgPzBBHAtPzeBOVBcO3xMfSYG5yQ9k31MfV7SNCgpE3Bb9SMrFCp4I7LQB88LdMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718472503; c=relaxed/simple;
	bh=Pg4vJVu32jyymrxoIF22MmTELSL8TpIu6chcouOWh4E=;
	h=To:Subject:From:Message-Id:Date; b=Pb/u15xKapuJ2e5xLx4icj6tBzLzoGIoiTMD/l9U89kmnTh32A6PCB+aB2d+Ty7Mneg57n+uleUrH3XcoO/HG4Yd+a6q1sojmzpRK317/A3jTDmCf2w32fyMKMLrT1McRrEuGskEzgWjAfNBbdzx9PZypyeBlFjW/ScWH6lgr1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZmsLxnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZmsLxnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0B8C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718472502;
	bh=Pg4vJVu32jyymrxoIF22MmTELSL8TpIu6chcouOWh4E=;
	h=To:Subject:From:Date:From;
	b=qZmsLxnmWnbPWpGk96aYnH4SMMrztd6IAkuhhEyc3+LWCLKxK8cMlU41dV7SYQoUx
	 jGT+zGE92g1kOu26jjcxFUc2lCzy6PUUAk8P30YWqjObzhqEl8gppuRGh6Cdmqvmum
	 riPE+5ytA1oVuaMu5lrQQjfHor/t1tQ3Zdlo4b/3ocZQIEiFz+fZVEC3yLlZFo02hb
	 y87qodhSTKsK+5JUBG9x5+8Y2yODqw4HhcXlCD0Ds2V0WzJ3Owq/Lq6q6ZlHsZUY14
	 7CrNzyX5khb2JSTtETjC0Z2qXGGagEU73wdW85w6DknwfvkofFWq8TAiqYWJ+Pw4uH
	 FZ2oR81kZFD5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5E2C27C7B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847250279.28979.3139981479418052730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a97c8ac71117d2e7c5c6007cc8adeac1de628815a21f6bffcb0895bd355fcf6
Date: Sat, 15 Jun 2024 17:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718472502
