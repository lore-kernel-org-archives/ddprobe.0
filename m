Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9F3149C41
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748949594; cv=none; b=ct558O8DReA1TBk5VMCfAoJUumnITXOOR/AcK4XagKGEhfaTOdQaHWNLHK3PC5pfB1gArMl7DeV0aScc0yddaqhsY5NB+vVd49rsvsASDAgFajhORybxLyXg0ivmocyZVprZXlNOYnlCUqqoarW100fYgtHSeezYjTOq+XKc1qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748949594; c=relaxed/simple;
	bh=Ne1a6tf9YBH6bw5DV/ECjJR0OtAsHSijFmBn+C44HWw=;
	h=To:Subject:From:Message-Id:Date; b=aASmAAwQtesX1/8Q9OBz55MEUN4DPDt4H3JNsDbDNNTqduvOTsv3q/JEP2AKDFcF+UNBzaCTHsmxIRt0kfK1AXTLVz12F6T0fQn7/UmfEtAoeiDJ9p+HfCFdvnBZXIZo6+1S6oC5tdq1MzvvAigVzFG4EDwbYTEYMTOjg59VM0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFqZR6SW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFqZR6SW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB020C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748949593;
	bh=Ne1a6tf9YBH6bw5DV/ECjJR0OtAsHSijFmBn+C44HWw=;
	h=To:Subject:From:Date:From;
	b=nFqZR6SWhk0PZt9J8Wxcb455Yf7+LyC+TKUlhw0M89MxCJiRouUlCLYfvbtkfZT/B
	 3922Pdh3m3CJ5u7IVIwcBO4KMCDhNrP2U7V5aQfUrDr9TTq8YgGr3UeDTV2eW4773Q
	 CV/RE3DmrRSd4mTpdwaAG5e/OC1cM+cdwflRidbo4aUCZs36a3AhBig5Hg+hcg1DX4
	 gyXjK8gqIEjSibgJ/wml534+PwrW8mZkq/kmR1B0ZSVDiJOknEzupmj3YozFCd8YDK
	 mvSUN1hVhkUqKUiKTc2bnjtOqaF2U92AnBAwEWR49s7xpiYE+USN/eF6dMQ5jSkSOu
	 qizid1X5eKVJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5C6C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894959357.2445.7629676261031764510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669eeb571fcdab732edc6adc17bcc540323598bf9eefdd819e914796d53fe7cc
Date: Tue, 03 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748949593
