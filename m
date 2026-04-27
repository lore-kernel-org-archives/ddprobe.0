Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00123D1719
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777300053; cv=none; b=LErjOLGF/+GNddWpclTQFN1kwoJd+Q1Mig3kCt4WpAYiSj4gD5U8CpAzTQps9NZRxESTQ196v3XHZYBq8JywNzziH0w+zO1VfKgxgdGRIDRY25vRnTH9B37J/cY+YIYPmAR+CAfcAWIGOCkqQ2TzjBJ4sTnDkFRH4ygnQBgzCec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777300053; c=relaxed/simple;
	bh=yvAmnvf4z+oJ5FcNKQPTYJzkGqe+FIixCGffuADaihc=;
	h=To:Subject:From:Message-Id:Date; b=u5hWYmNdxWqt7q+BWtma2VvOEsaecGUisNHIrY0LjwK/CvjiMd9HJv+f8C1q7xsstAHVmEPS6Xxkw2TV5pewePHlG16fxpekP/kwhhu5t9I5hJojuEifL6424QW9EFI5Zw+bWJgmbdNJ09cH+WdKjRYgBFRb8Tk8bAPQqh15Vww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFS0oDfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFS0oDfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FE2C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777300053;
	bh=yvAmnvf4z+oJ5FcNKQPTYJzkGqe+FIixCGffuADaihc=;
	h=To:Subject:From:Date:From;
	b=AFS0oDfcJc4OjXguQTtSyx1rNNWr5wKoBZHKcF14C4NHiriRuu8TjEJXrXuwhNo5o
	 TvND5O1B0gA4PICaoK5htqgR+JyFyjzSpD3Fk/Z54peIhILu7LuXhvRxOr59Oq8skV
	 +svUTtxQK8hcerP+kLQkPAGnNDg6cOhuvrQUBazvaXnuppPA1BSutPOTd+kuNlw5xG
	 wyJnfqds9+4mav0QAVWYCj3EqpZA3XXguNMxp1USb6rfqYHatOsojSAsHN3ll6gpaW
	 rNKut5Fs42XFFLDfW6hKd2gXDUeKUrfYxKgEZV/IL2zAwPbqSW//QHkbzpR/zz7SxS
	 u8GcOkTVYs7aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC18EFF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730005369.14359.7902565350147518327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed53bfa1dfc40c8f0aa3b5da4ac452300141dff8773168abf77936e88c9c5b4a
Date: Mon, 27 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777300053
