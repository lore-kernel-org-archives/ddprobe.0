Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB7B19938D
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737060354; cv=none; b=GIB55lk9J+J1sQW4/zDLHsj8KebVUJy5SHIlK/Di/uORgCVlh900qoj1yY4REM1qyL0GYqTRoW5VzzWgHwnPAYxvZmc5VeK9GEaxi31kdR8JrgrFuuH+e4cD9AB6Q8E48UEXA2XAn+z2isETCwyUnUWhNZufEqymEOnw0YrvSHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737060354; c=relaxed/simple;
	bh=9FrPcjYhVE/ql6yNZsv6Wtpgi7Su2pxtgUj4N3XDI+w=;
	h=To:Subject:From:Message-Id:Date; b=fdreQYwZQkJAu0BTLxUWRp+mRQ0Wke8lDlRMNvOe2nYrHenLMzm88NVFuceVI8W3UCUZlQ2pvys0F1H6FaWUaAcDVh9vEqZjNctsZooVneIDUTvPMlJ5Fbh7/xb6n0psuaxvhfpPSjHAa6zRC5EIMF8yzz3kBDuNUwnf7TfmdT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAndfSoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAndfSoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9343C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737060353;
	bh=9FrPcjYhVE/ql6yNZsv6Wtpgi7Su2pxtgUj4N3XDI+w=;
	h=To:Subject:From:Date:From;
	b=CAndfSoUOdtsHqMm92Hglc6yuRrPIA+I7gpAE8cCXzPYG5GuyNVqLXtfysLwGe9tk
	 j3BVunQLV/jjf8/ghyXJPl9pOBAU/hgzqJBDLcT+4TdT2bPx9NZjE3y5FWhHfAF0/Z
	 vtsq14hR+2NVU2MjU7VR/fNhnBQeLEypgiriS/RQAsDlVw4iIEBMxbCSQRJDGUNMWM
	 jX3GILhRILS07cxyN0m0VbNgsreGRq0LAxwhbHtosfoOBjJwuNF/dQ+sOcpTtslh2U
	 3OVv+fl7VUkVQOFUzuva36wXEJBvqtFitenWEhBWgKVgHlY/SR9fS/woT65tjaSbgg
	 d9UvBlGpWkRhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95659C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706035360.9821.1432225294256276062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f90031fdbffd1e34466ea31d7ef5a896981dd70cb52a8b71b253dd576e1e82
Date: Thu, 16 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737060353
