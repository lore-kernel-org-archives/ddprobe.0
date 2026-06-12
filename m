Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C2C331EAB
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781276194; cv=none; b=qsvR1xEZ8541uW4t834OxtZQRHgWqlcjP3u8TXq6p66Meg00fSq8jVQhIJl9NF0t3vy6UyyHvdPDkXGbAGHXxeVBKuZgDSwHcrToVVXzjT3lgXtP96JvPm2HMVHjEzUJrfGqXXj51NRNQo+n6gSZwvWDH2FYDK2PPRohkXSboK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781276194; c=relaxed/simple;
	bh=AkmvQdfwabHefXKKHyXl7L5+q8l4PxpwTr8lFH8x7f0=;
	h=To:Subject:From:Message-Id:Date; b=P52IR1d1KD4CsbNLnFo0stN/UttsKSBKqFGEYEoWYPn18/GyuVmUMJqKfPLh3/M9ZJCxfqU8VpRLa2BvCUrw0E0f5GuePEan8aAbtib9lLeIWckfhm5V5BvODqgN/zQ1EY+MqetrCbtoUbcCyA6UWgGPJ+GGkjfuLlCxO7Tmf6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLg4AAOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLg4AAOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B435EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781276193;
	bh=AkmvQdfwabHefXKKHyXl7L5+q8l4PxpwTr8lFH8x7f0=;
	h=To:Subject:From:Date:From;
	b=KLg4AAOouRhmBrf4osETypxdkhO/ryesE2A67VlXWkUHJCooQsLwSOIN8FL1r9vDU
	 SJJlzevRJcMJUkdrt2pJrF4/uurHWBmLrb3Gn5CJAVNxmWAHyZ5tTl3qBQVbv9dEn3
	 PLF7cZsROAtselxYAGvYzzy9x9Pvgkf4MZHQykp/WdraVCjqTNKdc/BuZHBP1uYTj8
	 DB0el8XRRnSdjOuhL05nHfAIbrpqEa0V86MOg4UoxiUe/fZp5uzmNdCyZEUzK2k3HM
	 B7DLtTaL7Z6aER25zNXH+fmNibuR0GZZTTFORXnVPuSpl41zr4Xk0fKuSAQAEihLRn
	 Sie6fciU7mI7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9690CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127619368.23691.10384304521073432236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d39ae66f72ea71d97b05ab3d6add98b66b58867aa7285b9a2a48f9602d15611
Date: Fri, 12 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781276193
