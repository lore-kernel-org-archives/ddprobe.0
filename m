Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D5D32C316
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775079934; cv=none; b=XSTrvZXS92z62hAdVTRIrJdcPz4+wnbvsmefuY659f7pvTi1AJ7i1oK+dcr6loPj3TfV1hJGn12kSZ+7RP/a0xR6sZUSFiFk3GPw9jOtc0W85yshaUDJrL2GxQQjFLgBNbGqP63lfJKxAqgU0EA10hneszVTothNe6gN1sY2TrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775079934; c=relaxed/simple;
	bh=CGjDFdIUiptMY0ZQUp8PApGqrWGsxHGgIaolP32Mt6E=;
	h=To:Subject:From:Message-Id:Date; b=OWsW14F0ynNjdSQX5kJ6qUOL2jrIozgDKmkw60D+hv/gJk/iT6R09Rzndgc6iANoc7wW8p3U/+LdeZy8PB4uKhvPp8uY5OEIB9YDQsRhWYm7lW4P1BieukUBaIyruqHlkppk/k6+YOzb0hiVtD8Nn1aHBvckjofmKNabiIPoeTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOw2OHZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOw2OHZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4ADC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775079933;
	bh=CGjDFdIUiptMY0ZQUp8PApGqrWGsxHGgIaolP32Mt6E=;
	h=To:Subject:From:Date:From;
	b=lOw2OHZWuwOzbFkX+amuaNdfrJUmsiFcqyw7w/Era2Za3jxPWN2fGGtpwtxF5PfW4
	 r27KBLNpNaFAMUo+ZCq4DRJpsymdD7MdmCn2oBOnBRCHH1C/lfe3EUU6ZNgc2YT43K
	 keTlGnpc93jLpHhJOLVIYPAgLAdl0hWT823DjX2YmVde2LQUR6Da9FFbAOFxma43H/
	 YZ4kt9Llvb5bQVnb1B+MFZqDVQ4IQbvrNtreGiYP2kDvByLecbx/kXrXngMXkLYAL/
	 UMT8IJI8gCnO9IROmAJxY8XvDzAjVeZYg+Qt2v9jEBVZ4xXF9Bbr8moNtjiBPfRXDj
	 ESp7miMQ4Pp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF4B10FCAEA
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507993369.2657.2219223316716133407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b11662993f658cf266c3db9d2376477f0d577e405fd21b9392cef8d85b1738b
Date: Wed, 01 Apr 2026 21:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775079933
