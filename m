Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F85838DD6
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722551754; cv=none; b=Pvis8CrpCea6HNxYjVfL4R6ACh+SiOV1rAmSvsh0YKWUyrmJoLkzd5duXcW/ZflrL6PvPzE2KW5+4MMiv/RyteF8MSueIdzvwsiAHW8ZzRJLF7FV+0GpMB4V5h0P3FaBLAhbI5wjlMFrGkff1LDowEP+MUdJs7esxWlx0AtfoaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722551754; c=relaxed/simple;
	bh=PEBPKwhbEfDTf3YzE2iDCVX+pm02HH4BA61cx9mU1D4=;
	h=To:Subject:From:Message-Id:Date; b=ioefU+hf03hxiI2npelaKIZY0CXzQaVyclPCyai9NySUz6p6rTT9DsA4zZ/j+SRPzKt4AN1w8MQVGPClr1i0n0OA+5EuBtTJY7RQtSHjLrgzlTB60S5RM9J+RKA9xhIF8r8tD6u01HD6V2UkDpfe/1AKiwt1yrvE5z/BP9EC9tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luq0V+jZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luq0V+jZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F2AC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722551753;
	bh=PEBPKwhbEfDTf3YzE2iDCVX+pm02HH4BA61cx9mU1D4=;
	h=To:Subject:From:Date:From;
	b=luq0V+jZ6ZzjbNGI+kmVCc7PMlImpuGnWP3QA695HSch9pH8YLWrR7+Oqad7ZCQGs
	 5SmHMksFEXFNuzJDzULJ3tKxALkviAouu2ql190/HsmGVs4Gbo975Bsk3cCbQt6sZ0
	 OmU1XYQtG+TDxBjHixqx127nUqRZPYMjsuHH9cxfoAFjdLEU3SMwqdeUGxJrr1T92/
	 f5UMPWn5qilP8V9TG/9cR3wNzn7bI4Qymm9LnZMEQOiry2mq3Et+S6SpLWv/YdL7OM
	 6f0Fcl+7EWc0zX3bxzx780YBcsIPZLs3avjL1v3NTiNvPo8pJCiaDqZWijnQm2uckE
	 pKLN5nN722FKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4977C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172255175362.17785.16654310449809640935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed154c96d785a9e0a5bd8360feae86ea755ed5b9303016283c3fba09bb6b7be
Date: Thu, 01 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722551753
