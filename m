Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C491DE89C
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733169354; cv=none; b=BD46RklLt7ZAK0XrSfWV1f91tgVUzld8kYOGXwKEhIQ6iVbgaD1jbYa3B0o3D7jg4J1XxztCCNEpeVBUH0A7kVS387dQULw4x8vg4xjlklde8zZuacGNv/Djozfc9nIquNF4r795+BbRv4vx7GrH1rLbnCtcqyUx3I8NCvvTb14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733169354; c=relaxed/simple;
	bh=3769/X3LgQRjjwnxuflpeWgC4/e1qPo+3bWr6nCvU44=;
	h=To:Subject:From:Message-Id:Date; b=YZShvpgzrk8vNAarYpOFhkEs01PpfYupSUmjfmMxf6MtwG5RZtRwqp78GhmZXPnszWnGga2bYZxA41u5ojuQYe8s4GsaqjZZLzwYqwvqCItrf4f4hPJNDS49NszNcq/BwypQh0ELhsvIw3kVtLngzGX6Uf1fxS3Xco3GfO6hS8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGUISjj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGUISjj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD717C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733169353;
	bh=3769/X3LgQRjjwnxuflpeWgC4/e1qPo+3bWr6nCvU44=;
	h=To:Subject:From:Date:From;
	b=LGUISjj0ZBR7iO3m8DO0MgqiUW4jmNU7/4ZPSzMNyhvY8d/w28WhKhZouVRO7UVpT
	 5YwOlgHU00Wc781eKPQ30bNEI0THtQIjc5YUG7pBj8OKQqSujPtS1t3eD8TQPwTSZF
	 FWFBCrUWoH2zpcQux7GTl1S4hM6BTibeny9O4PPFTotOcNL4jrpLJpUtX2OcxKsdhd
	 icRGsYsOSMuq9OgROCI4d8cCLAfNIEY1zcfFQNIJQU3QFeFd/qWut0d1XgUWThEJEL
	 PembSKO1MkWyxScP+oPBU+gydmvYXvd6Rf0gwaWaigHGd/nx5JsfIhZetMqORZd0Ax
	 BBoXWkmzFj6Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9822DE69E8D
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173316935359.16989.9226901617022364097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8e69a1944b001e93b3cac53fd9d49242ec107a21614aef0ba71797a0fcd985
Date: Mon, 02 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733169353
