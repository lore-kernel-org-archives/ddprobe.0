Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EED184E
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763623914; cv=none; b=OXQsWw6ZJt1tsO0ZLkaYZvDUoA4yJd4bXcYcIqVa+nbeOrngNIowri0scpDTxMhGSZojZBiMLQ8Di72ebqqCF1sSWkx188tSiicMXQx6jbAjTmz0aWCdBu9yk5QEX+LTAZw8aBW2TArQiNznC94hCVc/9ENp18cgexmLd1xJeQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763623914; c=relaxed/simple;
	bh=Py4XIO9a2yEroZULBWWNlR8jSOR8swAaYb3gZOK3zn4=;
	h=To:Subject:From:Message-Id:Date; b=WdVTHchpikLz2PIUCgIDoHsphxQbvD4v/emTqiWryXZ+vCag/MYhtPtLZMxdTPenIk0/J+kOiUdeXX+haQsqaff7jIvDVMOu9wb34Yl271dBHkEKNPOfvQhWT5sYL8fUF/rd4nJlFwIoNu8UnojM1C0riS8g9GH/1q9UNxe3LfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxHRQ8pZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxHRQ8pZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EC7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763623913;
	bh=Py4XIO9a2yEroZULBWWNlR8jSOR8swAaYb3gZOK3zn4=;
	h=To:Subject:From:Date:From;
	b=rxHRQ8pZq1SiopcgoTMVYLEC/6QpDsmUwNf6mLh7KF0q9yG3t9XZQtQ1qUu3znJCC
	 au2fhw0TbRbwWWKePVzhn8TGqT9KBN/7ATuPr1pZUvhh2LnDEMIpjzcfVwrjzDHCLY
	 MWAsFIm/Nfan5Q17k37FRD3GeMxG/Bo4YxtxeXwv46k8IaqKqBqW/aY+DDd6v784ul
	 KHTRA1ffPJWMXzqK43GIuM/W+ilS4vM906Sdg27ShJXfDAaWlRf0K3ejQKVH4PWtVs
	 rl73CiTK3dBp7oD9XVJptzNvxhPrKgNF48QzCoaSQ8ba0L8eO7hGinTUZHlz+300OQ
	 5gZfrhUjHkWbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99438CF64A9
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362391361.25982.14625754691591001886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2084bd782cbfe5ce8ea343aa1d808845ef235961d2d50aef1670328128a30e6
Date: Thu, 20 Nov 2025 07:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763623913
