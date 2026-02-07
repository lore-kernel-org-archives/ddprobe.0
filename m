Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B7B1A9FAF
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770423834; cv=none; b=P8Khic5HDAHA7fF3BUsA67zn4UvK2gHjE1k6y5t0puw+qQDXNl0JQTsdthDaK5jT0JN7jrUKDLOjAn1c4B6CNPxUcxn2+090HsVirFKgrxWgJHZqtcz7sOEMv8bKNTepRpibJ0+67WPxyLCalbBxS2Os4Mq0RzcwKuzd+eT7ulI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770423834; c=relaxed/simple;
	bh=SahtDJqIvhu/AwhAjRZatOlKAegh6NsZZhsPrjVoMyY=;
	h=To:Subject:From:Message-Id:Date; b=kzGlXRyajLSZ23KpaOA7YCi6fU6vFh4nwT9AiPRvlevj6pLecuihM0jOAAHCdvbYHNeI9U1kBIf4U2bqQ0ahLB+Ce/wSfCFfqV5BfgRismytVPLV4UDeMCI+vgfvJijclPREYF+lz5+qCtAmuLuz5QsbYE+u3//QK50H4yCWTsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SATo8tgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SATo8tgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA07DC116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770423833;
	bh=SahtDJqIvhu/AwhAjRZatOlKAegh6NsZZhsPrjVoMyY=;
	h=To:Subject:From:Date:From;
	b=SATo8tgm6FKKpJ9MVG5r+VW0kAc0s6QKATukh/Aj88HIT3N5u4uy0gJkyEml/qI8E
	 OqUbsoq2GIwZrAjl1QdPyzek8JLe7ROO69at9u3Mfx6NtdaQLC3K4Fv9r4HG5zxGzm
	 VffuxT6eqadqzwazZHZSqWp/fLtY5UgkJt5O8FWh/UBREV3Jp9qRmHvhJ6GU84x4dE
	 zv6voBWWFT3mzfn+6xA5C5rPbXusZxC4Cer1OjJt8OUerypXM8I7H6b/vZBkM/WVpz
	 n4FTzlm3JMgoIkkS0NT7uFARm4Sgq7HDpD6qDogSEURovdP2E5zmgfxNN5wCYCYVD7
	 JF+KxEUFm+PXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96653EE6B66
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042383359.24410.11725867110906208014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3443fdbc7d08c1ef086488c750704a2737930b1cc90069501d6c7c9eec018cf2
Date: Sat, 07 Feb 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770423833
