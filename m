Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E90C4E56C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791934834; cv=none; b=a+L2eGuk6YbftjtSBwMEUtMHkRXuSFzijM0QMM4gTPbmgdrW8ssnkUmX0zuNo5jRHe17RuiDEqN1p1DYB5Wjl6M2dOUvg6QpTfaO8/ycr2De6E8FJIzll1JiMYXD3B9gjLWSaEqStZijtId1K18krezNS8lDqL8XmjeKo6vl7+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791934834; c=relaxed/simple;
	bh=EYaDwfSkXa3H7S/u7HWddCCYH9eiRIPUIBCFcrc0rXk=;
	h=To:Subject:From:Message-Id:Date; b=FrIWaNKFp4ZCfS1MUd4O8DNWxfXpSrnzZyldovKyaMnAAkwK5kZViYsZEylFaPuCPO4qtjRalJr2pkCXI9XxQ872Um/5JbTOkYMZZH5IVW2d+C+nNkT7uszWuMq7x/4dD///UBRhYPwo826a3qlbEq3hZcBVYy0dSjq7aM1RCTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/w0/pnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/w0/pnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF07C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791934833;
	bh=EYaDwfSkXa3H7S/u7HWddCCYH9eiRIPUIBCFcrc0rXk=;
	h=To:Subject:From:Date:From;
	b=n/w0/pnGzLAA8r7f98r27Q0mMfGhsIK80bOuov5lQGq3swGRv9bZY9by/+hhIK2Ox
	 fzwTfJnYIeFjsu+8Tw2iPwmPylv6pD8OQRL9qKagTpXErb5hOwmy/G1vzfrlwAMz+j
	 81Xo5vX10Mz5YR7VuDYoOjrYgPj8eP7ik7bGRvwBHgehXwsrw9q/13crBqSyoJ5XKT
	 6nkLXYElJpcg/eRQX+X7cYWsNDxFllQx0BDv8+Z6ccTxSXGn1ieBqQ6upWEZ7AKiGF
	 0qysB18d5PAtA8qHWFpdH4/Dr3EvtBktYdEq9BSwa6DfQpToAq/oGUbOMdCTl+Fs3R
	 GTk4ibT91CKDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA65CC6B1D
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193483369.20167.12804250389976174596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af840f03f8ba15b6e5472046d1746681ff72d0c7247e5161cfee4357804a2ae
Date: Tue, 13 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791934833
