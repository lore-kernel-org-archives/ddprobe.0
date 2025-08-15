Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4183114A8B
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755231594; cv=none; b=ujA8SkdZk32qTHAF0qdt1rUysK3xfs7FnkXMBAJ81xw/ivuP5eRtXZ6m3KsVi1ynRbrHiWvHcAHjRF+5EkylucJICNpW6L0ov9douV0i5JkXJQGY2ad5xoJw/o76dN8/4ntZZWMVh7tRBg0jUeaWQL4el40P52CePFERBi7p1Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755231594; c=relaxed/simple;
	bh=rrJCNjC+RG6cOhFOwuV9c3uNvpxWizTkhFydCmWkAf8=;
	h=To:Subject:From:Message-Id:Date; b=uIqHhA8JfOawN9XlG2uUf3F7C7ZAZm0mMc/7Ljea7jUWo9wCewWBh70psndQ25flfpK8j4cicsdx+5YTmx5upbmh+7E+W3/Uyoz6kDzR1Pdokoo3Zop5t28XGVrywwtQSQp82+kx8TwIjFBCJNkjwTpkcQ+77aP0XW85YDOH5iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWgKh26L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWgKh26L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C57C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755231593;
	bh=rrJCNjC+RG6cOhFOwuV9c3uNvpxWizTkhFydCmWkAf8=;
	h=To:Subject:From:Date:From;
	b=AWgKh26LndyQwCoOHgksRg2Gu+KfX93bFLJDue8S9dbpZi+9Rhle6ijUzzVpmX5pH
	 IvQHxyLT/oNYMVc3M4WLTYsRFaa41I7nMZBYoSvcROq+Z3yiiJkVQIxbEHkIRO5NTc
	 YrwQWubBpDP0PKbKtJPiKqHe6QJtPHD7LxwnoLA0j4K7H+TUGazVMSAiulPIQFhEFP
	 dsXtCYKFheao64PVeVOdrg8z0UgUhQPUYJnq3TjJY8g0g1iiC1bMTVlISslXQmDj5o
	 XI4kVzCAg6oWtzeqSYf1xo9dGT51B8lSzCp2+0+/GG2f2Py5crh2vXh88hx2hRjnRS
	 q4BMKdVczD2kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9591ACA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523159358.20047.12616432620827216837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b5e765fc1f61c13b1740f1a4e1b41c3f2a7ded37d79eaa8323e7da4d0238a9
Date: Fri, 15 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755231593
