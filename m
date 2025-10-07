Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7991991CA
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759835993; cv=none; b=SwRO48CMgUc6JG7CmQc6TB0gaFREaox4eCVzOGEWGE/VR0ST1R2axuE32Ii9fJbJyuZgQ+GEXF+wXQ5l0LD1Otg6fNu4XvP6/8MfntLc2t7aE6ae8/wDyUBctljioMO4xi6QEfqRJffwlg2ptbgTZkpZOEVZymkPG95w5tghH4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759835993; c=relaxed/simple;
	bh=QkCo0wAZOhOqvafBd/R0mx7K4OUNRRqaL8nYtyr2x9A=;
	h=To:Subject:From:Message-Id:Date; b=HXXQmquKNzLVIj25VXg6d7dzIZFq0dJlq7n6UYwHx3w/NwSWiNNyv29AZbFkrXrYPKkfggDpQTPvZaGPDLLCk1CDEIAiXCoRfIdjZxKws006Q5ii+LqlCIe1tF7/H8MKDiAEvaD/VzQelKQvc76Frdo/wJq27KcHZ3n8E7420+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHZb4UHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHZb4UHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A135AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759835993;
	bh=QkCo0wAZOhOqvafBd/R0mx7K4OUNRRqaL8nYtyr2x9A=;
	h=To:Subject:From:Date:From;
	b=VHZb4UHLB0KIDzCqlFxHUwQCM+B4aQ2eHjcnH3ijX3Crupb7VKHmgcJxKlEukBNzJ
	 /9c/S81BWmUsAGSHHWYYAeF67BjV0dQyxz65SpPie/YW4aeNwzSby1R+eweluetTnr
	 z2XpvXq8c+fHWIYSAjS2t2W3T9ErmyTUYsNp7qj3gR20pkMz2GPq9F0ue4iWYm50Wq
	 eclf9PAjJdBV8GcvC9x1hnYu5Tx9VmJK/nVmsjTdVWvQEFAdgefdeNCQVwpHTGtTER
	 IwDesY8C4ThqhQZ9BRTC22Yf+pAdZ2JLZ8omxg2x9/kub85cjdQ70WCqKQtXjkfCyk
	 XXeS2xbsEMikw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B0CCA472
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983599358.7128.4574524312210241701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42b92cc2312e25f8b509e4ade0086267f963a0c62edef5f6f34212179aa0991
Date: Tue, 07 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759835993
