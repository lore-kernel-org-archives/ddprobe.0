Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC1A25B1CE
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759756794; cv=none; b=iamS8twBvwQZKRuHvZ/2rtLm0WHqD82APTjXCKt29ZSUiCWAv56LInlxVC8o/ist7TMPYJEQ82JqrctwrsERKot4tm6pxPWpJkjJGFxYQi2JvGdHgklCzaF1g39HKUMhLojg6lPqtBghlkckYyaPpdP+fMyplHKuRhSrzLF+UrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759756794; c=relaxed/simple;
	bh=GPBXyACcheTZ6s616UwEc+v3DkWdYTt0PxAfG74P2/I=;
	h=To:Subject:From:Message-Id:Date; b=YAUqs6h5HlMdiwruoNbRq34zn8t+BJlgM1hloyJF2zKxYnd6SBOnaxdoxfGuJ6I37BVm0v51VuJReW01q1ptg8l64rYon5b0XmNF+sqU+Kjoktb28IA+L7roFHPFyIn6OZ1KY6oTIuPXocRou4XYLAAAV5zAP6D0BteVDYppgpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwBAr/af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwBAr/af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A118CC4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759756793;
	bh=GPBXyACcheTZ6s616UwEc+v3DkWdYTt0PxAfG74P2/I=;
	h=To:Subject:From:Date:From;
	b=SwBAr/af5ZLR8z+o1t/KYDh4+fQgX2aNQOEgRLL0IMDXlFsVbRneFvuMw2AWBxEqi
	 S2+7cbyKY2T/lG6jrmpHcD/0aUrESYKB5QeT3ZZs/lNvE2rpoQfFQeXZ+phTVbIQX/
	 go/Jm5gkWMCOfKxvUlvIQ7Lwi3VgQ556er/FkJT9zM/8EZQxvwfpUzctUvK/l2fp+0
	 Rc4Vn4tv5gCc30FxUYSO64FUu7oNQq/qZ9LqmyM1QooiI9z0RDCIX9X7Icr0RaC7LL
	 BxSYxIs85A9A2pP6mRrb2TZ8sGJHk1PlKseMljUh+ojc/BFuH1aOTsFwJ3uowyBI52
	 uyJB09JGr0OBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14FCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975679357.30521.9290314111055740233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66deba7ca05a488b037f5ea1740dccecda8fa6034c28874584c4b58ac53a823e
Date: Mon, 06 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759756793
