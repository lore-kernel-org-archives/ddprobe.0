Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4CD5437FA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791988234; cv=none; b=Tjt5Hvispxu2oa7zu4/RIUshTAmseTdSJKL1D/2A8ng4BTf56VHGvCnoFms5VrriVkocV+AQXXpLWsxuzRX0U1GbLr2XQls077EHWCE6gZZFfuVrjZ6ggxuPQTl2QIOukYdRn+NaL1WQp50bM+DjrWEDiNO0CCQGnqX4B3LBoYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791988234; c=relaxed/simple;
	bh=ckdjyNBTMzx+Wz/ohCwSpY1qmQ/cEbesUhFDm4Z/N5g=;
	h=To:Subject:From:Message-Id:Date; b=rEDXV4l7OIayBUV9S4/EHDz25WikBOd/3FK1I403bRZU8cx++uo7nyjGgXC95cLXFl1TwsGoI5k+iVQVcdJ1kXeHD5nWjomRUubxDrnGy440NHAgQHJEAN/hmHe9N4VcSxHy1BDWzWsKZi70nWWUWzUFxM8R/BGDywkjf0roFIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6oAMi+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6oAMi+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D31C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791988233;
	bh=ckdjyNBTMzx+Wz/ohCwSpY1qmQ/cEbesUhFDm4Z/N5g=;
	h=To:Subject:From:Date:From;
	b=I6oAMi+6rvT82grVBob3a2OgOTpO/aOBp3qTqCGXXXkcEK6aNqARBpU4Da9Zg8Ir/
	 4nvBY4PPkMZDQ7zaMaaFg7q6hvBedm89j6rhM7qOaMPQhkIYuGbUxiIWFQeXHUqFsq
	 fJdKHf+Ir+2RFuMqPK9/qxTbT6cy7yojmHDQCQpcl96ubW7wmXhKPxnZTvQ4b4Ie7Y
	 RTMiSlOVMCiZxuinH/ChVWOJ3GtpQ/oD+6Uwsj/oILzXeiwrID1B5foYP8W5qa2KiO
	 F35MWvjM0Lts0FUlkTcP9PGsPZbbJwYDPCjMxu/m29Xa22s6kfTbtgwjksS2/MV1DE
	 nk35khH645uEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6F3CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198823369.16660.1162686264320342262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8a15e4e939bb155ebfc23270283047ad57fe0b9204d7363b901718097681d3
Date: Wed, 14 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791988233
