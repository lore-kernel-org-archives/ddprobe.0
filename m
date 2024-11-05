Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B38F26ACC
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730778354; cv=none; b=Ls1WTRjcpA8saHeEBbLkh7Mx+tDJnccFZUaYHxlGQnUySDgqtagSpO4HT/WBItdTJglWXaz6RYwykxnpjz9P0Z0byYzXHAhh1rAk+xOwvmfHT2X+TSvitt3v6zJoiqN/LYjcsh2D/4FI7J9NIRxgRLWvCP/5JqMKAysR/PGiQpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730778354; c=relaxed/simple;
	bh=txMNKyIbF8a4opdBIjj91mQtyo3wqSVXls9So7EViZA=;
	h=To:Subject:From:Message-Id:Date; b=B69Hy+SheCvrYPuV4KRz3pWSb20R9VDcF5j50xXotva7Pwn1eKpCeeeLOAjwNJqVoq+iUXZDcewmK2fNgQ1ui8y7KBhZoodyB6SGSaq2ZWRcVqVb11ZLzsTz2H+6SCP5s6ZddFvCI/Ne8wsbEQ+AOrorxUVoSRelFl8wMtbhVy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAuVrjLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAuVrjLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB35AC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730778353;
	bh=txMNKyIbF8a4opdBIjj91mQtyo3wqSVXls9So7EViZA=;
	h=To:Subject:From:Date:From;
	b=GAuVrjLGJo1KKSELQMPofx5cE/LFmKfKDBK+ZQV44K8Cvt1b9pZ8SLhOV26HABCmF
	 zs7WviNfxbXlm5vziSc4hDxzFsgQAao3Hi0rgUWj4WeoPwrSwFPrEPkWWPuDp9eeEn
	 COiOq72J3525Jy/ehHCIVN336lNBy1CkfxyNT5DT9g7geNn/SCtsl3Nl8x6vRO58Y2
	 kGoqZ7hrd3qMkKZftDy1ASU2MUPnYOtbN/Hmgne2bjjwfi7EIHRhBHuoXs3Eq5eT09
	 gowKTRc7WSI/I6gn2lzbVGntsVO+Bycs1Jl//hyaYzFCPfGBGuodcLLZirBzV4Dkxs
	 FqX6TyWhqZmEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984EED1CA1A
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173077835360.20211.10494956687073005433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a49e7293d374c8debf7780944da015b0c0afea59488f972b2061b20c699511
Date: Tue, 05 Nov 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730778353
