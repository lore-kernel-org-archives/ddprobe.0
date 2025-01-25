Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F29525A65C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737812754; cv=none; b=kdzpZ7zn0eTmVBDj6wDCLHa2nRA6RFP6sNSp4hxUky7/ZZEFnJeMdFxkjTH3w2hDJ/C0IyWrSO7GjwQ57jL36TQwXM7jR4EHBT9MhndS9PfiStYfAPMH7hjhdIVkdklCYmt8wQwLvZ4/anlPI5wLiJQnguduSFUh20vCIzDGZFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737812754; c=relaxed/simple;
	bh=UrNM03FRDqZRvJFnaH8SLes5IIguBRK06rjThOghk4Q=;
	h=To:Subject:From:Message-Id:Date; b=sfes9I+vlu+DcUNJNIVC2JEUDIYqb4uI5RCd+AV1vr01cNPR4DkTk3QM9RgwCmJYdh21RbFcC/jvyfOGO52RQsOudao4DlPf0oktoniEn0yxhBNf0c3mFSwcD3kPlEuf1JAZ+FhpwieCilg0mhwkKf4qJjDKhS4JNuzjRkU8dDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtERs0Oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtERs0Oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0B2C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737812753;
	bh=UrNM03FRDqZRvJFnaH8SLes5IIguBRK06rjThOghk4Q=;
	h=To:Subject:From:Date:From;
	b=jtERs0OhaBGml6TnPef3WkgP+HsQc4Nn+lPiveAMci/o7jCMN36dUDAqTKgJ8NIu/
	 abccGNf2Hfv5ny4cl3WqXPvqH7PfH9vvmMBkOgQIYuEZUcTebOdCB42t43NvE1OWHF
	 kc5vi/uJOsQ2rdnu1M/3l4FHimUNvcpoRlkoR3zrLUnCMMejTJRFKWyXK39mZ/7R41
	 EWYd/ZiAU4tAflxj6j05L3DUlvg7XWfGsLPoJHvr1lc2wj777Qdwqv3ri/0Ek92cSH
	 TiAxhwqvnQFJl/qqqNaDdjoSDZyAutrFd02ZfZ4xex6XNySvhGt+9KVJ8UR4pcUIs6
	 n2Y9btV04hhlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D6C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781275357.28941.15733278313701930112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c303eb2f5049c39033d6d691b5e05f3624d3452f57dda49561d05d70fca706
Date: Sat, 25 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737812753
