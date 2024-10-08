Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377D31D26F2
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728387354; cv=none; b=c2wF3RVMhB7fclL7bpYNOOivcNV0sWp8w2CR69FMudKd6hJF59z6dsVcX4ZOdsaNhUGomVyYmNJyMX0Z/qY/13w/CFHOkiJ8Qua+t7aw5UNRocldAt2bv9TBL9x37PS6OTx7Fty+t2er5qnxteGC5LiKAADF/h29B4PtZs9ua3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728387354; c=relaxed/simple;
	bh=U/h61N2kKcDrJcFeCOn9o9WLcpRDSE2C1dcU+CD65B0=;
	h=To:Subject:From:Message-Id:Date; b=cKgDJGXmHeKleiBV14pwyFSUZW6WNiOoPYR/kcl5r7bIeKtae44UlVN9wLmzNq2NYYEj+DAQbz42l1+cgIZF5qBr3y/j1swa6NRaLKUMk3bud26rFqt0EInQwEaf79BkdfacALQHpZlVWzcD7cytHfRX0rJb/meeRrrQf+iSZIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDKbnhH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDKbnhH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B92C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728387353;
	bh=U/h61N2kKcDrJcFeCOn9o9WLcpRDSE2C1dcU+CD65B0=;
	h=To:Subject:From:Date:From;
	b=DDKbnhH6Yg0FifDdFXj3/sPZiksBW8KH55Xa1BUDhT6fJVWH9fcrHod+S5uuAt0CT
	 5egx8Y2m6UQxSVNkQE09g9QHH9ZkwRgLzwkqh+o/5MrTaAyF56+liQ1505GdxWq7rE
	 5unY/2QXpX8UZqadJc6enC4ShfILO4WGgbYmVCHuPGuD2Kz9pUqhu0Kyhclx1O5L27
	 Y2PMTOrzZCmMLACZXXqLp+c7Dj22NBKzrbIyqJGy5q4DxCkjjhUCVlz5/n1Lg/zp6a
	 7ivoWlRGr+nv92b5FwolerQk14H1o42wppuG66ZsEKTD6bYuYgJuP3d5SaDvrzno8Z
	 H8LJqFy8EP59w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DEBCEF158
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172838735359.20927.4268478325440754765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec601521805285aa599b99d55d4c3de732dad969d21e2971904b4bed936d8ea
Date: Tue, 08 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728387353
