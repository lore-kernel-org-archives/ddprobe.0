Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4348734A3C4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779364834; cv=none; b=DGIMdgcsAdnCc7EgEeblrSNa3mig5EfmL3SZctsx5xPFkvnN5/qASQksj+o5UE/W3ajg38c5G3BUL6dHUYBsxJ+Y34fTF+ru5tT7jDhCLi8lY8HoEgoCuZ0mYE1Z0jqt7hUk83V8sJrK+Anhzb/LnxvvQTkkDaHT7QNO4Um3MT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779364834; c=relaxed/simple;
	bh=lUv380pTyPE7c+iiKeTPf5k0yl7WD4O9EL43EwUt6MA=;
	h=To:Subject:From:Message-Id:Date; b=TErBby4lzMLWyd8uKXYI+4pE+sO2Ihftp9N8rkRNUHQ7CILliYmKu2n4+8czV9HdE0EbSC9+NltHCGn9jq3sLoRl+s9BmcbwiJ8VD8jiVabs4iqJhSlVGcrl2ThotxMX0hysQaxhGA+fHCGCRHPRhik/To/10fglcOV1XG1zeDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUgiVuwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUgiVuwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4784C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779364833;
	bh=lUv380pTyPE7c+iiKeTPf5k0yl7WD4O9EL43EwUt6MA=;
	h=To:Subject:From:Date:From;
	b=jUgiVuwFJg5fSfC7FzSOGTRBIwYgcpQ7gfK2cwiuBGqo5poozAc3mNuIoEMZG+ma6
	 R0Og4Rp/dXgxwU6N4B7mjcrbrd8/JaSV8kom0kVk3KfI4MQDpcaiU57DKl4JkAODdV
	 L+ztieMp2hJAmBPYEiw8OcglAWgj/dGr7BuNJ2S38H9139EcHlKB4Oe5/Jocgt7LCA
	 /kP0Ep4QU9sMiukYMcHcGKR0UjOTYFprjbT22ZhkCYefAXttzmgB5C/5mKEi4Pwun3
	 JraQWz7RkMJkWJxFQeVsQOUasRwdpGcbGuya01CoHqGQ+W7zIQ59DiW3PFJ3oAb811
	 Udr331b54o6oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3C0CD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936483369.4523.4048340922565517971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd7e8120cc91fc1f5fe85bb745a963ec0e3b78a0ab095169f2d91eacc54ebce
Date: Thu, 21 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779364833
