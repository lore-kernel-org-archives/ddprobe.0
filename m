Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E23D2C21F4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768538034; cv=none; b=g0E4elW5ZYJNQAHSKK6vMdQzPK2JEieyruk5zsGplWLjlKMHEhNZEamd/RlElsQR9xkZGaFcWkQaQCajzowQ/s1AXB/ycqNpakSvkG8pcwzi3CFUdCZH3+kWfm5IYscBx3qFlH6c1793nrc/4o77eDj1ZtBIOsaLT+MEbKqSNxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768538034; c=relaxed/simple;
	bh=GJ6N6ikVFYaA/3BYa+hYERaYirF19oegkw1pM3qAT4w=;
	h=To:Subject:From:Message-Id:Date; b=aGmRzTxYBW9QAQQCW7y8PzFz+FRFKyemJ9YpJ5PnFhSptWnmFuP9DaiCWsVbYBvD0viKoDisB6bHyDo15IPOibltvQ9XtFEcw2BrJQDa/Z0Ru3qch9K8/zfZqUedxtDV1U/tqtzmXx7ccUQ/iZTMteeoUDe0rleJZveepJezO3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXbVwp4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXbVwp4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F7EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768538033;
	bh=GJ6N6ikVFYaA/3BYa+hYERaYirF19oegkw1pM3qAT4w=;
	h=To:Subject:From:Date:From;
	b=NXbVwp4P38r47rseqSLyejCVCbgLF3xFDgdPIGR0q2LZ7iYfLlgTC9A9e+FbQlb8+
	 E6QR0+vESW/RGx/WBaGkJwTR91cI7xFne2UuzZRbMASDgwYiwCJzPhuZQ+7PuyBPLf
	 I43zLYVjlV31z1TgnQL7ZEQvulmBw60vdWD1Z7mF5EchEyt2piNNab5XVXciWz4QmI
	 ycwo+t8JD927aCST8kmryQBarh9Bngq5IGDZ3G625Sm/H4+IGtP/xDSZfKFRDt12en
	 Vd7oVLmwrYomAPaVus0sKd2z6DdWpfw2q7tDxVTHkw0K+W8ozhBqdqXuonPtXYyvr3
	 D/+Fv+45zgLgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A6D4A5FB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853803358.12727.15227107444375818595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341a55c81c815ddb1fc24e08f41c11f5dcff02c1e983044952c8f2dc41c295f2
Date: Fri, 16 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768538033
