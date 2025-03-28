Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5542F192B89
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743140394; cv=none; b=cjj+sB135XTe6TinBINw8QW/SZwqK/ZuU2OvVFJ0j3fd20wos3La0XKmHuqsdK57GGpJD3/z2NAYfYBnP+Q8IJi4CuasFdU4sBFTQqSNGNHcbtngGyPPHZGlWsCtgkNad2IcHWdPhZ04pNId58W1O6pf1VQZsyWTsWa5PTXJ0tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743140394; c=relaxed/simple;
	bh=PJxPdAO1ln4dfGlpUPDhDzEn9/YD/0FvzNll7XjWpaQ=;
	h=To:Subject:From:Message-Id:Date; b=bxVWmtlJ5cZQCes+aTHiy8a8fjg0eQELTfv37mbTnlNObyUzyil4qWWQx2PLtujloBAFBaB7K21sRPmTRmbwK8k5+gTsUxZvWEfdXfcy5lK1UItSZWn5nyvIjGgc/fKYTKbapGXqXP84bYd6Cwn/HldxU/BA0j3aN/J6FhHASwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEqUBUIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEqUBUIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3686C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743140393;
	bh=PJxPdAO1ln4dfGlpUPDhDzEn9/YD/0FvzNll7XjWpaQ=;
	h=To:Subject:From:Date:From;
	b=hEqUBUIVBT6pVILDBbUzPG5NEKtbk24gyLQ8NXRS5W/x2SpO5IKot8BvmamJakv/I
	 pmzBRlqC0YWwY4kcVmUvgvBd+LAFXKc74PoJ6Lj/gjKzJZMScp7OisLq0959gJYmIO
	 Bb+McDknD74UNil969syK+a5QzafsNglmLzVmPwA8ZpumLd0DqDpanlbDanDpS3JxL
	 R3MMbd6AeD25lbpWz9NaO91ZItAlDKSupl+nf5edAAYQxZDwvsASATXDYtHwMlyQN4
	 Ey8Dy3EQrADJII0cL8138pIi+HYxNBhsXAvPPzTnQajcc6SkjtdrgEIZAdC/1/jHdI
	 fLN2G2yq33mzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EA3C3600C
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314039364.14408.11100424278172090957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63bd10401380257f6aee2581b4dc63afe6869d79dafcd512a4e5898f3282a42c
Date: Fri, 28 Mar 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743140393
