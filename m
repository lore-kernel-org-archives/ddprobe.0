Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51B3481AAE
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784129314; cv=none; b=D1tOFFhYW9jFDCn7BfeOfV3IvcDxtniTFOHsU0NKUBLN2+F3sY7GuyL2JRC8P/AhTquBAK+9tjQkp1tbXvaGnarHCxf2m9YALvg+v2W+Rdp2mt35fm2k53vVTgoEbwnKzGWAVewCK56kmA71thZHpu05Jomhz8TlAdUYMFK/TLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784129314; c=relaxed/simple;
	bh=lLeBQcGKX9JPXYdnRAUhzAGZKIU9iHDNSn79tePHCJg=;
	h=To:Subject:From:Message-Id:Date; b=isSoy0zDWq4lkHWtZkJ8OkgvnWfEYUGzLLXUGEarW+YxxBCrHN8E99F4iN91EfnvVYdrS8MkqpGqBZ4yBuph3pNpi7eK3dT9xKYcEKajfMHJmuSEGXN+4bXmfhH5wR4P2manosJwWnMdzKBc0zFhZlvx3y1VlXnU5zmXiLatn7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTfPGoJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTfPGoJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 52A03C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784129314;
	bh=lLeBQcGKX9JPXYdnRAUhzAGZKIU9iHDNSn79tePHCJg=;
	h=To:Subject:From:Date:From;
	b=BTfPGoJ9e+pneM7Mzt6hfnQ5S4tE+aU5yUlnn8XhPlC1AYAo+qInErXw+WbK6vIkk
	 P3+hwpJCAfnP6gkQ+CsHiCubq4pRnPzLEs5Z+i7T61QZ7Q5+g4wmmWjZGQXyHZwEe3
	 duHOn6UxIs57O0hAM/aMewRObW5B9ID4y24ARW8BHp8qX0w/BuLvGPNh60Yj7TyfJg
	 mJXNxKfkpPYTYUZ8UrAdgAeL/n0r1kPhRUi2VcRYS8LHoJ3MM6V/e2QOP5TL/aEiHs
	 AwSZTr9ah+VthAazSwI9ViZOwXepOyISOAI2yomZsS2gpY7rJiIOT+8mkpuk82xDk7
	 fBu4POoPR13Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06544C4450E
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:28:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412931398.7067.7637584747214795708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f2144ef7e8c89bc2082f2d7e2cbdd24d1a3e54085d575f8de199e3b40d15b3
Date: Wed, 15 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784129313
