Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB873502AE
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761680393; cv=none; b=jpkF89FozM1xL1LFlDG/rv+SeNd8tha3fF1tLxZSkbakCgAqocL8aW5TSJz0Vjine2ZEz3aZgo1s4xmRJMsG7gSDtb9jLaLY9+juua29Li64lrnLN7UTOclZGtX+9AUx/sOox29V473+HBtXUVMSDH6QgO+i5gvCx3BFFGtsvXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761680393; c=relaxed/simple;
	bh=dR8P1p3EokOTYmC4MGZSxEcUh/zlVO+lux8I9WONJXA=;
	h=To:Subject:From:Message-Id:Date; b=tyho2jAiCGYz5hEL0yFAB+/faw7iE67qIAkuJvTYYbA/VQxs9/eScI1etQprmUFYHrQCbQjZtSGhjhU8mMJ5Wg4l6UvYkwrESyqozUdzrlGi8HPnM0vXjk0oeuW9kFKfNXrNIpuAjTc+Xong/XBYjLB0SbUnx3ceMCmxSA7J/xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTAFhvKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTAFhvKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2A2C4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761680393;
	bh=dR8P1p3EokOTYmC4MGZSxEcUh/zlVO+lux8I9WONJXA=;
	h=To:Subject:From:Date:From;
	b=dTAFhvKz4A/Voeys3YzBjEls9NSpAkAtMi+x+mU8yfyTY7Cuw+UU0sMoYNqsdT8Lx
	 AMaSvVU2LrbFv5Eqfj1x/3g7mf/92ozxqOKz7HDDNqrlVd7WlM/uFz8o5un96g3NwV
	 O5Kx39S01aPol6mON30JG51iAQKFgl68k/8UXcZIdekW/NbNbUnGjoZOS4Dz8/cnjz
	 OFQ9Y1z1ChRRpYWvOQwSmuBH+li0N1YAMfYzivelXNrTi6ZDinADj/JCef6up2eUUQ
	 EOGwaMGLtoF0ob9Fnvv3S7zzXZup6eWLjs2JehPc2cWjCtY6BhrpecPrNYQETlJCgh
	 DlK/OSYqcRq2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F728CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168039358.14752.274631058494271926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d37a5429135390740a3098960b46eff66bbcec1e96564eefde52f50574798a
Date: Tue, 28 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761680393
