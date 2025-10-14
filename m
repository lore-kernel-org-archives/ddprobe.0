Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C3D2FE587
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760453394; cv=none; b=O5+oqCkZlTUvRG5Me4IbQ3y4ua+tpLT3BAqp+s90a7LKk7ZmleRccxNI6uVmJREBbvU7vP54L2/ZqrRJd/TuoHUgthbhsgLwMKac+iinIEfcV2QJM4upG0fjAFVVEXoiDwDeLsnwTgQSesXpOZz4h9/+BhlIK46zn/zmZM0P2bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760453394; c=relaxed/simple;
	bh=8VoUgi77QoEdRX8PsP4DTYRG/HsjF03Q0pEKjm3dumE=;
	h=To:Subject:From:Message-Id:Date; b=i770n4z+Ad6msuNleZfX3EuhlBAaECh3dQH7zMhdHwzWWut3AwijNQd5x4ty8wY1X1L1tJeXXBxDNejyXhfa+JhrRsNQHLdg70yDzZncKaglHfP3VmJDd+7V5sq39GsJ4hb9Fc9GpjptkRmKOF8V7wVW+8icfLUas3mEOii3Gbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZg/Tl7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZg/Tl7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E120C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760453393;
	bh=8VoUgi77QoEdRX8PsP4DTYRG/HsjF03Q0pEKjm3dumE=;
	h=To:Subject:From:Date:From;
	b=JZg/Tl7DmXq/1WIsd4ln+ptrn8nD+qn49YLue7gZ8z7YNqe9s74acI5vIIvC2ZNGu
	 aZu06ahnEA+7LovFOz1gzXd17dob6upBdiA529m44X86MBWX0yWkhH3s7CsNAkzdF8
	 4BRdEvjSb0+UC0USb9acaYVR9XzFNxkQo35StbqnkxoD0m/NSjAlI1hyhbyLiOa8Jl
	 XaWTfdVk8+7YJJdgTFYUk0aE1sLP1nbETPEDoQeOPdkHE97DlTK0xvKjDx5CkZvsv6
	 UgoZhxmNbLeVG+JEY5066Zszt5dRUyMBAYCwwGMtK2BQMGG2DzegtZ3TkZtua6eZBU
	 FRmEr2SwYIleA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BBCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045339357.23406.10151432717029450261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b9dc09381a0656c853652c595ebf3b6b984b62b3329dd747c64c27548c56d4
Date: Tue, 14 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760453393
