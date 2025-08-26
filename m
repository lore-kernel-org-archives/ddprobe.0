Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190B82D660E
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756182594; cv=none; b=OTHPMhuOddtN2qEYggUyCk8kuuO6cklQYmHo7YtYmZW3cYJts3yXEsSrAKvFjA6XHRQwbKdEWFiXSoHEmfeKpTKmn7FCebU73KgrdYgqRgrxcgCxAppSfUor0r9yUaWU1nrEy8yX5a5JZGPkUMhn3LH+eX91KKO6oTjFTYTPwos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756182594; c=relaxed/simple;
	bh=6lJFzM2zSbGQh0jZLlZMUJsFe3/gaC2kPQo8Osg04Ic=;
	h=To:Subject:From:Message-Id:Date; b=LcA9fc1cj/qDiVOHtrVn/frRo+rIDQVilT/G31a8aH2m2c7csZ8Vy7Mh1IvhvgC+qHGI3v6BDlFR8PVHHwZ4jQuNDUgYeKnOzxs4dCIgDwL6iqbEHpGdmu9EWzeQ7AlfLZizlJZiO+odbziPNFrnTBpCy5SMTiP5Q+RLKsOtmFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6Q+0g48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6Q+0g48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A620FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756182593;
	bh=6lJFzM2zSbGQh0jZLlZMUJsFe3/gaC2kPQo8Osg04Ic=;
	h=To:Subject:From:Date:From;
	b=i6Q+0g48PofC+xbjIhlD2Frd3JZ0CJnumsWfoR5nCTI0bY69jwwY93FLOvmszlVM5
	 AmGtaMHRo8mn8yhEoGjDLOn24ixDicg58cy/dr4pS38CAfoDLsvUxLQqcjxNJpJ82J
	 OcnsMLpDIZUNzG++sxmOR+Z6/PEQtqwGKLC9EaPLztEcnsBY4yyMgav4TzmYEiOftn
	 9E0WnpPNm9Mylkgy1egJGr18euq8J39PfSy952ZrFAHW8YjnGnE8oXFQndozooPwDk
	 xD5uFDUd1HJwisjSqTz/XhYWIZR6/XzbqC88P0NaVFD3eyPdtrG4hwQZ2aHr2Td2le
	 lpcO17mk84ihQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93414CA0FF2
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618259358.26156.8273431809608995805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39a13640e930ff3812fc8753447144030f0ed71203915b76ee09e294c302b14
Date: Tue, 26 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756182593
