Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196AE23BF91
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767930234; cv=none; b=FgeJ0zXOPH1txAt8Y5wBMRrhjvPEHERmQAGJlUwjvRDnbs9DaKT2nXF1dOPGKlCjoPQ/DhFKK8ywc+aJ6hN9jk1c8PDDBJ6jqYeYwqX24DMXRw1gZxd6bnS9tTGsKoRuP3UWnC6wK6mhBUOJnqzIcmEM8Rvi3KEkVaUwvtH5AS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767930234; c=relaxed/simple;
	bh=EVuROIgPWaDIk7Wkxu0znaprQFPYU69NfPZHoT7eIi0=;
	h=To:Subject:From:Message-Id:Date; b=ouUdzkHTweXcfQKrctsBTq9WW3/yQkxKmbzc0Wdqcgz2XjIZmyoeMnKnWTdPAZ5kIeHDxgVFWErOf64UoEkqkufOckw7C6kRperyTf8/RJrsLqykQtTQMh27KvBK5W0EkIdQv5wTfc5W4weerHvLM+o9byqvPmOmkZABy04V+i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSZjuAa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSZjuAa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A271BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767930233;
	bh=EVuROIgPWaDIk7Wkxu0znaprQFPYU69NfPZHoT7eIi0=;
	h=To:Subject:From:Date:From;
	b=uSZjuAa1NusRSM5mPQCiZ4emLrYyRw4/uR8OzOV06GU1r2WosvdyXgv7tT7ioRE/k
	 QGrITEjhubjT5sQq4/AcroxkieD1bfV07rPtO2fCAP5d5z32YyegLalecOZ0LwIBw0
	 AZXk0kVbNWwvQl29L5Rm6pMidr4UED4/nxuFRpRz2zmik7+QhOK+7WkUvVMwT6xJmC
	 P3RKB5Q5ZmZYFK73vJduIJjQpriTBlTAS/FjwLdgGLpaqhZrp3sBRY3jWALUaaoy1h
	 ONIF4QP8Xs+QFxz7KpRG6I124U08H1qRAklo+3OZRAlbMhrpxLMuiDN8cEuwvgQWut
	 r30MmoR1ZoD5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916EDD232C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793023358.20726.6124713572996976051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5345af080702d8aad85024b01949d924c81d085b065da00c9b60cfccfd9693fc
Date: Fri, 09 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767930233
