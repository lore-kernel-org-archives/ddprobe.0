Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3583D156F45
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779622954; cv=none; b=re+iWCyz4n12zEP0DsStizRftUo9Ydsj28icd/v8zY5tyN1zgopLRv3QSt1ePbrSK1L8WmgGb0TZfPSFwq97H2/F+U+tRcT6hSj+2hSANV+c3ICit4/NS7bXWD5gMfNEeem3tJs3AEtmUvFz5d32FVqSeqwMDZ7x2mlrLRE43hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779622954; c=relaxed/simple;
	bh=VN9pbZ3j49lLJmiseeHxzjT5rENQnNqJ6duk+cLgrjc=;
	h=To:Subject:From:Message-Id:Date; b=gUvTnaT7JW5E5Qe6XtbgdVSkEgn1FEVBjQRMAmjGU4kiX1kY1T7/vpwgCqhff8aHuICnIuS4w7+WR7B3V8D7LmNbrURAbv5ef7zmn5INGhyCyZUPmtl7vDoH4fBTDLGj43xoRW03bH3wKNjxdwby0+ulZlXBrAgI3F9r12PrtBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwSnJJu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwSnJJu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A54C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779622953;
	bh=VN9pbZ3j49lLJmiseeHxzjT5rENQnNqJ6duk+cLgrjc=;
	h=To:Subject:From:Date:From;
	b=jwSnJJu44IbEcsQ8ESQ4A/+1JYf+sUFDKomlylYgdSP5/tq0mX7OoWKdCq/+so3RO
	 RjCvrRC8hwr/to5BdrABQNxNXmtN4QUaxO4LfW/PgmQVSeBW3PoVEPt97xJdjBEo1I
	 fUBh35RnrrUjPeSUXemjE86gJa3MYmxxpKy6rWFJX0ntvFJRj4AiGXzgZt1WIxaoF+
	 JV85+wm6TAe62XoReqBIs+UfrqeOSDK+oR3mXFMKOewaUCyAb+Nw/Pi5CFmPapMKmk
	 6frzVQCHHsNBYg5/n8/CKTPbC/3ujPjJsIuYiSjXpkUn3YbSWJ/G50cU/uYBlu5dNf
	 bkC/WqpiMjjNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C8ACD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962295368.7740.15543378545681623901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a60a38bb70ef868d24ce333743d606be1dbf6a8429f14187c7074ae81deda8d
Date: Sun, 24 May 2026 11:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779622953
