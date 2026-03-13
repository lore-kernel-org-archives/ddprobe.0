Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B713A6B84
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773413094; cv=none; b=Z850MT9hYc6KiMCIzIS1X5leIs+t78x3a+CGrNG+UW1uKuGs8g1sSACv9g4K+usdiK7WnvmIKd2OR/FI4WfUALdmRYnuif19OBaHfL19IaPlHFxsbPAtJjxWGQP3bSfnqHTZ6KyUb+cSwI23A1SGMW383j8Dvy3PoPsqHhC4aEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773413094; c=relaxed/simple;
	bh=F0FC/1DMDEXXFuCt9+cawsHqL6v+YIvnUPjCh4DmohI=;
	h=To:Subject:From:Message-Id:Date; b=iw4AphphBa9z1PFAli/78AGmjewAs0AWIS3SV7i9h8gjxsOwqHByI0yN5ZA2VQM0T5tfSd981gNTJWt+DMB8CxN12o5ZNmA8chDrEY7M01CmxgZ6G4I7I191LoroMHzrYfn5eljZSA2CcAmV5RE1OqGrkcCKf39Upeixc5b57sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvR/2lmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvR/2lmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A285AC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773413093;
	bh=F0FC/1DMDEXXFuCt9+cawsHqL6v+YIvnUPjCh4DmohI=;
	h=To:Subject:From:Date:From;
	b=kvR/2lmqYGWtJ6SKoWKytaTmUgHA/oo0XfPjgYMUnaua79i8YCcIhveqyK7vxg3IW
	 yX73oOr2lddAzVtzsapkiU6akH7ht/+Xamm13KYki6puNze63EIYW4FTKREE+CybBD
	 pWwwToeaPS05z374MLpkaA/lsxt6CgqUECtNwqPYF/axjz89VAtuC7A2noTuYtOMYL
	 jS9QqhxiV2XfZ9vD4ApwWr32NJa82PGcJcbtn9Uxj5XZYZOGzRe2+Y2l8G3CGLnpAZ
	 5Hurl645wj8vrqQSCXz91MI9T7zlu8ehkhj4xIOXuRz4vQr4kesK+1xx26fi+Jno4/
	 mPgvEu8Fk71uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F785105F7AF
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341309357.14360.13831902855246688056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4131ac0788ee3aac0c0b59cb5b68fd911ebaf095879e503562d78cac92679968
Date: Fri, 13 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773413093
