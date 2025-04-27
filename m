Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC058460
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745725195; cv=none; b=G22WxuYQ5d93ndti/C2zQQ63BOW7zcw7pW71+DqZxrVRBajfwaSO5pIVQvhAS2/esA27X8n991VQLmMXf7h3jVb6OGYx4tocr6+7rSja2+ZFz1oBpabdX/AI0wZZoyEEFvU02R0IaymBEuAumPeyn0PWxAFviw+d+M5987czzu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745725195; c=relaxed/simple;
	bh=IlRJIG2n5VUujbkR9LJDAHzsT0Oqe8xtV8LW3hEbcwg=;
	h=To:Subject:From:Message-Id:Date; b=o9iPoMcHwiRdnfq/Iyqu7hp9GQvUc3oHIjaYcj/k6bSOA1QjaaE0iyzJt8njfaD6MV+5lpZeMibAL71yzw2U+RrEl7l7+9TKYrvTb2DbHf/Zle+WFgoEHX/0PVXry51jh5HTKmNBj5+I9/ZrHS+BT5OrQNSxsw6iusdsDSZyL00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXCBXxmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXCBXxmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95CDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745725193;
	bh=IlRJIG2n5VUujbkR9LJDAHzsT0Oqe8xtV8LW3hEbcwg=;
	h=To:Subject:From:Date:From;
	b=sXCBXxmcevA1YyKTQ5wIvzCtv44P451fjaiSYXMFVuXfP3ilibaoV2of0jqVWSVTu
	 QHjI/SFpiyxepeeDyMq1lOd08SrYU4CHe7s9DXA47DcLsktHAqcabVMBZf8KRenUEI
	 wptSdZbe0WhccfTBsD6wbovtlg82Km86FsrSXlFufCgKeDu5No5dZk8OsCF25mWiHS
	 gT7/ro2MRCgyzcUM6rB5qa3WlBA4tgCPebwPRiJopPO6DMJvYLvb+pQ7Rqs+RtlIvw
	 6jno+rKq9pYPlBxm+0gob0TZtQ7FXcx/QR20/2qPnP4fl+ZYd48l4CaOW0N3CcK+p6
	 dwLSwi9S7Gocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94732C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572519357.22976.6849242479664011685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97d25abb5eeb667213eb713a3daf0c331edb70271f704c461186f9188c50265
Date: Sun, 27 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745725193
