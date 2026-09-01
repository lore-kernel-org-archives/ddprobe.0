Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4757349C4A2
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788289834; cv=none; b=rqGVNn92J4lrTFnslEv3OqlGJS2jj6otd93NppeBRgzPvWr8VEJP1aileAW1bRJlLMSEHoQNSlRbOQ2TPaK5C9E10eqPpjYgipgI0jWSxJbZ90UtKWlwj+vKhh23nge95UzpMhxWlr/qAp9MC/od0K4ICX3SKsWxl/11fgb/Xns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788289834; c=relaxed/simple;
	bh=9yaW1sOWzhSp6FBpX9wTHtuRymiI/MyrFRI8n0lUSYQ=;
	h=To:Subject:From:Message-Id:Date; b=mQ2ESjjzVS9fiMw6W34CIZOMJ+Nw3fUXj/1bfy9tzBVo2kJeHsJO4o8riZVSauLNhu+aNgg3QeEPKEpWGjxFU4NIbZMefzHhLXrixs85xYyPREUfoM/dbanfUjJ3ShRFmb+V/ovEVMe71mGk3FcCmykwpdhqgprJvswBGX5iYEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwsPGp5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwsPGp5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6A6C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788289833;
	bh=9yaW1sOWzhSp6FBpX9wTHtuRymiI/MyrFRI8n0lUSYQ=;
	h=To:Subject:From:Date:From;
	b=iwsPGp5xy1RkdDfaeC/uJHLapcTlg+fX2iLXMgZu7rgyHN6uRgyCge0KeHxiOTnJP
	 lsSrEs7VxoWvclnHdTQs1MBJ5Wfd0R/kgD+2PEUbuXFk+L/uHQPhDEcDdqYbjopSnh
	 XY7Dt60eRbX31nDdewXSHAo8BvpQERppjw0sDhGjzDxDETFcKPvgrT5/gFNl3/kGCN
	 NR+1qLCf4bYgvDdwUCiwAB3uSjYcI6g457VLdKGgrlj78E/PnUkebKbfUmpTd5Nq/P
	 dwpHcbvDBZGhG1eUV+enoRn5WWWbGx5JCxQwr7R38w5W5PVIYyHoI15z9j44tmR+kg
	 7HseekZgWtfwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA62DC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828983368.23059.10722699880488750161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59794fbdb4f1b18430ae74c5bf4dc747ae07d6bc26a0d8c354e47e1c4af40037
Date: Tue, 01 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788289833
