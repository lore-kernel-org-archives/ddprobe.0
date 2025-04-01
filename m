Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9A2F4ED
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743543594; cv=none; b=FQZLW/DZ7qqeBwc6kpAEfPg5eIHA65RTx+yReakvqcODJdAbdRpNoGkxQCMogCtEVlPCH+u8Rh6JnqhGYxqz8zTzAvoi1rRv8tuAFL4B65W9kvUOfTwt7qnBcbkI3nJfjl8IHa/MPbjCMPmNtTpqakFver4omXP+FbDiwPsIOS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743543594; c=relaxed/simple;
	bh=Inj+PO9AhzhUkyhKHddqqlVg/U+3H/nYCjl2bP8GwMk=;
	h=To:Subject:From:Message-Id:Date; b=NOKeT5TEyF8lsT+owruZh0BAJcPR+XmOcI/dGWxXuf83v60SrvS7QHsD6H2cArJHmSWQf5NfCHEiF3IZCMaATD9id6kDZ9Oso+ZnzQjsE9Q7rVo0xnqWIuZDvzLK5Bur+ecGi/qP3pwsvoVh8BcrZZpQFyyhyXQA1FxDs5lMhZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ud+I2TgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ud+I2TgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8336C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743543593;
	bh=Inj+PO9AhzhUkyhKHddqqlVg/U+3H/nYCjl2bP8GwMk=;
	h=To:Subject:From:Date:From;
	b=Ud+I2TgFzhaLyZZX5Yl4p/KdCWaVHCraNGndhdc3YxZ7KgQbLwK6asBeSJawiBDmh
	 RvroSmjYPJi4u3A9ysvaw6DXM1JESwOEK0qUrlRMyrxq+AqoH9nEoleafLhZFXczVr
	 hxvn/Q4ajIMF9y4FnM64Wa+PNE3Ub1z7mEfXlSvftOQL4mDUsPpJVkmtWXPEnMyuDl
	 cGj0gCIpE9V57YKefoKzFtrHyC+yNvYUUdGy16ypyhIYmIUfo07B0lTjgQoSXT1Lkg
	 fHND0A3SIsb5uH04l7LJABmUPCvPCBDXBsG2hQqP/nETB+rOLIDIkiDPVItjmLFbMl
	 zjvnWw/jK5Q7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C46C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354359360.14548.8972209722367954974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4bf9f8d63447b4885f7916d6d968bbe8b89735b6bc338a4c5e63a2d5623161
Date: Tue, 01 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743543593
