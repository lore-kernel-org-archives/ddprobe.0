Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E299207A0B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765450374; cv=none; b=s1rv5OnZezY+OKSC8j3SdmAEz+mjjrw8xP0TWiLbT/IxwvcbnQ/CcUOCLllUlPkWGpWbz0Ev3n6bWwuYu/V01EXoPLA16OwN7fpOJhIgbxna9rSeZHthWynyprhG6lTH7PVbTAXvpZHtBmqtWwcGFNr9Q5IKO48Rg0HUw0+Gd08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765450374; c=relaxed/simple;
	bh=clcV0a35+5Cd6gs788ifTcLCnUFNlu7PEB6bLi7qQH8=;
	h=To:Subject:From:Message-Id:Date; b=btt9qM6WNLOhGtvsrdqgeHN181NW5df/rs0QNgMgr+pCzlWlWbfhNmCKg2Q0aTnjcFCYFb596tOUuA0BNPjCzgqzhcQNbZ5V98hD7ucwhjLwqDOyggVEvWR7t/6ItJm/VTZAx78PwWytNwcgpzCPUZykMOVXjXHnRwpUyzPp4ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vtl53TEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vtl53TEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB51C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765450373;
	bh=clcV0a35+5Cd6gs788ifTcLCnUFNlu7PEB6bLi7qQH8=;
	h=To:Subject:From:Date:From;
	b=Vtl53TEEq/YR8j7LyUzCag9bH7yhqtHCl9qpbPCTGDrH7tdcVg8oCfZLKJcQlD0Hm
	 QnaWip21uQDakgahQZPOYuixK7Gt1ljQPJAvTW9oYDlKoRqt42xZUr/nP5/cPvmVqm
	 qf+3vHWy1SoQyMg0INrsCK9pYC6AASn+u2ZUDI9K85S/hRXiJkW+XAQieeEfM7iSnj
	 dBncn5F7CG2d07FaGA6GZteAe5VCEFV72Wp9lOgCM6TBb2LiyJCQsAoKztqc/0aMRf
	 mUGUoR/wsFcYRK/xVvdsR/gGr+w7lvJjr/aWG0lDOtS7fsowJB6kUVSgxONJt705l+
	 ApbRHZucynlPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A74ED41C20
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545037359.2038.3279740060693909733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5eeb9a567ed6ecc2845657e6c63e391ee31c564a20446f7b13311bf70868000
Date: Thu, 11 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765450373
