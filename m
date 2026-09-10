Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DDB33BBAF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789041034; cv=none; b=J8wCkO9TEYv4sjMlOaAbS1x/Fh7Bp+/OnHsfCraGOByEKYyJfkExVNP6CFcG8VFRhFuthFqJJoDWfHElBKMe/D+tpOJqZLf6SKMNegfZvKgKgbW7qEj/os6Fz26ruXJTkuytByDC5940Z7AKUVxIHc2LZGMn9g7IgVZqjDC2NHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789041034; c=relaxed/simple;
	bh=xQphDQYR6xQvHjGlrEAjMT9tkb0S0wqNwoZtus2/IE0=;
	h=To:Subject:From:Message-Id:Date; b=kwQBsTuWzh1vOIJjk2Ny4d6OpmrQY6HgBxhObom1of43FWteRxzo+D9RdWF0S9NjTn0xfYjttS1FtCiKSyuOt2CVLq2WkG9fwXY1bKG+7qgGj7EfW5staPCPz0wUZALJbuQvHA7zaBPW0c924pbucbqE/N4fbbTSvJezV7bkYHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/CGddLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/CGddLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACEEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789041033;
	bh=xQphDQYR6xQvHjGlrEAjMT9tkb0S0wqNwoZtus2/IE0=;
	h=To:Subject:From:Date:From;
	b=X/CGddLSsYv14T/WZiuGTCGzknv1pGd3Z0LawG7oVGRz7YVWTIh6h3NjQ79DTOgsQ
	 +o3n2Tr0ZcD9Jidi5+YIxJYux5yqv3/erHFMuCM0Gwpvl4teyqX7QMCbzw/cIDYtIX
	 t6GITO9vJLQ8iclOXWq/sYq2xpXlwlFelkIhuOc3Rrd6r0FV8LZQiBZI8wcLsNLbtM
	 /zlmVu1RxqA6EeXADjSMt5TxYGfZ3+/J5cH39LZuhflRcS3j+xtGFE7kUPSY8C3RD/
	 of9kvPnT1gN6bk4Rx4VvSEaTlFzieabj4by3Wrp1FmneaL0wWJwM5N5MtvQBRBycOQ
	 VHtyxoU1e9URQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9747C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904103368.23607.1621317554413144175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ed7b1efdb716c7345b543191817d4528e934e7b4ebc4dbc4643088562ddb1a
Date: Thu, 10 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789041033
