Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDD313A276
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725480353; cv=none; b=gF6LckojQ8bXo8KV0+lYG1r8nVA0LMHAY5pVBr6vl9CU2PSp7NmO6iR1iFo+f+8nf9xh1hTqyjBJQlNYUWi+V6D4WaglJZ+ryXpZJ35G8ccXMDzfCEX3vqsxIlMOe9Cb1o4avmcPLX4ENBNfMN/fEDDjvpUWKfyoLKYmgnCaQkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725480353; c=relaxed/simple;
	bh=LqANiegqjEVeP344fogFiN3GCE12GVyIHu2p/uDq4Sc=;
	h=To:Subject:From:Message-Id:Date; b=A+dQAFyzz36kOVjCwfzWnyZgqIQgJ6qTX4JhKqB83+u3a1b/z7/2eGvPYXITq37kIcUcdlWgHAUaQ26zo0wL37CNt0paHVGqc7qrHFeXjOpHnO4kYEuMxwCIsRPOge3XGVSIDmQ38PxnVUqFjgAp0RaZqvJ33o1fR2OLhhfOV3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5r8wZ20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5r8wZ20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3732C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725480353;
	bh=LqANiegqjEVeP344fogFiN3GCE12GVyIHu2p/uDq4Sc=;
	h=To:Subject:From:Date:From;
	b=S5r8wZ20cP5WAGar+/iDKzjTxCCgDffxW/DUVCvE97SEXXHH31dkM8SW9I6OoPNg2
	 amLvVBS8vSS77EY9do67mi4aXcL6O3KKV+STvbnClRurjQ67jA029zJ0+ZjfJGisVk
	 /LgTddOGs/Yzfqj2W5yF33+OYikPERBtgxnGMmwvTP7Iz7MjPHPK72QRTOArJodcHY
	 Uvtp9phFuErhQDdw43ZPMNGoAXYW3ZMvWUZ6RaoOGmmF33yUp1stvsy5IdpqnZIy80
	 7EWWPvtmH9UJOD5s6jKzQhV/KOBWBZFjZ3JZ4O5M7idak+r0Wnjty0yLwE5+sbxuju
	 OxJxtE+W8rOww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9113CCD4F24
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172548035358.23144.10497615224581060929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55cc84312bdcdac6c89641423db297cd3c4f0e9635f23b3101b8dd6063ccb320
Date: Wed, 04 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725480353
