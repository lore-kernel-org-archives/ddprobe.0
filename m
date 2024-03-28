Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90A44F898
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711609097; cv=none; b=Jet6PXku9wwZHaeEkFqPpNb05YzFzVwKdv2WCujtyr6H5ylTi1zWItB6aqel3vVFlj/ltGYr5aI/RWLCzJYHxl0AqF+oNRQqY6GteagIHkNTWuH0eYO1LmI+ID1qCbpXTjaJHJlg5ivx2Qe7xF+VHjbSmPyAqkGzUNEvhnKPB/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711609097; c=relaxed/simple;
	bh=G3xaHx499FA1MROzXCm1sXsBVvzjK8A7iNDQF5Z73tc=;
	h=To:Subject:From:Message-Id:Date; b=j08wXppCKGT6vgJuCuGFWt6mLJl5YIztFaIJCVKiS4IuwlySTPmmPttDv4yBAr6nQ6M6w18qVwr8Esp6k66SSyiMds5rhI/K5rhD1gqOKigmT63z6CYQUiB2K7MH/PtRGagq5U5XoI0Nt7b4SBFGUjkMGnF7sIcUWYePbO2qdVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjCu8kh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjCu8kh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74323C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711609096;
	bh=G3xaHx499FA1MROzXCm1sXsBVvzjK8A7iNDQF5Z73tc=;
	h=To:Subject:From:Date:From;
	b=EjCu8kh+D8JgW1v5rK9QfzFwq2yjXjKDPu9DrF2gd05QPsJyjI9AmI8tIKRdsfK2L
	 EROT5XfPhpYSoAoAbCMh5mzBKjEoHywcj+v9P4psUyErQoXo30mQ+C0KdztNhmilux
	 JUue83CF7EA/Xc9Ub35/HEqfL5wj3ygakD0otmigDswpK4zoNTthgCSzrhKcOmlfWh
	 XHO/KqFwe/f1ASfENUrkJYGxt+Kqc8BO+rJt6tXFyE0FJMs5YUPsCduHOhSd3sypSQ
	 +sOI1S+Z7rshl/4sQHzamqDZfiUUFH2KKE8nfhiPa7Y/AieEr38pI9tMoaW2FKVFL8
	 CHY7QhoYrdFNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CDCC54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171160909639.7053.11823107301758212118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc3b98ff0d58bcd599dbf598683dd2f41b8b3dd38e5038fd73defca99e9adf9
Date: Thu, 28 Mar 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711609096
