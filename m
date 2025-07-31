Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352212745E
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753925394; cv=none; b=S+Usy8HngbAdFwywOAkuDuUsbI3aJJvXWRawffkUWE+TsUdRXzYRn/qNv5uzFfY/kRbW2YTZZznhzZ5xZ4Oah9khzqIicNyIjHqwgq62ySqAJkMeJJmYvVpMryxEGDsfgOlu/N7XS81MSxrcMWvIVtejvDuUmJ/xcG0XYI/lxRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753925394; c=relaxed/simple;
	bh=JVOdhNqeNSg42JwJheETT7Q40uxi+e6CCFUwv+qEYg4=;
	h=To:Subject:From:Message-Id:Date; b=LewHfpSiHSbQmObWoOQWshjkPJ3iIeKx+UncXtwG6spOZUfOXIVt54BhaU+TT4+mr0V6tbgtt9M4ck6ojf+3ytaTwZgdMhh5U5EbdNULotqIxOpDcIIe5HuzIqRZ9jfgLq1TCgi+Cm2kWojQp4ayynKUoU+OJdTnNXm/H2MVNco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QR0EiGNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QR0EiGNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63ACC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753925393;
	bh=JVOdhNqeNSg42JwJheETT7Q40uxi+e6CCFUwv+qEYg4=;
	h=To:Subject:From:Date:From;
	b=QR0EiGNl5VykzJYwtYRnnU+PklA7TMlb5nQcXX3QxFLaQ/aoHU3jekrQtk7rgqjyU
	 2525yPAnZ0sNCG23M6PTyghtKuH7TehvUxbntoXPF/XlXOiq9WA8KOuQL9V6hWTqrR
	 U9NYVJF1pa0VBZJCla0p8wgR1cqOvjERZMNm0ZBXbhxC6RrlWAskS1+ofGgLnrI5eL
	 YkxNFjCuecM1DDJoQ/98qIxaTriv2JYa8CWolQvNLiJKVzuXdTXbOLUtgm+NFa86JU
	 9CWfrYBKBLRjNq3OglbhIHcT1rS69OiRpxF1Lmq9PSkVZrNKDu2mmPOEt5dDW3/nzq
	 DFjjQRjKjKQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C1C87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392539357.11565.9691069279381344491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f07b83c7ea87f7f92f6d9abd8b329410d4f4dd59c86efdde997b62608d7f89
Date: Thu, 31 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753925393
