Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC326D17
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746373195; cv=none; b=PPYNdEIVtqz+Pu7QgI2kCr/RmuFEZCqZ8ZO0BfUAGTDEMiyermLBnwkOuEPOrp9Tgd/twKNdDLl1bBbjGErfwR5VfR84VERdI9P9FjaMqEMntpTpRWjnlBW8f5010a3FTvNlCq6Nm2FsLfRw2yKMDCN17eTkxzKfRa6V/SELNGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746373195; c=relaxed/simple;
	bh=1LxboeOzhiYRSq0pkaCHxykm/JEVaV8REK0iBNDjYmk=;
	h=To:Subject:From:Message-Id:Date; b=UweUA4GvD8B7xNZCBsEzR4aIezx0xL7yeLJLul2vco8dt39U70PxNTH3Gg/WfQhbnvn+58yn7/QZ1FEJmywVrXbk7RQ5xPr8okL3iih7YI5VVix+M+IPMxFZO3XB1gu5yofj0btec07V9z10pwNL2mnyYI7XWRy5248aIMuigA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bb+Hqe/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bb+Hqe/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15D0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746373193;
	bh=1LxboeOzhiYRSq0pkaCHxykm/JEVaV8REK0iBNDjYmk=;
	h=To:Subject:From:Date:From;
	b=bb+Hqe/CesNWTLKFGXVr7H4gp0nguROafaBxDUo4a1RkQxPV2MlPosxR4erXZUxxj
	 Ij4/QlVoOqq4Ow33SFN/sJQSYSid+mpeagwv+D5Xagm3UpEAddyjuYpzsa3sODDkoL
	 oTOPTQuJFwCqi3wbcVlmKBkpYcwFiBAXqD732/8b2McKO5Vlp8IoFxlxN4a3J6ML3C
	 w2uIS1TWUyfluu5VBKPYFPvCe1y/2Mydhp4A48dARHkZsIHvPlsLrf+45leg50Nm8b
	 YvYsEFaS3sKhygRUyrEJYfM5kV2FZ+kA5a958X4SCQsWHAyZHWjmKSStFW/85NUbU7
	 PmFP3+Plnm4kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6EEC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637319362.4432.1520128397416884562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262ce8fce771feb41b25168a74afb491fff465329b98916f4b4a969a1fef97e3
Date: Sun, 04 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746373193
