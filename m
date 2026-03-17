Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE6433BBA2
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773719694; cv=none; b=QqOko3HwqCibFglqa1Sooz6g9+ae82wow0/33nN3pUeDrGTTey4xK73Md6iE6ai55SCcb5yCN36HCDdurhvkbYQzNXtFQii1tpALuyUlI9dChctNlk/1rOQ9jzamuTPNZig8ZuY0Hz/fnPjhY0ML8OIXX3QcwgOo3We6d8WWAos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773719694; c=relaxed/simple;
	bh=nyivCttGPuTo8aW7rfv3b52Rw/d66vtMf+e/pdUze8c=;
	h=To:Subject:From:Message-Id:Date; b=efNEMZBCQr+L0vyEYo/eJ/YX9FQrgKxcu5DLLNZMzTK/A+CpUvU1eEFZKoGzEb5YMy/73iwlF+iS/dkCMJHZ+tdlNTJxhB9yrk/YUi9Xcd7ka0HTxxQPQBD/p+NMx82eY9yhpTzBKJoYfjOsNOnSl9odKxVPUsjg3J0CheS6NMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4l7Kxvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4l7Kxvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD64BC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773719693;
	bh=nyivCttGPuTo8aW7rfv3b52Rw/d66vtMf+e/pdUze8c=;
	h=To:Subject:From:Date:From;
	b=E4l7KxvpDeuQTqybw9a5kAJfZBV+4lviqWlig50X8CLSpIAN2l0LZr0Y6RLBt57ZT
	 2NdmnahNG+j2h0oXZ3MjwikShtIhOqFS82Zsv0/NUB6ROgPGJ0R5Ic7EgDIA60xivR
	 WWqGs6kAl9bj0lNAxa/LvPu2y1527rvVZYwE0/CVkJF7jekmGKS/WR5GushI416bU2
	 CAPzzf4jUFbn6Wc+VjIeP08VMFbSt3GLp0iOyZO50F5kH7pP60f+vo9R4oj57oN1f9
	 diYVhb2bSFcjf3r2yBAeXWx3vQDFdb9Gp3GLzhQHM0lDyq+/HKOV+6x0WM1fKQqwWD
	 6ULtqcEQy5Qpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAFFFB5EAC
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371969363.22937.8846536135553210670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b514db1b9122699ac10713a46fce438b29dea44d17cdbcc2061d289c82f8695
Date: Tue, 17 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773719693
