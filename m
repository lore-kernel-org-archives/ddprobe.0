Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB8B4A1B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718160503; cv=none; b=GLiHVxFudizYIE826WF8JLa/7IVGI6dQnYOgxez20ChW+qvSGoBXHT1q9eEWjtQgzLz21sJxZSFxWvUytYNM9paG96fVnSvWQVGRnlpyDPdqhCC4M67SPsN7c3UNGz8nUcCqxdiJdWBx33Ay3QicdpQ01WrAoNZ34DZK0+QeLZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718160503; c=relaxed/simple;
	bh=WGzJ4MgEmDfzo3exI6R4QvOiX/3qKQ68F8VFmmwiv+E=;
	h=To:Subject:From:Message-Id:Date; b=WVGJbdDxq06UOmpRb8F9xkuFDyrbnTdjdiM7WZKcqvfR2WaNJ1iX9AUQWXmbIUMkp0kyJXZt2mW98Scw3/1uaDcY5r8wG2D9ssxqqisep5CTx1ZNIja13BN34ow7EPXjZf4MfnS1GjwhoF9LRPEIpaCtEQcHVcnbl6oxdEGD+3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUZap2fV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUZap2fV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABB7C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718160502;
	bh=WGzJ4MgEmDfzo3exI6R4QvOiX/3qKQ68F8VFmmwiv+E=;
	h=To:Subject:From:Date:From;
	b=RUZap2fVNl1r4HvMybvemWnYOKshCx9a6ys4kJe99dqoPSjv5/Zz4oOdd8HfD8LYX
	 SSTSHFAO/Suhpkp6QHPLBU27RwsWVLDdriytDb3276tfOju5WSMmo94mYoH95Q9mjR
	 b5TtU5tOe17ExS2G4/wPwctZlBzB6tloiZ7VHLahHtz9de3JEr48z+d4WDXxd859wR
	 +G2Q47XYOv+siM928pgO2p1+kUIRW7/GpnHd+vQTGOSXlP3ZUn5z/Jvl8a0T4ZZLPN
	 Dk0AkX0f9is+fksW5PhFPdI7KxqwFfAmz/3TZHzXTNloQvjiqyE+3FvZLoiOezZQTI
	 EfhkVYW1sj9Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14E4C27C78
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171816050275.27213.12134360984733702689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7a39ff769733b4414e46364d1d1e87fbcf33de929a866616ac21673b848f58
Date: Wed, 12 Jun 2024 02:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718160502
