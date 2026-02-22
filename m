Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1A62EB10
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771776894; cv=none; b=Mu0p715pxkuU9iNG2b5CgnX5kOCQoDhTo9P/5G0eKnjnbLL1E8tri2Vdc1GGr3Lys7oFzkRKqMrmowgEwMe+LUsM6HSeqIcCtkW38etZrMokEPB8IPGO2aTVsTUpAzvVNTxa/W4LbSCPcpSwD7JkZM4lbJN/AR1IXIxQHNwbJL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771776894; c=relaxed/simple;
	bh=8GGRRSnlqCFdzT+j1B3a03dsKcTa10QJVv3I4phFaeo=;
	h=To:Subject:From:Message-Id:Date; b=QrI19A9xZw2KgCvcldVeJZ6imQGiAya/tDosFb+JRiz5Bht72rgxAy1Cua+RmfGETT+vMka7IWXZe049ZSSfd885qEEsk7UuZiCDIcdGh2AigHSxxT03T9UTs0Ty9BAQbRUTU5YZM3QCbEsqLVu5RwBpkcL6qlPFSfeAHl+M1wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ON+XX4rt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ON+XX4rt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4172C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771776893;
	bh=8GGRRSnlqCFdzT+j1B3a03dsKcTa10QJVv3I4phFaeo=;
	h=To:Subject:From:Date:From;
	b=ON+XX4rtZ3yKI7ti9krK3c4tdUGmH5xDbiURps5FVeeKPEQodtQIg/zwQRYigM9W1
	 ptA0LM+3zYxrki4WZU+pgj5EP94+zfwUnXhIsYy5VmXJum5MDsVhqttC0+khs3XiM5
	 pGafckmYyZ9lDURJIBOId/X09sju6UUNNcP78xxAKhVhUykSNHsRRYScQKbN1Qdai0
	 l45L6zDZTQSHHIc+2gXckaSRJG26PeMjbusM+jqfJaqQU2BRlF/p11juVmiFIEwDoi
	 Ks9zDkIK9qkaq/oR2b8UQ+kaFQfWKbdt64FI+DtbdhG7VI59Ph/bWLswb+EtZn3cJd
	 BdUzvg9Dtqu6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96286C636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177689358.26754.3838956227650679168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a0631af31fb584c7f1b52e38ac28b72293274684279b241d10ced592298646
Date: Sun, 22 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771776893
