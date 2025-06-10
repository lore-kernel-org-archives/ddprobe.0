Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3140428BA96
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749549594; cv=none; b=Tj7aXUAaxat+iMl9aBSkFhX46GvnJwi4T/dGcjG1ZTTUkVGKWlKBIrQuDohFMTKzztDrE4AyKjMKivW3ttadR048VwNR0QhZgWc+Q3GDapKYpZsX7R8r0huTrBkgPH0pLVTaLe9cJS9u4q5XPCEPxlMBGTVvtdNzZk1yVcErfcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749549594; c=relaxed/simple;
	bh=wG6jx7WwaE+U3KratBmuEFtBOeJEvgtymdhHYpuCBgo=;
	h=To:Subject:From:Message-Id:Date; b=svP657mHu55aEInYYZ+mGfiFv4nZ5LliFnf6KYaXmyoyfRDauDJ0EXUgaDSXsQFMlAc7YkSkg2nJQ8R488e3U7yDOK6pWwgtY8owMOPS1/oSi9pEoE9smD0dtv5o7NCPrFBEUG3ARU5PRKIGYGYAF46M5im7OAs+sz+wV0alaZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oopEXjcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oopEXjcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9FC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749549593;
	bh=wG6jx7WwaE+U3KratBmuEFtBOeJEvgtymdhHYpuCBgo=;
	h=To:Subject:From:Date:From;
	b=oopEXjcwGFIMRkFT9ZAlQayPKVJjAL7tD9pDUMKb/3O9mEenqhodv+f2FUEjhH9v9
	 ACRiVuR0z14vRx91WLM8OEGtAUb2/8yWgQh1txfZCqD3oMI6PzZWeQG75zbkxYxri4
	 fzNv9eKNjD5NHN1QSAU0X8hgt5X2zCt2qYwb1PItEnyK+TeTJMys7a6c/3A/bnjhdR
	 wC/qVRaDl9u0RrcthELo3uWZS56tq95fVq3pfQvWG492Lji5VYLDW/UdKvMLnaxVuH
	 OGXndLyM1QJLBJTCtFKmStHFUuLdnm/56FWZFbXIQWZf12OrDMV3yhF3QXOmv4QVbZ
	 gWCDZ4cCJtX5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90504C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954959358.10134.1781171552493179169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b62a3ece5ccc68dd3dc71f509b33b1186835e595bb6f53e3235b555d6483a1
Date: Tue, 10 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749549593
