Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230BF189B84
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760752194; cv=none; b=Rqwy8q8AyJX9skbJX6NVJ1TvH68qn+erCv+CoT2o+c2jr4gY+bIJsHnf2o+M0M8eSauWuF0boW0uMAV6z1N8AZGLDR7LQv/UJMqjGHC9wX6Xis7Fsxg/hlIEFmlKSPgCjsuljuiENKBrZPUS7SjC91a015sZyBpbBf50oJFXOig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760752194; c=relaxed/simple;
	bh=Nbt4YpWotnZmIRwCuUnw0Hn5sX5Cx8SC/fV7IH9xUTE=;
	h=To:Subject:From:Message-Id:Date; b=FLaD1/ja4kxSDZN3gEBLXrOgx7BLTyvF/PLMas6vCRBCfTCAT0wcCxsLZuFXRkXEdgddgOgMpmuoPL3GRdDNkiMPoBpXW4F6k/B58pyapN9XwvkZVb9ato0R2WuF365Cby//yNxQpNavHNI6uD813nOpnWDQK2stM6Of2lZJaaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4QaIufc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4QaIufc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760752193;
	bh=Nbt4YpWotnZmIRwCuUnw0Hn5sX5Cx8SC/fV7IH9xUTE=;
	h=To:Subject:From:Date:From;
	b=m4QaIufcgCGHhW2Gf+qcPbjI1ABG+9Lv4y/yb6bCkyhUXMvDwWNTESbJ9Lfgl6KGM
	 MuzDeeIpHIqizCe+I+/fn12sxcLb2ihd5dQzqqao3iSlATW26y1hz/suNY0q05Eooo
	 QUB2iPKrD6k8q6cQfcIDOEe/v2hrNbU5lKwxcdlS2XaUkAfGMb1+hg4Lwke4atc++S
	 z8EkHVd5GlwIfNJZoHsDdSUUixvbsL9Oo9Lm2oQ3GWurOGzh/dNoBKMA+bEi6uVC/L
	 ZBy4EUSU9mwzlRxQM9bZZTG/wYRf4iS6YX+fhVLmqMsWwv0usVJKDD+Sw7bqRN3Rds
	 WA5akG9KbEk/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CD5CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075219357.19619.11625546378181722771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af83ac0749e9ec5e199ebea34580e67620d8a53f35e2f3741c92ec90fea226a3
Date: Sat, 18 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760752193
