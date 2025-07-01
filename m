Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E3B22094
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751375994; cv=none; b=JZ5jcVkX33ZUZw4SercR6wna6nJN+LuiASd3WOtfeGmbrfdGXKPHB49l+TG0FetQ+BdLkCmOfemvM2Mm+q8fUn0Yjb2AWolVD+dYicM7A1tHyR2M9uD8n1qJ9ozg7Qw6VsS4AIGIrQEi0ESwm5wmi9Fsc+jXGpf3DERaPLWW6D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751375994; c=relaxed/simple;
	bh=QHOryzoFGZE/Io+JC07aFn0IRdVRnzvwsBVm6ara25Y=;
	h=To:Subject:From:Message-Id:Date; b=LmWZRfV9iBFKcbsepRggZd3DI7Ad87liEIVAhicQJzq7y92qNBsZ+suboRCf6oFKw8CuubfjqW9S0h/lFWoOAMZmd7IptzPXK2DY/Gz9FbNx6IjCZtel45DYwxcUs7BZdMrog4fx07T+sNdQcGdauv5n7WJ+hfE3gjEf5VwRP6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXQY/flk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXQY/flk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61C2C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751375993;
	bh=QHOryzoFGZE/Io+JC07aFn0IRdVRnzvwsBVm6ara25Y=;
	h=To:Subject:From:Date:From;
	b=lXQY/flkToKDT8xnXNCRzR5QhwMebscsHYlPnfc8q8LUWmoOk8/0SPVd4Oip/U3/v
	 DLb7tXZmNqiaIcOzXoixumERiushdYwID7l/5WBvK4dt4KdCE8Twev6PylfEQo44CY
	 bjvvduAPkem6AUTD/qhOGwR+vpGMwKh6C7cl4/bLXYD0lE+8F69HmiZ4eVbNVMdeOa
	 CZdUFj57yU5jDypqzHcQfcUkSgmcBZikapzjDkIJtH0PnHv7lzAxM5nIqFa5hI6XHz
	 Bl7F60L6zfujpG4cBFRV5/+ZRCD6Xn3zDCP5niJvHdqJP04Dp3MpfuStZRVjKCiyAH
	 6q4DeT9svkKSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95894C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137599360.24090.8609213892451115685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68890877b140bd95459b7b01716e93ad5c2ab366a6cab35fedb45b2607ee8b4e
Date: Tue, 01 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751375993
