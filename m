Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C745024E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719569663; cv=none; b=sxxQ1GhZLBAnY0WHB1fiN7QYjxUWa7KKDyntOqz+GR9vwFQXEPC0/p8T8jqmfkRPw9cCm4Z1DY5YEzeqvBnspCoiLdYd9VUwODn01vTW2hc5nxT6xcEzREBiwt1zWUdKnIHVtvf12PJ7zxiIzv//ThsgblWfLp/3iGdeSeBrM5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719569663; c=relaxed/simple;
	bh=5Jre+CBe7WOt+LrEbmp/YqU125NVbkmRJxO/xSEyaZA=;
	h=To:Subject:From:Message-Id:Date; b=nYtEdWt9d7EMQbAIdQ9YjI624OV/PChSh/Fmh67LhC1tngM9FNNU0cXWBOZxcRTW2i67cC/+KIgMPoKwuxNz1yBOc6++SKjz7V3aVFuGnHrwnS5pOnGMVBflomnRzITn0MyMxHzeIVGd3CAPPydHyxYzAP6ZO5dDv+BxnUaA8JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mc86Wafr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mc86Wafr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2054C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719569662;
	bh=5Jre+CBe7WOt+LrEbmp/YqU125NVbkmRJxO/xSEyaZA=;
	h=To:Subject:From:Date:From;
	b=Mc86WafrRrhh6kgLhf9iOmdcXIDGEy6ZCiI4o72VsK/dbTnH+PvWJgc0Gd9PsQqpL
	 pW16DoKX8R1Y+wrrP09ocv53iwY4vNp11KEH6fxRhtZ4DeYsBQ2G3ewLMSPEvQicEP
	 NTNNbL4gYZWbQIe+6ECoygsoyYe+4fw4cjzDn/xepuBb0HWNyJ+34rsH0khjUzIOK3
	 7aZd0FQGcqne4jtg+jnj8ydg8ynFmhI4oSTfoot08CcBjrWt88Ye+cSM+0kP7rIctq
	 AJkqTjpD4npP1opYOB/JbewEp+6NS1AQf8DvXRQQ/GKg2kzyL0pWqlRnafyTcCFlGx
	 8z2PR+EPecfTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8E8C3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956966277.924.12429269634471442051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21dc72ee9f1a3d9a34125ae6bc434f54ebad416ac1115fcf2528bab443e43354
Date: Fri, 28 Jun 2024 10:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719569662
