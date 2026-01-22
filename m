Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A1833DED1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769126034; cv=none; b=P3zfDyc+hcgFhCF4vlm1xZtLUbrWcxCUqcLO/nivEPpYPkZ2P8XfKFNU6tcXIDBVT8t/4dflXTdOCIH5HNthdYQJdPc8C21oaRBnhMa9zBUTP/V80cnCTkiOJJga43GWV/WG72w5Kry90nqxsmxfDYnq3pZ0w0c+luQdmASpk8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769126034; c=relaxed/simple;
	bh=khc7o/3SIgSIyZdMHRZoFQfnSgroXE7XbkCADPxK8Vk=;
	h=To:Subject:From:Message-Id:Date; b=KrKe00OMckVpt5QE8W6acCOCK0qqOwAuC6ziOi6wfClsVz5xtbwQdPoiCmTBSCxnkFqBiz4zm5VyRmH5jiVuZoYtZ8aaIH85RDeQajQJJ9smyRw5LAb155uywekyBgASx3ccJb9LhSWb2l4/ePQrGDjnVNXBLfycXZoqW95R560=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNhhuuZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNhhuuZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83AEC19422
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769126033;
	bh=khc7o/3SIgSIyZdMHRZoFQfnSgroXE7XbkCADPxK8Vk=;
	h=To:Subject:From:Date:From;
	b=NNhhuuZiqk+BgjW2eV5ybB8p88o1UHeYO/jwnEUoMJVgMoW53QQXzaT+2A3IL5lhx
	 cKgy+Wc1cTcLAUR2mqG4GdHVVm5pBFiMjSj5DIOt8a1nCjMlc6W/EZPwsd1XGqEtii
	 jMfR76q9naImUWo9AMi+FQ8cmQv5sRFqE02iFu/y92/JnH5UeLGlI38ZIoFww13KUZ
	 1kfPfThaRpGdqp74B4krBaVqzSsvq9LtCCv29NEbnenYmOd7MdaUi1QvnZi4vhL5Hj
	 PbL6OxDvARhf1jFjR9RhmQJMazxgrIUsYguu1K8ntqeA6vTPTM/D6dy+9tw/jf//dm
	 PIGmCpDe8M7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9108FD6CFAB
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912603358.12345.4322961100286541056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96069bb11ce163f6add34d247fe3e4f27e35dc22637c455c64cf3e64389736ca
Date: Thu, 22 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769126033
