Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E0C149C7B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737006954; cv=none; b=oaNDXPgAuxO55E/lgYtwTs2nFqfuLsvYwyU5hsondt17qDYE3LGEEgfKu7+CX5nH9T49CpQkNWAB+t/X5H+Z/De3tHuIXjvSaIRsBsI8C0usuw1rWBZVcZWU/xJJYGurYhZgagYG4I4jCPumwMBUDFk3QSLDOcpNwKBS2jYcY4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737006954; c=relaxed/simple;
	bh=yWJ2u+MPS1XdWhlwm7ZxIfxRXCZsIB5WfGRNTjrK0J0=;
	h=To:Subject:From:Message-Id:Date; b=dPc+PPHRP0cHQznE9URLL9jLjn/V5cJcAlzMZTWawlleL+SdXtHdxFFISQtaWgvXKQt8hVYrhVocKktz7se7px2qF+BhMzppuVDXscjf/N0XlkQ9eLFdx0+NBsA90IPwJonUhfCwq97sQLHHNH/MA+CECehRZ6auUw3aPuXct3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEijk/s9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEijk/s9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC964C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737006953;
	bh=yWJ2u+MPS1XdWhlwm7ZxIfxRXCZsIB5WfGRNTjrK0J0=;
	h=To:Subject:From:Date:From;
	b=sEijk/s9LQQAVY/hJIaSfMINJ/q10YvtaaBwgKj/f5+e9HQ74IvaUW9/NclwMfLlH
	 15KLraeK7WfxlxoHpYGYWufHNQXssmHJCrq0sObY43MTuXMl9bSqwz7JarG1TMqynd
	 0y/bOS0TrlRjmi4SlWt/9euH8B6YLdehE42u88tbzA3NT7HlJiXfbDh+hjdMf1CUhv
	 q/3BVTVpzJqCiyEbLxNbRwn7EJWX0XhwwCthuAKeQ9RNYqMm1sTIbPbN0PA4yuI09B
	 BWPiJkjmuf1y5Qrko/aNeLcSXOUrjNvzxpT1KV2IV/pEYe9PzowA3UxBeBy+7wuAZV
	 I1nhuZlePU66A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B221E77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173700695359.4352.18366713401394310404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590bfbb1875813db88cbfdbe028833687455992704d402d801a8c38e638c422d
Date: Thu, 16 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737006953
