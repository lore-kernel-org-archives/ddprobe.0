Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2912EEC6
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705779497; cv=none; b=INqrk43u5JjbUkFllFcjOengVOeY1EPYYiHwo9YH9DhAoNRAFImTqipvogslnggIdJ56w9WjgQOjdlB2N9PCHYdQVJhW8ZYcLjg9UN66qRfNfi4Z+mIs0OvYYWcwUDdGbtZTRFdCU0+LYlS0BRG+L02W2dBkCpQgdJewax20JaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705779497; c=relaxed/simple;
	bh=939xbisZmkj2kOHXyKheZckKOrkw2HT8Y3fYSrEvv+c=;
	h=To:Subject:From:Message-Id:Date; b=Xs5hULsg/glepYltt0jJNYk/CQTnBHlSvgmFrAjpnx9dY39iuQmF97WAex/beBGRvbpIbh9DatnbYLEOHVZh0FxJjbMUQmedeMHtDnOyi2YlOfHKbK2hjXdLQjKDRxUROZ+GAoDODRiEazZWgWk79uE394G3/g/iJO5Cp6u3pC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXhOdBHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXhOdBHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B51C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705779496;
	bh=939xbisZmkj2kOHXyKheZckKOrkw2HT8Y3fYSrEvv+c=;
	h=To:Subject:From:Date:From;
	b=FXhOdBHUqxaVHZ3aLsY8Udh+0+pjn3UOAg0OazxTGiSgogmWCPTWbC6OADCKs0+Hb
	 9gco5nkcSIF1/9vtAJ1y7Vjr1nXH9ogQCN5ePYUrTlv6Nn4xLzaJXjOqllIRwVC214
	 o/uElQD84mwHRbTEgaxpPKnB8fzSKf8NXyvFMy1KD32d9MHu7hy8jyrRoDAujJbuxD
	 NOMOj/aL/pyl6yVo6SkC5MSLouA+3tQ1rvE+QLmnFZOD91/V/WOiTXzEFy/6+jB8UT
	 ukD/hJub6XgdhK7je3U6ORSeMb5TS0vmjOePKBoafdH4puu33O0D4FwYlBkkBbVuLI
	 jIYc5a1Li4BUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D5C1C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170577949636.14999.11719585086463008394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6356239ea7b13d12eaa7ea4c6e0cf13e610ebc1cc17ea04fccea57c8b4f65ffa
Date: Sat, 20 Jan 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705779496
