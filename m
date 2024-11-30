Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE7E1AA1EF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732998354; cv=none; b=E4uzBdbfXxu3ahHHsaNDW7EfS8N3cdl2MyA2+mdMuQ7zQw/8s1E625ElgRKjsPyTnOikgono8WqaK1wTiPKJPQ8LBVcIJawisniVBD+bOLmTDomcIlqyY1ViByVRtRBCxJ5Shl4yljrvhOIG+siKwNy6smTgPXOUcmy3fNwwkaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732998354; c=relaxed/simple;
	bh=4c6YQ4EqK54x01KMeSxmHnSPG+q0KiPLzplD+D3x2qw=;
	h=To:Subject:From:Message-Id:Date; b=VOFThJPlvAp5xKSmcsw70yJb4YNYptv41mXYHL82Y2HfiKoAaNF8VxI4vYCrpecsKoOqmptogYEzzM4ym6OHQF1+azsu08+6NUwhKckZrig7DXoW8Jv5qf4iMPP+vGBDxrMQg5f/mf3N0nZxJQlm5wdBFXKQcuE39n1yXrxHjh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/Wop5Xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/Wop5Xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5177C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732998353;
	bh=4c6YQ4EqK54x01KMeSxmHnSPG+q0KiPLzplD+D3x2qw=;
	h=To:Subject:From:Date:From;
	b=u/Wop5Xe5YO6JOzHQv+dR/bOLf9BXlXxaQwfMcg0Q41V6Itifqr7A6YkfcN4tVUiA
	 rRXBnnb6m3r/LwKNZuQAc6se9x/FOofaUeOPe56y+uzy3sEIEzmqJKOpfifV7yWVi1
	 3rxkfDXR4OETyF2RJ5q097XLbq76u/mJFcipVgrE6I0i8NPOgZtIi64mEfwLUYe1Ar
	 qrt+WSE+Pr0j5VaoM2ipJF8mD0TuNCjY04va/1MN8avOUdr8RahKKRCWKj+R1rPCw3
	 vKnYZzNhujv/zRdvcGGtbmv8INB4AjdEJd1UIn5c6oqULvtxevmBOTSB6h2baB2sla
	 k2byzjEOMt30A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3A9D7360D
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173299835363.30800.4109344647428315358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f49f21663ab7db383dbf14470c3a05fbeeab73769e7495cc08c45676971a5f8
Date: Sat, 30 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732998353
