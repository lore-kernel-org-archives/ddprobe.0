Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037373FB043
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773132894; cv=none; b=Gj0S7xEHESGebhnYwE+huNrCy19zA2+66zvsmPMDU0jAZ9bs1ocIaqzgDMWrf1YTM2UPkrbW0vD/FjstSh/+AqnFlADeXa116KFpCP04lCFJKqUG9R8uounTQXURt5PV/jnsqsu2ReJrBEyMMaeri9wo4OgriYcXa2D9mYhakeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773132894; c=relaxed/simple;
	bh=C20yB79R/v55MOwZV+sYBQEG/guTBCHKE6+xDP2btzs=;
	h=To:Subject:From:Message-Id:Date; b=DZ5EfHt0gOCvENNR8qDw28aCpppJdBMe0b0iY4l6YvZkZE77HBEri3VAB4ynYl1e+IoroxNPxKE5gQ00M7V7+xGpNuchzx4lfHA5NNHRMUHFDA4QAsfnxz4gdwBCXZ5o0zrTMK9I4KdosbqSPKkXa87wRfm04mw7yC7Ys9SoQSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWwUuzTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWwUuzTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D53C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773132893;
	bh=C20yB79R/v55MOwZV+sYBQEG/guTBCHKE6+xDP2btzs=;
	h=To:Subject:From:Date:From;
	b=RWwUuzTU1PxiCv+qxx4hBSbTzW2OlKPX8yeg6397bCApVGcswmfE/Qe4WRYaCrxSf
	 RgFsHc0McFuh9uTmNu4k8bIfwtBE4yxewjub8T7XmTD14y18GJhzAB8AoYPdkwMR9f
	 EDjalhr5SJi2rYRzaMTED0uyMBk44oJQeGRJacnWRtosQSPGBJanbYPIUJOnIWCGAI
	 shoA+UuiOf8XCtnKnWKrauvU0tSJJ5UnEnFEEqdkY+YGtVR8wtaLZUDngDe5Gw1Hlr
	 F2vZn9W/VqUNrglEPB8uAUuL6KkcwpZPYps92sGPn4FoISb/isFs3dtpuXJtqNGYMs
	 uQNdk6eJNPL4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD4EA854E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313289357.20491.11236373112115186326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce4e77e2dbe2f50866dc081f93c9d6ae625e2303f2a210ffaadc4a4cac8e3fb
Date: Tue, 10 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773132893
