Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8893346AD
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768544634; cv=none; b=aEQ8HFtiSonsOxohuS2lG547MdoXsj7PdziycklwUk06c/PwAATfYNiF3gIC+oQiulx08/YsKnb157ifa9YLSjmmjfOQD2F4Q7mciIocnWjwAp0i5zPkL42YreQzWbPWsemzO+dDj85HLC3Mubz0sHO6WtJZlKAtQ2K7/DMU6bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768544634; c=relaxed/simple;
	bh=yESsBMgI2sQcoEJFgtiokbMsknBhRYfN374p0lleX4U=;
	h=To:Subject:From:Message-Id:Date; b=iXQmCaDmH2OWyJa2zHHHwfvVf5cQTJX2J71vYKqkcITvbPxoJEG2wDdp6PJXqVUOQi2CTMxpU9b7XJk8TfRRi/hnmXO9kRqQQhqecXwAsn50rOlab9SRrfwcOW9YzyCX25Veh/8PWG7s58xYgqvHFt0BaHJI3yf1hP2wk28J9nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5xMEL9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5xMEL9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CF3C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768544633;
	bh=yESsBMgI2sQcoEJFgtiokbMsknBhRYfN374p0lleX4U=;
	h=To:Subject:From:Date:From;
	b=Y5xMEL9aAv3D01txreoUNthGyaOQELD5PLuLD1/sUOngbFzow61AWFsFziU6JO0ep
	 ASjt6foAHy/3kqfHaCdYWv0HST5eSY+96tkNs5l+yQdlOGQ+IlfGqKibT3Srh+Blom
	 JgSV+9bUU5mzP3sMlQmrdbUJ9faJZFyIBAlH0eLa0SEJXDx9uxPz10fiQNs+ODcaoo
	 AQEcDp66D+6cya34qtGt/Ib+dQFJmYJnToaBHrRarXblcmkwGJIwBPE4wCFweF+2vm
	 xAzsL2jEEacwL5NxWUubWH1cXByed0PZtj6dDRhPAFFoHo8qST8oNSDmRzsYzC1eAj
	 siVpuACbqFhDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB26D4A604
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854463357.2902.1663433648230043608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8e05ebc4f227b197f9e1a72a79cc73c8a718fb90321bea204cd2e51e716074
Date: Fri, 16 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768544633
