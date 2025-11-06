Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A73B1E0DD8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762405194; cv=none; b=E1bcfzIDD2z4+KBOCAp493ZL0yBfeU+frUlYwmXJ7MMlxQvYc0jYje/1uYQuHyzO8eU577LwFB+i7UPMEOU5/Y1WNqxKcSAj0GI3VAJUtzXfSfheM7cHaP3KCIOC/7qrlP5fCneAny8mamBcTFAIqsstm9+H8Hh6oPegXtn/50o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762405194; c=relaxed/simple;
	bh=3A4pdqfpr/HEjB7doCf/712D4LChboBrIcGzQ0CDV80=;
	h=To:Subject:From:Message-Id:Date; b=LEPeusPHLeVJB5uzht4yDQ410ILKcpWr1VbcyfvAebtI0l7nts4itrH+IwsVzaXC5m6SPAEvM7o11DB7B+YrLkfc0x8qXzqJDEQaWI0yYa7+C8KA9gJ/lkSeTTg47+A+UN7HeFg8mPqRshOqx/2RuytgsJbGEvTuBmn1vr6Ig1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHf2cXN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHf2cXN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5D0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762405193;
	bh=3A4pdqfpr/HEjB7doCf/712D4LChboBrIcGzQ0CDV80=;
	h=To:Subject:From:Date:From;
	b=iHf2cXN38gaqXSJKrUG0kpsfmXdCVbrLSK4tLyj8SvoLaInkDh7BbUSlOOVhcQJbT
	 g/wLh1ofKsyN29a43D/Jq4oV9zAuJ3Z9Id3itjyhfcoPBRTgfLKOGdiboxGrlheaW3
	 ofowmIHqePi3S15e1XOSJMXwOAIBa6UyQIhjWw0F1A21UfYSjw6cKvadk/x2fSYkcy
	 HRpkSp2ViEf22wSHW9/FCItZlM9tqpX+cyLTUxwGqVD0aZwsR3+MPCSLkZPvTdG9Aq
	 nEJfpasMulK0O7iynxQDU8ZEsp09rsGlu8cH8cqmiKsfrBuxU60GCujYqvQiPAuMkb
	 k4+PKry7I4qqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CFCCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240519357.6297.13843441898451776920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07fa395f3031488ed9b9c164cdcc9ecfa3b3c3eb5456b26bfd584032aa66546
Date: Thu, 06 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762405193
