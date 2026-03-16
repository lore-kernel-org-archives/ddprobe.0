Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F56377EB8
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773652493; cv=none; b=oFs57BE1QQcziHtpJe97xkXeC0s4ukZuWZ8WSsMll5Y9aAMskT4lRFbjsu/aZEvGIqmFXxn5kWdlDJC457R48xk4ZL22faROE1Ge1QJCye682VzGxKfQwJXFKlsdworly+79vZ4E0l06FfDKupLW5L/VKeHMb16ts9T+J/kvBms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773652493; c=relaxed/simple;
	bh=iMzNmqo2/++8dDHqihUd9nruwWjjRSn6S8ffvzFdlGg=;
	h=To:Subject:From:Message-Id:Date; b=W83Ea7ripuRaxGY5onw1H8CqY1evKYG3h+TYpLD/HyHzkgJAco1XVV1v9UeGqdvvDqU1CTu0TYkZAG5QWPlZMamkVp4wbT3O3C3U7+VaIgytVj3hfwPP0L2prKGqrNVjbWhK2ACGRkCjk6xNpwBG5K5v4KUBgfVsyrhVVjIIfPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsHz7THD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsHz7THD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFCBC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773652493;
	bh=iMzNmqo2/++8dDHqihUd9nruwWjjRSn6S8ffvzFdlGg=;
	h=To:Subject:From:Date:From;
	b=rsHz7THDrsbYgJJhrXZ4DveC+vPn9C7XlAA8EmxKN9ADLYwIOeaUEdv9ec82HeU7Z
	 qRIuNsUBXFQPQDU2kj/TRn3Tx+Cj6mQ6n6fFrUsBF5Wf0/2OOKrUsFPMZo6W6L/tE5
	 b5XQu6lr0cCUA2IMuPvRkegBiark4kds8df1vphS/zvqyNhNEYSIcZ/lyt52+YJNnE
	 /sCRAe+0+hJa9RUpwb3MuohAiofit1Z39lqLqYpLtlKHpqfuMzXPlazo1BlyxQIlUA
	 ebC0Uq1mv7m9raJoqce4q4wpSs8Xls+JYWqNfIMKemzzvzjaT3WDQ6gzyUQS+3/tr1
	 41GktA9GUi2eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB48F013F5
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365249358.23124.6013877899277855348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557022e0f24627733246b4552135c37a33ac67bed7bb8bfe0c047c68b9a2d098
Date: Mon, 16 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773652493
