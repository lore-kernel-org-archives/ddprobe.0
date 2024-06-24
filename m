Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB4C12FF84
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719245543; cv=none; b=tXa2vMcmtpPlGr9TgI4qozl1EZU5zFx+oiNyvCjwOliY+7bH+E+1iWSSxeVCyq0CCFbcV3qLRZx5T80Pyhc3Z0B9P6JpfaQ5nhK2rJWmnOUf9HBKKvMB/SYFrdeyDPzx/hFxvQKe5oMS9LG7uQNumz/sQeca8R+Spvi18LwhfBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719245543; c=relaxed/simple;
	bh=nrFndPvFSCmSuXsM6R2/n//PmTqcab6h24ebKpEYCZo=;
	h=To:Subject:From:Message-Id:Date; b=UXeSRsn1sFYvKqPVYBwmeQ3Qgq2ru7f9YoqcJTw58sOEU0ccvithV16rY9g3LF0rmJ7ThlSG1f8oNBTIQCVXrwD27c6/9ZlfF8uR+glJlgNlFyeZZ4FJYnYjP0S7wE3asO6Li7kaxu8mNb5f5F+4S1OFDLXbchiTbvh3kVWB3p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRWGPxdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRWGPxdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB2B1C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719245543;
	bh=nrFndPvFSCmSuXsM6R2/n//PmTqcab6h24ebKpEYCZo=;
	h=To:Subject:From:Date:From;
	b=GRWGPxdVzEoShGACP3r4oFQJITFR+tI/WaCwk5/STK39uqymN/rbk8lygGsGWcqe8
	 SnGcBMzqT81GNDg8dl5Lh39xYCDM7VV6gqGfFgOg/VuyDRyApco4Qed5nPXBRzesUT
	 50CpplQtmAFU69Jph5TJ3cKWGYQLkjU50Vp2ZrXdHA+7OUQ7Jrf7/w5FHNwhBVFmyP
	 YYcS3nnrqYRdU2ByxgjQWUC5xptDdeQtTC6hJd09Zh3g+B9P+22LjY6kl78j8B1PI4
	 AaI/FmKPtOR/+1i5AZFyc3Lq/P4Eb8yMjXCYgO/+sRL63HaDQdczPGrQh/uYQ3oU0d
	 6gyE4wJmb/NTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCEB0C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924554282.16807.4880367015880233400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa89cc25415905d190d7a510f0aa610b75c3a417b9cb48e363ae1c1cda33aa2
Date: Mon, 24 Jun 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719245542
