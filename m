Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B7D399D0B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784152714; cv=none; b=nWkF+6c/JvVN4AfTV63bUAVv8wHJr+Cvx2SlpJ6RKR9m9lkfjDyVIzbtK4jyZ22DJX2Wo2iEtHflKA/drTyeodB6wx7WQjH9vmNpTTWrF8yY0YuA0XaC+ccm0wEHH/vAqjWEoktYOHvwNdmpX5bS1r9PcItLqfLFVsbg2QeYix0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784152714; c=relaxed/simple;
	bh=itYEZ1nLhWsjXQXccmwdunei2AcD30i77yG1ms8KJuU=;
	h=To:Subject:From:Message-Id:Date; b=DhDY2o8l1JwLpey/Fi2Uy58l7jI9mTJ4I0th6FgfKoa/zzWsRkMLwG+wcIZzbapf0g8xwBLJ/XdQLneXxgjXZrz9Ie0vjjoDImS1srNF65HTVePEmie0H5h4cRvW8QXm7P2C1hLCPE/1PeXVo4DXMKMZLPMbZHoCtB4P5fI16s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEq8JFeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEq8JFeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8893C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784152713;
	bh=itYEZ1nLhWsjXQXccmwdunei2AcD30i77yG1ms8KJuU=;
	h=To:Subject:From:Date:From;
	b=jEq8JFeE1PwIUG+VdCUxivOCZASh4449rYgOjuIMhHRLoxCx6aRR96rxS2dJ0GPu5
	 oAKs4BE8/AacXF107S6rjA4a1y/5wVCyouZQfTzTrWIGY8FlhLoVKGC2IIdP7aTgCV
	 EFfVDxLocf/L3GeqviGCmWSWK9h6gdI2GZBo7XGZBDZD50i+Sx6C+glEiQq6oSu9c4
	 hDolSR6GduHsmDqylKgWXMUaRVzweMRDwqdj3FV7ED73WHLy40gyBL2EryFDtme1J6
	 gGennbR61QeI/sMozUUAXFulvTz+TRhhlDmVaLcyonstEAunaXBa5rxarsKhBxDGK5
	 Vtnn32mmvf4pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BD0C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415271372.26042.15246739868058055453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b2d96bce17a5e66e23c3cdd3e722dbcc325f6f5d1239d313a185f761eae8cc
Date: Wed, 15 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784152713
