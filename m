Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45915292B2E
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779759754; cv=none; b=Ck54EdnLFSfmechuqC9tgNbERHx8dnOtAYbIhux9kA8ieaOYoW/uaYhkUfpk8JV2sNLSd/M8G5VlvTMzFQG3qXdGdTZ77i1MtyFeORV2imli1t4Sovnm1XZ7xVDEXCW0qrQAI79YLS8JDMHhmYUwVcsT80PETu4ViyPwBMZweGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779759754; c=relaxed/simple;
	bh=KPJzcZUBpWwEH99EkMaB7UwbHmEFqPEZkIguHkcZV74=;
	h=To:Subject:From:Message-Id:Date; b=Tzd/ORu+2Y+RuXzQEJNlO8URffDtiXdPfa6AlYwraIe9AHP+fUpdgcRZ+y5/Vlv9u+9j7oZVDdK5hpmlp4Eyi+mLcRKTQ9nwfM6L/29dQRiAPSoISu5b+6d7kHNONeRQeah0dvT3D+PZCrsoil7tC7XAvk1JX/XPuvjhy/7XK6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPjR3WsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPjR3WsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A8AC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779759753;
	bh=KPJzcZUBpWwEH99EkMaB7UwbHmEFqPEZkIguHkcZV74=;
	h=To:Subject:From:Date:From;
	b=VPjR3WsMLs6ztGa4nhHj/D8SSvs2yXFRZsOMbXWgX2Top4NISxnXcW6AN5G2dxvpZ
	 Qq+cjq95DtjTKew8XI6c/L8fa4SuzqOHOL6hFkVk2hlaTmjeB99Sosx6SsDxrL/aMm
	 5l9OHkbyXp6F7QnA0/nEJ4NhHATHLwa4go4GhDmBVB3Y+Etvr2tSoFCVV+yIyO6VgT
	 KzcKyp3ifUiKJ5sa6cj2wJFZAM44oK2gdE0mePeuXrLI3CXsNJ/2KvLQFV3ANgDqpK
	 c0iCzqqcHl2b3wvqQNRHyJx70UHG6WPWTvJPU4fTycdXUI/jroDj5Yt27x0trkHMFU
	 yTCUurzeiDP5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F2ACD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 01:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975975372.32565.8675225668141535853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572f6452e5d4261167c9ce7ae61adfd969891e162fca8f6949d848d51de17eb9
Date: Tue, 26 May 2026 01:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779759753
