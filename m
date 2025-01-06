Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D5E29A5
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736138154; cv=none; b=ffdtla8IXm5SN7SxsasR5XWShliWHrpLzDn0brdUCrxZy1kqdx140zqFZIgRUTOiXNB0WNWu02QJkoQa7eUSS1lJ5MGDuTRmZo7MlNTYINdMlDKMU2LaL+cuwj0AW7BH7BqfiK7ni12MfJNBCrp1yXJoff5I7PbG1cxDhydBs4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736138154; c=relaxed/simple;
	bh=q1ANe4KZuvO3WxcJuKNdCt1T5Fe6q6hYbnIq9NwvUH8=;
	h=To:Subject:From:Message-Id:Date; b=ZuWJNZbo2suhoKw1QDJeZ34b5HUrK8g5SvYLuCpqxuFvy6pYpwMd5xAEOCbzADtXind+fz4g+syMhuZaPmWMdr348b09m/hVTz8z86UUDF/qL4QhnHCnCPHXa3RsVi9dLBPrjvmrycd3u2G7yJZ1M9f3Jrn95UkupO47ohfx7IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZg6Ojxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZg6Ojxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F4FC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736138153;
	bh=q1ANe4KZuvO3WxcJuKNdCt1T5Fe6q6hYbnIq9NwvUH8=;
	h=To:Subject:From:Date:From;
	b=JZg6OjxvZVDKj4TvVSCAgECevCaAC8Um0kU2fSzTvk+ON5/kSE5sFCscmu/yqiQ9V
	 Tu5ILAWl1fsPfRUAkTgnlEuzSm6BSIXwWT1fMMNMc2oDn5WS0Rdn6KhGPaiViHsMFb
	 Fmo1steeLTt3t5S8b0IlFmKmSAeFkGb3HY7pbjHFVKVNBUuRsv4g7x6WFEVpcNF1kU
	 ibdCoeggHoIYR68tfUTprMdOG3DXiJVxm99ruL4FHDA9NIJuM2Kf4lIXyGzIopMqUp
	 EJ+51Pw++SgxmPg/9h0UaS/GfVfszPM3JQjrBqzFPO55e1T29bxRMaua1WWE0rYUkE
	 2yiI8m9OtiPoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A03AE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173613815359.31393.6097126753795621370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d489ab69450aae2aadd9430a843643e524a8ea973c36199a4c4de2ca0068e56a
Date: Mon, 06 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736138153
