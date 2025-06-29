Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335D21F1527
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751188794; cv=none; b=m1piGucrA10i07E0ci9rOP4HJG7dtpixMVbRZZmnXS7Gs/dGolxWhx7cVrn8tlKKhXr3qRbCQvOLvEA3v68N4YyHhagxBItMZYYM4te+VnIHoWN45R1Jb/yJESrVxlMoOy9obWIYIM0MxIb2jM6YamYMvsL008zhtz5HBKh16Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751188794; c=relaxed/simple;
	bh=Qeq9Gooa4p0JMIlEe77IZJVXe7jMyYKdxkDFtRucq6E=;
	h=To:Subject:From:Message-Id:Date; b=LMnTFpHjacgtGoF0P89/ot0KRjD275VkAu7rL1SA0dc0gueOAv0M0/c8cV5srJEjWb2XRURlQeZRyWjywBf6fZ81jqATfDSTl3yjx6WmzxJ6IL3fkNTNRzk0O3i9q8AUGKdWGqWTGjNoqcnymciNC1T/KX5QGm6W0Bpq1p+T87c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egC6DB9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egC6DB9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B03C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751188793;
	bh=Qeq9Gooa4p0JMIlEe77IZJVXe7jMyYKdxkDFtRucq6E=;
	h=To:Subject:From:Date:From;
	b=egC6DB9gVh2XQIkLZBq+e//IwNDidQneKUEVl+jXmiGXXbZS/MknLPSqVUTpYNXah
	 JUsgMKbXa+r1h70ovcGHVUBadt8fWsQZIDO/ch3TWQ5SNT+R6Q0Eannwyt+mmHGcu/
	 PiiE3LiToktRAxWQyzPb19PRvSh/YIJp/qXL9mp6NfUdEr/sDztFBpq3MImY/T9xSn
	 jkbSl+a63CnrTFQ6U0x/BJtqaq8096tVceDN13hvgujcYn2VP0Z2xNcmRTOO2vPR+B
	 v/27uwEVa6Io3nqJFYJStRNkJ2yd8XNZWpBz2lVDanv5mw+hPwxLWG3hjpXMTiwlTq
	 wvvGMbPJivdyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FCC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118879357.17660.11775589508938789220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863e1eb7a1a1c2536b9dd0b834dc7ba70ca46165a7539111f8e275b9c83e4fe3
Date: Sun, 29 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751188793
