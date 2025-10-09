Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157052E2F13
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760015394; cv=none; b=HOjbVD7NouuJelaUDP/0XYwUTr2lRVmImnr6AgAmGMBrpWWbk9G+UhNwV9NlkiKPGqm8+HIFGCzPVjXZcaPPTMk5GiRsSPYGlqIN8g8CQJAgmaCgwmeQpM4HXVOB8bD+KUAavYTqkMwNTS/fLLw6XzrXI3gCvw0EC+MStXvHKwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760015394; c=relaxed/simple;
	bh=0f0ne4HUzOglghTcqT9dJhb5s7B+eNEBmJU3hq4dRjk=;
	h=To:Subject:From:Message-Id:Date; b=jWkl6jOwBil5zgLweaSpbwcs43g1j3d3E42H15m5/oLvTknDIlWRtPYA0sW7YVd3b2zJpn2GWgtknqf9hpP2u8+teHbNdWGW+0OK2xkQKpWp9JCwIPaJ97ZjYSTyzzZZVLhO6B85YF0WpfncncGJ5ZTyXPeKiZbQdGlopTrKwW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBoo4zyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBoo4zyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F10AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760015393;
	bh=0f0ne4HUzOglghTcqT9dJhb5s7B+eNEBmJU3hq4dRjk=;
	h=To:Subject:From:Date:From;
	b=aBoo4zyIU+Azi/2nLw6OwFHTHVTNyJ8Ynq5MqiFAocZbvMttncUWa/gL1AV0wcT/H
	 jwSmtlVzbqSt4njs7SJ3G2xsxudCWTIq3fR9yau2siQBwJk7Y/JobNu9MgprfSHgjR
	 ikuF6GURGcy0pjO/um/WorM1bcvnSPnWStIlLuRs3/JPzyyLYIPiJEgOskYR3zR3AV
	 RK2HGsD9AcVHTUTBD8HVyPH7f7bxJXS8lBLG+ulYFTggJxIxM7iXWg4QZ5uPkPYUBy
	 UQ3KGbztk8RdQz66yAlO1Q5mxeQqUpE7YJxtRTPiiXtBYYdSDDTMAp4hWVa0Q0na94
	 0XdlFKF7+64Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913DECCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001539358.1474.5880530161760572329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b166a9393227ca0fdad310ab88038e2b7c6fbc29c93f9464dcae020762647f2d
Date: Thu, 09 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760015393
