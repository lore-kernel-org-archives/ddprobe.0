Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09038136342
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724987754; cv=none; b=qGQWdHAtiDu5mlomPdZ32NP9v1SkRg1pxBFZtLNxGshQpzXiBAROz4pk3SKxwi3dG8rf43DGH5qdqZSmEbNO+lxIgSopv4WFNx5IduBiArb2IdGLTwZzlm+vZW3z0QUgeS6LaMrOEiWCPJFvdS3TlGqWtk/XPoWfTvMp1kGHgtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724987754; c=relaxed/simple;
	bh=jpxW1ID0ClYTDR0tW7whgeIFuJOylXcglwWbgJ1bGXo=;
	h=To:Subject:From:Message-Id:Date; b=ZqHU0BKguzyeuZ5FbtmX6T4r4V2M1q+KRwpzZLm0hGKC81PF45z2omG4mw26fNEu2XM9VMVlVACcOsDiX7qJsG1WBHYy5MaG4VnEcCq3HyXlUvo1GxS3UtNwsfDMyVS6wMdAr3rs897UqbAIlEh2LO/7ZMSIpAVhJ/F5AMsEZ5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFfx2SlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFfx2SlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B49C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724987753;
	bh=jpxW1ID0ClYTDR0tW7whgeIFuJOylXcglwWbgJ1bGXo=;
	h=To:Subject:From:Date:From;
	b=fFfx2SlQSOe4gOjvsc7xCZGVUAjImj9pANaCwzWzBkrbhSFzt8KHERkJtfJI9v0d1
	 yzvXmlNvv44GyP8kXkUkHfQI5rKbNK193ZRbC3LoT2eugpTuNhrMNEMU3m5qyNmgEx
	 eAdmbP81S0wggl+cswEGmazmWwfHZjPERStu/p1arDUMuj46ff7JOUdVdNigL89aph
	 wN0Kt0HocGfyxfRYC/3qIHiV4h+q9c9sD9mbIr0F5EGvlx5t6REzxWss4Nd1dXFQ9L
	 d+hlk0zAcIkAJnnZ0S2KSXfp/CLIoCUUqsXISlvo4FwabtF5bfI7nGON6MfhB0ShQb
	 qOH1JrIyHkr+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9132AC5321D
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498775358.6464.4341658810285054850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b49316de357ff16a33949af98157eda957f6c09fe45990635cdcebc5e750226
Date: Fri, 30 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724987753
